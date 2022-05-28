<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Day51Demo.Users.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User - Update</title>
    <link rel="stylesheet" href="/www-resources/css/form.css" />
</head>
<body>
    <h1>Update User</h1>
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
                        <asp:RadioButtonList runat="server" ID="RadioButtonListGender" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                            <asp:ListItem Value="O">Other</asp:ListItem>
                        </asp:RadioButtonList>

                        <%--<asp:RadioButton ID="MaleRadioButton" Text="M" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="FemaleRadioButton" Text="F" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="OtherRadioButton" Text="O" runat="server" GroupName="Gender" />--%>
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

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelDepartmentRefId">DepartmentRefId</asp:Label></td>
                    <td>
                        <%--<asp:TextBox runat="server" TextMode="Number" ID="TextBoxDepartmentRefId" placeholder="Enter DepartmentRefId"
                            MaxLength="1"></asp:TextBox>--%>
                        <asp:DropDownList runat="server" Id="DropDownListDepartmentRefId" DataTextField="Text" DataValueField="Value" />
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button runat="server" ID="ButtonUpdate" Text="Update" OnClick="ButtonUpdate_Click" />
                        <a style="float: right" href="Default.aspx">
                            <input type="button" value="Back to Listing" /></a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
