using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace ArtGallerypreview
{
    public partial class Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


       

        protected void cvLogin_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = DataLayer.Users.CheckLogin(txtUsername.Text, txtPassword.Text).Tables["users"].Rows.Count != 0;

            if (args.IsValid)
            {
                ViewState["UserID"] =
                   (int)DataLayer.Users.CheckLogin(txtUsername.Text, txtPassword.Text).Tables["Users"].Rows[0]["UserID"];
            }

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                FormsAuthentication.RedirectFromLoginPage(ViewState["UserID"].ToString(), true);

            }
        }
    }
}