using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Llis.Domain.Repository;

namespace Llis.Data.Respository
{
    public class SqlServerRepository : ISqlServerRepository
    {
        public Domain.Entities.User CreateUser(Domain.Entities.User newUser)
        {
            throw new NotImplementedException();
        }

        public Domain.Entities.User UpdateUser(Domain.Entities.User existingUser)
        {
            throw new NotImplementedException();
        }

        public Domain.Entities.User SelectUser(int userId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Domain.Entities.User> SelectAllUsers()
        {
            throw new NotImplementedException();
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
    }
}
