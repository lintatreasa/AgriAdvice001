using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AgriAdviceBL;
using AgriAdviceEntity;
using System.Data;

namespace AgriAdviceWeb.Session
{
    public class BasePage : System.Web.UI.Page
    {
        public UserInfo userInfo;

        public UserInfo MainUserInfo
        {
            get
            {
                if (userInfo == null)
                {
                    userInfo = UserInfo.Get();
                }
                return userInfo;
            }

        }

        protected override void OnPreInit(EventArgs e)
        {
            if (MainUserInfo == null)
            {
                string UserID;
                if (Request.QueryString["Userid"] != null)
                {
                    UserID = Request.QueryString["Userid"].ToString();
                }
                else
                {
                    UserID = "0";
                }
                    HomeBL userBL = new HomeBL();
                    NewUser ds = null;
                    try
                    {
                        ds = userBL.GetUserDetails(Convert.ToInt32(UserID));

                        if (ds != null)
                        {
                            UserInfo userInfo1 = new UserInfo();
                            userInfo1.UserId = ds.UserId;
                            userInfo1.RoleID = (int)ds.RoleId;
                            userInfo1.UserName = ds.UserName;
                            userInfo1.Area = ds.Area;
                            userInfo1.MobileNumber = ds.MobileNumber;
                            userInfo1.HouseName = ds.HouseName;
                            userInfo1.HouseNumber = ds.HouseNo;
                            userInfo1.Name = ds.Name;
                            userInfo1.Set();
                            if (userInfo1.RoleID == 2)
                            {
                                Response.Redirect("farmer.aspx", true);
                            }
                            else
                            {
                                Response.Redirect("Agriofficer.aspx", true);
                            }

                        }
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }

               
            }
        }
    }
}