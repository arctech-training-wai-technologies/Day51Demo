<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day51Demo.Users.Default" %>

<%@ Import Namespace="Day51Demo.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Users</title>
    <link href="/www-resources/css/form.css" rel="stylesheet" />
</head>
<body>
    <h1>View all Users</h1>
    <form id="form1" runat="server">
        <div>
            <table class="data-view">
                <tr>
                    <th>Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date Of Birth</th>
                    <th>Pan</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>MobileNumber</th>
                    <th>Email</th>
                    <th>Comment</th>
                    <th>DepartmentRefId</th>
                    <th colspan="2"></th>
                </tr>

                <%
                    var usersService = new UsersService();
                    var users = usersService.GetAll();

                    foreach (var user in users)
                    {
                %>
                <tr>
                    <td><%= user.Id %></td>
                    <td><%= user.FirstName %></td>
                    <td><%= user.LastName %></td>
                    <td><%= user.DateOfBirth %></td>
                    <td><%= user.Pan %></td>
                    <td><%= user.Address %></td>
                    <td><%= user.Gender %></td>
                    <td><%= user.MobileNumber %></td>
                    <td><%= user.Email %></td>
                    <td><%= user.Comment %></td>
                    <td><%= user.DepartmentRefId%></td>
                    <td><a href="Update.aspx?id=<%= user.Id %>">Edit</a></td>
                    <td><a href="Delete.aspx?id=<%= user.Id %>">Delete</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </form>
</body>
</html>
