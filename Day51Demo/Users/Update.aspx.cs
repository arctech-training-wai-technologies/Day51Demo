using System;
using System.Diagnostics;
using System.Globalization;
using Day51Demo.Services;
using Day51Demo.Services.Models;
using Day51Demo.Services.Utilities;

namespace Day51Demo.Users
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            ShowDataToUpdate();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            UpdateData();
        }

        private void UpdateData()
        {
            var usersService = new UsersService();

            try
            {
                var idText = Request.QueryString["id"];

                var user = new User();
                user.Id = int.Parse(idText);
                user.FirstName = TextBoxFirstName.Text;
                user.LastName = TextBoxLastName.Text;
                user.DateOfBirth = string.IsNullOrEmpty(TextBoxDateOfBirth.Text) ? (DateTime?)null : DateTime.Parse(TextBoxDateOfBirth.Text);
                user.Pan = TextBoxPan.Text;
                user.Address = TextBoxAddress.Text; //Gender = MaleRadioButton.Checked ? MaleRadioButton.Text : MaleRadioButton.Checked ? OtherRadioButton.Text : OtherRadioButton.Text,
                user.Gender = RadioButtonListGender.SelectedValue;
                user.MobileNumber = TextBoxMobileNumber.Text;
                user.Email = TextBoxEmail.Text;
                user.Comment = TextBoxComment.Text; //DepartmentRefId = int.Parse(TextBoxDepartmentRefId.Text)
                user.DepartmentRefId = int.Parse(DropDownListDepartmentRefId.SelectedValue);

                usersService.Update(user);

                LabelStatus.ShowStatusMessage("User record successfully updated!");
            }
            catch (Exception exception)
            {
                Debug.Print(exception.StackTrace);
                LabelStatus.ShowStatusMessage("Failed to update User record!");
            }
        }

        private void ShowDataToUpdate()
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

                TextBoxFirstName.Text = user.FirstName;
                TextBoxLastName.Text = user.LastName;
                TextBoxDateOfBirth.Text = user.DateOfBirth.ToString();
                TextBoxPan.Text = user.Pan;
                TextBoxAddress.Text = user.Address;

                //MaleRadioButton.Checked ? MaleRadioButton.Text: MaleRadioButton.Checked? OtherRadioButton.Text: OtherRadioButton.Text = user.Gender;
                //if (user.Gender == MaleRadioButton.Text)
                //    MaleRadioButton.Checked = true;
                //else if (user.Gender == FemaleRadioButton.Text)
                //    FemaleRadioButton.Checked = true;
                //else if (user.Gender == OtherRadioButton.Text)
                //    OtherRadioButton.Checked = true;
                RadioButtonListGender.SelectedValue = user.Gender;
                TextBoxMobileNumber.Text = user.MobileNumber;
                TextBoxEmail.Text = user.Email;
                TextBoxComment.Text = user.Comment;
                //TextBoxDepartmentRefId.Text = user.DepartmentRefId.ToString();

                LoadDepartmentDropDown();
            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id parameter not found!");
            }
        }

        private void LoadDepartmentDropDown()
        {
            var departmentsService = new DepartmentsService();
            DropDownListDepartmentRefId.DataSource = departmentsService.GetAllForDropDown();
            DropDownListDepartmentRefId.DataBind();
        }
    }
}