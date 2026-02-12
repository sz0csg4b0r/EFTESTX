
using EFTESTX.Data;
using EFTESTX.Models;

internal class Program
{
    private static void Main(string[] args)
    {
        SelectAllData();
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