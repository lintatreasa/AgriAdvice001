using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AgriAdviceBL;
using AgriAdviceEntity;
using System.Data;


namespace AgriAdviceWeb.Home
{
    public partial class Home : System.Web.UI.Page
    {
        HomeBL objHomeBl = new HomeBL();
        protected void Page_Load(object sender, EventArgs e)
        {           
            lblMessage.Text = "";
            if (!IsPostBack)
            {
                txtPassword.Text = "";
                txtUserName.Text = "";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HomeBE objHomeBe = new HomeBE();
            objHomeBe.UserName = txtUserName.Text.Trim();
            objHomeBe.Passw0rd = txtPassword.Text.Trim();
            string success = string.Empty;
            int userid = 0;
            success = objHomeBl.GetUserInfo(objHomeBe);
            if(success != string.Empty)
            {
                userid = Convert.ToInt32(success);
            }
            if (success == string.Empty)
            {
                lblMessage.Text = "Invalid User";
                lblMessage.Visible = true;
            }
            else
            {
                Response.Redirect("New User.aspx?Userid=" + userid);
            }
            //if (success.Tables[0].Rows.Count > 0)
            //{
            //    
            //    foreach (DataRow drow in success.Tables[0].Rows)
            //    {
            //        userid = Convert.ToInt32(drow["UserId"]);
            //    }
            //    Response.Redirect("New User.aspx?Userid=" + userid);
            //}
        }

        protected void RedirectToNewUser(object sender, EventArgs e)
        {
            Response.Redirect("New User.aspx");
        }
    }
}