using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Llis.Domain.Entities;

namespace Llis.Domain.Repository
{
    public interface IUserDataRepository
    {
        User CreateUser(User newUser);
        User UpdateUser(User existingUser);
        User SelectUser(int userId);
        IEnumerable<User> SelectAllUsers();
        IEnumerable<User> SelectAllUsersHistory();
        IEnumerable<User> SelectUserHistory(int userId);
        bool DeleteUser(int userId);

        UserDepartment CreateUserDepartment(UserDepartment newUser);
        UserDepartment UpdateUserDepartment(UserDepartment existingUser);
        UserDepartment SelectUserDepartment(int userId);
        IEnumerable<UserDepartment> SelectAllUserDepartments();
        bool DeleteUserDepartment(int userId);
    }
}
