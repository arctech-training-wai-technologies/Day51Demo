using System;
using System.Web.UI.WebControls;
using Day51Demo.Services;
using Day51Demo.Services.Models;
using Day51Demo.Services.Utilities;

namespace Day51Demo.Users
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonCreate_OnClick(object sender, EventArgs e)
        {
            CreateData();
        }

        private void CreateData()
        {
            var usersService = new UsersService();

            try
            {
                ListItem listItem = DropDownListDepartmentRefId.SelectedItem;

                var user = new User()
                {
                    FirstName = TextBoxFirstName.Text,
                    LastName = TextBoxLastName.Text,
                    DateOfBirth = DateTime.Parse(TextBoxDateOfBirth.Text),
                    Pan = TextBoxPan.Text,
                    Address = TextBoxAddress.Text,

                    //if (MaleRadioButton.Checked)
                    //{
                    //    Gender = MaleRadioButton.Text,
                    //}
                    //else
                    //{
                    //    Gender = FemaleRadioButton.Text,
                    //}

                    Gender = MaleRadioButton.Checked ? MaleRadioButton.Text : MaleRadioButton.Checked ? OtherRadioButton.Text : OtherRadioButton.Text,

                    MobileNumber = TextBoxMobileNumber.Text,
                    Email = TextBoxEmail.Text,
                    Comment = TextBoxComment.Text,
                    //DepartmentRefId = int.Parse(TextBoxDepartmentRefId.Text),
                    DepartmentRefId = int.Parse(listItem.Value)
                };
                usersService.Add(user);

                LabelStatus.ShowStatusMessage("Users record successfully added!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to add Users record!");
            }
        }
    }
}

//----------------------------------------------------------------------------------------

