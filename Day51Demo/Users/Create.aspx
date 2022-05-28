<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Day51Demo.Users.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users - Create</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <h1>Create New User</h1>
    <form id="form1" runat="server">
        <div class="status-message">
            <asp:Label runat="server" ID="LabelStatus" Visible="false" />
        </div>
        <div>
            <table class="form-block">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelFirstName">First Name</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxFirstName" placeholder="Enter First Name"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelLastName">Last Name</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxLastName" placeholder="Enter Last Name"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelDateOfBirth">Date Of Birth</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Date" ID="TextBoxDateOfBirth"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelPan">Pan</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxPan" placeholder="Enter Pan"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelAddress">Address</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBoxAddress" placeholder="Enter Address"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="MaleRadioButton" Text="M" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="RadioButton1" Text="F" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="OtherRadioButton" Text="O" runat="server" GroupName="Gender" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelMobileNumber">MobileNumber</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Number" ID="TextBoxMobileNumber" placeholder="Enter MobileNumber"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelEmail">Email</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Email" ID="TextBoxEmail" placeholder="Enter Email"
                            MaxLength="100"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelComment">Comment</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBoxComment" placeholder="Enter Comment"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>

                <%--<tr>
                    <td>
                        <asp:Label runat="server" ID="LabelDepartmentRefId">DepartmentRefId</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Number" ID="TextBoxDepartmentRefId" placeholder="Enter DepartmentRefId"
                            MaxLength="1"></asp:TextBox>
                    </td>
                </tr>--%>

                <tr>
                    <td>
                        <asp:Label ID="LabelDepartmentRefId" runat="server" Text="DepartmentRefId"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListDepartmentRefId" runat="server">
                            <%-- <asp:ListItem Text="Sales" Value="1" />
                            <asp:ListItem Text="Marketing" Value="2" />--%>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button runat="server" ID="ButtonCreate" Text="Create" OnClick="ButtonCreate_OnClick" />
                        <a style="float: right" href="Default.aspx">
                            <input type="button" value="Back to Listing" /></a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

