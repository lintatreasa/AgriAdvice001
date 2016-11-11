using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AgriAdviceBL;
using AgriAdviceWeb.Session;

namespace AgriAdviceWeb.Home
{
    public partial class AgricultureDetails : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HomeBL userBL = new HomeBL();
                AgriAdviceEntity.AgricultureDetails obj = new AgriAdviceEntity.AgricultureDetails();
                obj = userBL.GetAgricultureDetails(userInfo.UserId);
                if (obj.Rubber == 0)
                    txtRubber.Text = "";
                else
                    txtRubber.Text = obj.Rubber.ToString();
                if(obj.Pepper==0)
                    txtPepper.Text = "";
                else
                    txtPepper.Text = obj.Pepper.ToString();
                if(obj.Tapioca==0)
                    txtTapioca.Text = "";
                else
                    txtTapioca.Text = obj.Tapioca.ToString();
                if(obj.Cocoa==0)
                    txtCocoa.Text = "";
                else
                    txtCocoa.Text = obj.Cocoa.ToString();
                if(obj.CoconutTree==0)
                    txtCoconuttree.Text = "";
                else
                    txtCoconuttree.Text = obj.CoconutTree.ToString();
                if(obj.Banana==0)
                    txtVazha.Text = "";
                else
                    txtVazha.Text = obj.Banana.ToString();
                if(obj.Vegetables==0)
                    txtVegetables.Text = "";
                else
                    txtVegetables.Text = obj.Vegetables.ToString();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtRubber.Text = "";
            txtPepper.Text = "";
            txtTapioca.Text = "";
            txtCocoa.Text = "";
            txtCoconuttree.Text = "";
            txtVazha.Text = "";
            txtVegetables.Text = "";
            lblMessage.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HomeBL userBL = new HomeBL();
            AgriAdviceEntity.AgricultureDetails obj = new AgriAdviceEntity.AgricultureDetails();
            obj.UserId = userInfo.UserId;
            if (txtVazha.Text == string.Empty)
            {
                obj.Banana = 0;
            }
            else
            {
                obj.Banana = Convert.ToInt32(txtVazha.Text);
            }
            if (txtCocoa.Text == string.Empty)
            {
                obj.Cocoa = 0;
            }
            else
            {
                obj.Cocoa = Convert.ToInt32(txtCocoa.Text);
            }
            if (txtCoconuttree.Text == string.Empty)
            {
                obj.CoconutTree = 0;
            }
            else
            {
                obj.CoconutTree = Convert.ToInt32(txtCoconuttree.Text);
            }
            if (txtPepper.Text == string.Empty)
            {
                obj.Pepper = 0;
            }
            else
            {
                obj.Pepper = Convert.ToInt32(txtPepper.Text);
            }
            if (txtRubber.Text == string.Empty)
            {
                obj.Rubber = 0;
            }
            else
            {
                obj.Rubber = Convert.ToInt32(txtRubber.Text);
            }
            if (txtTapioca.Text == string.Empty)
            {
                obj.Tapioca = 0;
            }
            else
            {
                obj.Tapioca = Convert.ToInt32(txtTapioca.Text);
            }
            if (txtVegetables.Text == string.Empty)
            {
                obj.Vegetables = 0;
            }
            else
            {
                obj.Vegetables = Convert.ToInt32(txtVegetables.Text);
            }
            int success = 0;
            success = userBL.SetAgricultureDetails(obj);
            if (success == -1)
            {
                lblMessage.Text = "Agriculture details updated successfully";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Agriculture details updation Failed";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }

        protected void lnkAgriDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("New User.aspx");
        }
    }
}