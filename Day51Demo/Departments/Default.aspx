<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day51Demo.Departments.Default" %>
<%@ Import Namespace="Day51Demo.Services" %>
<%@ Import Namespace="Day51Demo.Services.Utilities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Departments</title>
    <link href="/www-resources/css/form.css" rel="stylesheet" />
</head>
<body>
    <h1>View Departments</h1>
    <form id="form1" runat="server">
        <div>
            <table class="data-view">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th></th>
                </tr>
            <%
                var departmentService = new DepartmentsService();
                var departments = departmentService.GetAll();

                foreach (var department in departments)
                {
            %>
            <tr>
                <td><%= department.Id %></td>
                <td><%= department.Name %></td>
                <td><%= department.Description.GetFormattedValue() %></td>
                <td><a href="Update.aspx?id=<%= department.Id %>">Edit</a></td>
                <td><a href="Delete.aspx?id=<%= department.Id %>">Delete</a></td>
            </tr>
            <%
                }
            %>
            </table>
        </div>
    </form>
</body>
</html>
