using EFTESTX.Data;
using EFTESTX.Models;
using Microsoft.EntityFrameworkCore.Update.Internal;

internal class Program
{
    private static void Main(string[] args)
    {
        SelectAllData();
        CreatUser();
        UpdateUserById();
        DeleteUserById();
    }

    private static void DeleteUserById()
    {
        using (var context = new MyUserContext())
        {
            var u = context.users.FirstOrDefault(x => x.id == 100);
            if (u != null)
            {
                context.users.Remove(u);
                context.SaveChanges(); // db
            }
        }
    }

    private static void UpdateUserById()
    {
        using (var context = new MyUserContext())
        {
            var u = context.users.FirstOrDefault(x => x.id == 100);
            if (u != null)
            {
                u.user_name = "szocsgabor";
                u.email = "szocsgabor@turr.hu";
                context.SaveChanges(); // db
            }
        }
    }

    private static void CreatUser()
    {
        using (var context = new MyUserContext())
        {
            var newUser = new user
            {
                user_name = "jdoe",
                first_name = "John",
                last_name = "Doe",
                email = "john@doe.com",
                gender = "male"
            };
            context.users.Add(newUser);
            context.SaveChanges(); // db
        }
    }

    private static void SelectAllData()
    {
        using (var context = new MyUserContext())
        {
            List<user> users = context.users.ToList();
            foreach (var user in users)
            {
                if (user.id <= 15)
                {
                    Console.WriteLine(user.id + " " + user.user_name);
                }
            }
        }
    }
}