using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AgriAdviceWeb.Session
{
    [Serializable()]
    public class UserInfo
    {
        public static UserInfo Get()
        {
            UserInfo userInfo = null;
            try
            {
                if (System.Web.HttpContext.Current.Session["UserInfo"] != null)
                    userInfo = (UserInfo)System.Web.HttpContext.Current.Session["UserInfo"];


            }
            catch (Exception ex)
            {
                throw ex;
            }
            return userInfo;
        }


        public void Set()
        {
            if (System.Web.HttpContext.Current.Session["UserInfo"] != null)
                System.Web.HttpContext.Current.Session.Remove("UserInfo");
            System.Web.HttpContext.Current.Session["UserInfo"] = this;
        }

        #region Properties

        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Name { get; set; }
        public string MobileNumber { get; set; }
        public string HouseName { get; set; }
        public string RoleName { get; set; }
        public int RoleID { get; set; }
        public int HouseNumber { get; set; }
        public int Area { get; set; }

        #endregion
    }
}