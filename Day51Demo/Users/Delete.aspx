<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Day51Demo.Users.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User - Delete</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
</head>
<body>
    <h1>Delete User</h1>
    <form id="form1" runat="server">
        <div class="status-message">
            <asp:Label runat="server" ID="LabelStatus" Visible="false" />
        </div>
        <div>
            <table border="1" style="text-align: center" class="form-block">

                <tr>
                    <th>
                        <asp:Label runat="server" ID="LabelFirstName">First Name</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelLastName">Last Name</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabeDateOfBirth">Date Of Birth</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelPan">Pan</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelAddress">Address</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelGender">Gender</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelMobileNumber">Mobile Number</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelEmail">Email</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelComment">Comment</asp:Label>
                    </th>
                    <th>
                        <asp:Label runat="server" ID="LabelDepartmentRefId">DepartmentRefId</asp:Label>
                    </th>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelFirstNameData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelLastNameData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelDateOfBirthData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelPanData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelAddressData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelGenderData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelMobileNumberData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelEmailData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelCommentData" CssClass="readonly-data"></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="LabelDepartmentRefIdData" CssClass="readonly-data"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">You are about to delete this record. Are you sure?
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server" ID="ButtonDelete" Text="Delete" OnClick="ButtonDelete_OnClick" />
                        <a style="float: right" href="Default.aspx">
                            <input type="button" value="Back to Listing" /></a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
