using System;
using System.Data.SqlClient;
using Day51Demo.Services;
using Day51Demo.Services.Utilities;

namespace Day51Demo.Users
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            ShowDataToDelete();
        }

        protected void ButtonDelete_OnClick(object sender, EventArgs e)
        {
            DeleteData();
        }

        private void ShowDataToDelete()
        {
            var idText = Request.QueryString["id"];

            try
            {
                var id = int.Parse(idText);

                var usersService = new UsersService();

                var user = usersService.GetById(id);

                if (user == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id not found in database!");
                    return;
                }

                LabelFirstNameData.Text = user.FirstName;
                LabelLastNameData.Text = user.LastName;
                LabelDateOfBirthData.Text = user.DateOfBirth.ToString();
                LabelPanData.Text = user.Pan;
                LabelAddressData.Text = user.Address;
                LabelGenderData.Text = user.Gender;
                LabelMobileNumberData.Text = user.MobileNumber;
                LabelEmailData.Text = user.Email;
                LabelCommentData.Text = user.Comment;
                LabelDepartmentRefIdData.Text = user.DepartmentRefId.ToString();
            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id parameter not found!");
            }
        }

        private void DeleteData()
        {
            var idText = Request.QueryString["id"];
            var id = int.Parse(idText);

            var usersService = new UsersService();

            try
            {
                usersService.Delete(id);

                LabelStatus.ShowStatusMessage("User record successfully deleted!");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
                LabelStatus.ShowStatusMessage("Failed to delete User record! Maybe a foreign key was found! Please contact database admin!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to delete User record!");
            }
        }
    }
}