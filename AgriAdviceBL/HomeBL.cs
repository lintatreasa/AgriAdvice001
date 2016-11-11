using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AgriAdviceDL;
using AgriAdviceEntity;
using System.Data;

namespace AgriAdviceBL
{
    public class HomeBL
    {
        HomeDL objHomeDL = new HomeDL();
        public string GetUserInfo(HomeBE objHomeBe)
        {
            string success = string.Empty;
            try
            {
                success = objHomeDL.GetUserInfo(objHomeBe);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return success;
        }

        public NewUser GetUserDetails(int userid)
        {
            NewUser objDataset = new NewUser();
            try
            {
                objDataset = objHomeDL.GetUserDetails(userid);           
            }            
            catch (Exception ex)
            {               
                throw ex;
            }
            return objDataset;
        }


        public DataSet GetRoleInfo()
        {
            DataSet objDataset = new DataSet();
            try
            {
                objDataset = objHomeDL.GetRoleInfo();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return objDataset;
        }

        public string setFarmerDetails(NewUser objNewUser , ref int Successmsg)
        {
            string success = string.Empty;

            try
            {                
                success = objHomeDL.setFarmerDetails(objNewUser, ref Successmsg);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return success;
        }

        public AgricultureDetails GetAgricultureDetails(int userid)
        {
            DataSet objDataset = new DataSet();
            AgricultureDetails obj = new AgricultureDetails();
            try
            {
                obj = objHomeDL.GetAgricultureDetails(userid);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return obj;
        }

        public int SetAgricultureDetails(AgricultureDetails objAgricultureDetails)
        {            
            int success = 0;
            try
            {
                success = objHomeDL.SetAgricultureDetails(objAgricultureDetails);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return success;
        }


        public DataSet GetMarketPriceDetails()
        {
            DataSet objDataset = new DataSet();
            try
            {
                objDataset = objHomeDL.GetMarketPriceDetails();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return objDataset;
        }
    }
}
