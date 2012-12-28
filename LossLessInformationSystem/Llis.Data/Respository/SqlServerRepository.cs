using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Llis.Domain.Repository;
using Llis.Data.Entities;

namespace Llis.Data.Respository
{
    public class SqlServerRepository : IUserDataRepository
    {


        public Domain.Entities.User CreateUser(Domain.Entities.User newUser)
        {
            using (llisdb _context = new llisdb())
            {
                UserAccount account = new UserAccount
                {
                    CreatedById = 1,
                    CreatedDate = DateTime.Now
                };

                UserAccountOperation accountOperation = new UserAccountOperation
                {
                    Action = "C",
                    Address = newUser.Address,
                    UpdatedById = 1,
                    UpdatedDate = DateTime.Now,
                    UserAccount = account,
                    UserName = newUser.UserName
                };
                _context.Entry(accountOperation).State = System.Data.EntityState.Added;
                _context.SaveChanges();
                newUser.Id = account.Id;
                newUser.OperationId = accountOperation.Id;
            }
            return newUser;
        }

        public Domain.Entities.User UpdateUser(Domain.Entities.User existingUser)
        {
            using (llisdb _context = new llisdb())
            {
                UserAccount account = new UserAccount
                {
                    CreatedById = 1,
                    CreatedDate = DateTime.Now
                };

                UserAccountOperation accountOperation = new UserAccountOperation
                {
                    Action = "U",
                    Address = existingUser.Address,
                    UpdatedById = 1,
                    UpdatedDate = DateTime.Now,
                    UserAccount = account,
                    UserName = existingUser.UserName
                };
                _context.Entry(accountOperation).State = System.Data.EntityState.Added;
                _context.SaveChanges();
            }
            return existingUser;
        }

        public Domain.Entities.User SelectUser(int userId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Domain.Entities.User> SelectAllUsers()
        {
            List<Domain.Entities.User> entities = new List<Domain.Entities.User>();
            using (llisdb _context = new llisdb())
            {
                var items = _context.UserAccountsViews.ToList<UserAccountsView>();
                foreach (var operItem in items)
                {
                    entities.Add(new Domain.Entities.User
                    {
                        Id = operItem.Id,
                        Address = operItem.Address,
                        OperationId = operItem.OperationsId,
                        UserName = operItem.UserName,
                        Action = operItem.Action,
                        CreateDate = operItem.CreatedDate,
                        UpdatedDate = operItem.UpdatedDate
                    });
                }
            }
            return entities;
        }

        public bool DeleteUser(int userId)
        {
            throw new NotImplementedException();
        }

        public Domain.Entities.UserDepartment CreateUserDepartment(Domain.Entities.UserDepartment newUser)
        {
            throw new NotImplementedException();
        }

        public Domain.Entities.UserDepartment UpdateUserDepartment(Domain.Entities.UserDepartment existingUser)
        {
            throw new NotImplementedException();
        }

        public Domain.Entities.UserDepartment SelectUserDepartment(int userId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Domain.Entities.UserDepartment> SelectAllUserDepartments()
        {
            throw new NotImplementedException();
        }

        public bool DeleteUserDepartment(int userId)
        {
            throw new NotImplementedException();
        }


        public IEnumerable<Domain.Entities.User> SelectAllUsersHistory()
        {
            List<Domain.Entities.User> entities = new List<Domain.Entities.User>();
            using (llisdb _context = new llisdb())
            {
                foreach (var item in _context.UserAccounts.Include("UserAccountOperations"))
                {
                    foreach (var operItem in item.UserAccountOperations)
                    {
                        entities.Add(new Domain.Entities.User
                        {
                            Id = item.Id,
                            Address = operItem.Address,
                            OperationId = operItem.Id,
                            UserName = operItem.UserName,
                            Action = operItem.Action,
                            CreateDate = item.CreatedDate,
                            UpdatedDate = operItem.UpdatedDate
                        });
                    }
                }

            }
            return entities.OrderBy(k => k.OperationId);
        }

        public IEnumerable<Domain.Entities.User> SelectUserHistory(int userId)
        {
            List<Domain.Entities.User> entities = new List<Domain.Entities.User>();
            using (llisdb _context = new llisdb())
            {
                var item = _context.UserAccounts.Include("UserAccountOperations").FirstOrDefault<UserAccount>(f => f.Id == userId);
                foreach (var operItem in item.UserAccountOperations)
                {
                    entities.Add(new Domain.Entities.User
                    {
                        Id = item.Id,
                        Address = operItem.Address,
                        OperationId = operItem.Id,
                        UserName = operItem.UserName,
                        Action = operItem.Action,
                        CreateDate = item.CreatedDate,
                        UpdatedDate = operItem.UpdatedDate
                    });
                }
            }
            return entities;
        }
    }
}
