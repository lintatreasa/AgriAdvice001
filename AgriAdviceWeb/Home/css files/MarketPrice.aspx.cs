using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AgriAdviceEntity;
using AgriAdviceBL;
using System.Data;

namespace AgriAdviceWeb.Home
{
    public partial class MarketPrice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getMarketPrice();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MarketPriceDetails obj = new MarketPriceDetails();
           obj.Banana = Convert.ToDecimal(txtVazha.Text);
            obj.Cocoa = Convert.ToDecimal(txtCocoa.Text);
            obj.Rubber = Convert.ToDecimal(txtRubber.Text);
            obj.Tapioca = Convert.ToDecimal(txtTapioca.Text);
            obj.Vegetables = Convert.ToDecimal(txtPayar.Text);
            obj.Pepper = Convert.ToDecimal(txtPepper.Text);
            obj.CoconutTree = Convert.ToDecimal(txtCoconut.Text);            
        }

        public void getMarketPrice()
        {
            HomeBL objHomeBl = new HomeBL();
            DataSet ds = new DataSet();
            ds = objHomeBl.GetMarketPriceDetails();
            foreach(DataRow drow in ds.Tables[0].Rows)
            {
                if (drow["produt"].ToString() == ProductPrice.Rubber.ToString())
                    txtRubber.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.Tapioca.ToString())
                    txtTapioca.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.Pepper.ToString())
                    txtPepper.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.Cocoa.ToString())
                    txtCocoa.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.payar.ToString())
                    txtPayar.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.paval.ToString())
                    txtBitterQuard.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.kovakka.ToString())
                    Kovakka.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.CoconutT.ToString())
                    txtCoconut.Text = drow["Price"].ToString();
                else if (drow["produt"].ToString() == ProductPrice.Banana.ToString())
                    txtVazha.Text = drow["Price"].ToString();

            }
        }
        

    }
}