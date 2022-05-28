using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Day51Demo.Services.Models;
using Day51Demo.Services.Utilities;

namespace Day51Demo.Services
{
    public class UsersService
    {
        public List<User> GetAll()
        {
            var users = new List<User>();

            using (var connection = new SqlConnection(WebConfigHelper.ConnectionString))
            {
                const string cmdText = "Users_GetAll";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var user = new User
                            {

                                Id = (int)reader["Id"],
                                FirstName = reader["FirstName"].GetDataFromDb<string>(),
                                LastName = reader["LastName"].GetDataFromDb<string>(),
                                DateOfBirth = reader["DateOfBirth"].GetDataFromDb<DateTime>(),
                                Pan = reader["Pan"].GetDataFromDb<string>(),
                                Address = reader["Address"].GetDataFromDb<string>(),
                                Gender = reader["Gender"].GetDataFromDb<string>(),
                                MobileNumber = reader["MobileNumber"].GetDataFromDb<string>(),
                                Email = reader["Email"].GetDataFromDb<string>(),
                                Comment = reader["Comment"].GetDataFromDb<string>(),
                                DepartmentRefId = (int)reader["DepartmentRefId"]
                                //DepatmentObj =reader["DeparmentName"]

                            };

                            users.Add(user);
                        }
                    }
                }
            }

            return users;
        }

        public void Delete(int id)
        {
            using (var connection = new SqlConnection(WebConfigHelper.ConnectionString))
            {
                const string cmdText = "Users_Delete";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Id", id);

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

        public User GetById(int id)
        {
            using (var connection = new SqlConnection(WebConfigHelper.ConnectionString))
            {
                const string cmdText = "Users_GetById";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Id", id);

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            var userInfo = new User();
                            userInfo.Id = (int)reader["Id"];
                            userInfo.FirstName = reader["FirstName"].GetDataFromDb<string>();
                            userInfo.LastName = reader["LastName"].GetDataFromDb<string>();
                            userInfo.DateOfBirth = reader["DateOfBirth"].GetDataFromDb<DateTime>();
                            userInfo.Pan = reader["Pan"].GetDataFromDb<string>();
                            userInfo.Address = reader["Address"].GetDataFromDb<string>();
                            userInfo.Gender = reader["Gender"].GetDataFromDb<string>();
                            userInfo.MobileNumber = reader["MobileNumber"].GetDataFromDb<string>();
                            userInfo.Email = reader["Email"].GetDataFromDb<string>();
                            userInfo.Comment = reader["Comment"].GetDataFromDb<string>();
                            userInfo.DepartmentRefId = reader["DepartmentRefId"].GetDataFromDb<int>();
                            return userInfo;
                        }
                    }
                    return null;
                }
            }
        }

        public void Update(User userInfo)
        {
            using (var connection = new SqlConnection(WebConfigHelper.ConnectionString))
            {
                const string cmdText = "Users_Update";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@id", userInfo.Id);
                    command.Parameters.AddWithValue("@FirstName", userInfo.FirstName.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@LastName", userInfo.LastName.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@DateOfBirth", userInfo.DateOfBirth.GetDataFromUi<DateTime>());
                    command.Parameters.AddWithValue("@Pan", userInfo.Pan.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@Address", userInfo.Address.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@Gender", userInfo.Gender.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@MobileNumber", userInfo.MobileNumber.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@Email", userInfo.Email.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@Comment ", userInfo.Comment.GetDataFromUi<string>());
                    command.Parameters.AddWithValue("@DepartmentRefId", userInfo.DepartmentRefId.GetDataFromUi<int>());

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

        public void Add(User userInfo)
        {

            using (var connection = new SqlConnection(WebConfigHelper.ConnectionString))
            {
                const string cmdText = "Users_Add";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@FirstName", userInfo.FirstName);
                    command.Parameters.AddWithValue("@LastName", userInfo.LastName);
                    command.Parameters.AddWithValue("@DateOfBirth", userInfo.DateOfBirth);
                    command.Parameters.AddWithValue("@Pan", userInfo.Pan);
                    command.Parameters.AddWithValue("@Address", userInfo.Address);
                    command.Parameters.AddWithValue("@Gender", userInfo.Gender);
                    command.Parameters.AddWithValue("@MobileNumber", userInfo.MobileNumber);
                    command.Parameters.AddWithValue("@Email", userInfo.Email);
                    command.Parameters.AddWithValue("@Comment ", userInfo.Comment);
                    command.Parameters.AddWithValue("@DepartmentRefId", userInfo.DepartmentRefId);


                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }
    }
}
