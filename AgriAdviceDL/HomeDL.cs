using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using AgriAdviceEntity;

namespace AgriAdviceDL
{
    public class HomeDL
    {
        Connection objConnection = new Connection();
        string commandText = null;
        public NewUser GetUserDetails(int userid)
        {
            DataSet objDataset = new DataSet();
            NewUser obj = new NewUser();
            try
            {
                SqlCommand sqlCmd = new SqlCommand();
                commandText = "GetUserDetails";
                sqlCmd.Parameters.AddWithValue("@UserId", userid);
                objDataset = objConnection.GetDataSet(sqlCmd, CommandType.StoredProcedure, commandText);
                if (objDataset.Tables[0].Rows.Count > 0)
                {
                    obj.UserId = (int)objDataset.Tables[0].Rows[0]["UserId"];
                    obj.UserName = (string)objDataset.Tables[0].Rows[0]["UserName"];
                    obj.Name = (string)objDataset.Tables[0].Rows[0]["Name"];
                    obj.HouseName = (string)objDataset.Tables[0].Rows[0]["HouseName"];
                    obj.HouseNo = (int)objDataset.Tables[0].Rows[0]["HouseNo"];
                    obj.MobileNumber = (string)objDataset.Tables[0].Rows[0]["MobileNumber"];
                    obj.Area = (int)objDataset.Tables[0].Rows[0]["Area"];
                    if (objDataset.Tables[0].Rows[0]["RoleId"].ToString() != string.Empty)
                    obj.RoleId = (int)objDataset.Tables[0].Rows[0]["RoleId"];                 
                   
                }
            }            
            catch (Exception ex)
            {               
                throw ex;
            }
            return obj;
        }

        public string GetUserInfo(HomeBE objHomeBe)
        {
            SqlCommand sqlCmd = new SqlCommand();
            string success = string.Empty;

            try
            {
                commandText = "ValidateLogonUser";
                sqlCmd.Parameters.AddWithValue("@UserName", objHomeBe.UserName);
                sqlCmd.Parameters.AddWithValue("@Password", objHomeBe.Passw0rd);
                success = objConnection.ExecuteSQLScalar(sqlCmd, CommandType.StoredProcedure, commandText);
            }           
            catch (Exception ex)
            {               
                throw ex;
            }
            return success;
        }


        public DataSet GetRoleInfo()
        {
            DataSet objDataset = new DataSet();           
            try
            {
                SqlCommand sqlCmd = new SqlCommand();
                commandText = "GetRoleInfo";               
                objDataset = objConnection.GetDataSet(sqlCmd, CommandType.StoredProcedure, commandText);                
            }            
            catch (Exception ex)
            {               
                throw ex;
            }
            return objDataset;
        }

        public string setFarmerDetails(NewUser objNewUser, ref int Successmsg)
        {
            SqlCommand sqlCmd = new SqlCommand();
            string success = string.Empty;

            try
            {
                commandText = "SetFarmerDetails";
                sqlCmd.Parameters.AddWithValue("@UserName", objNewUser.UserName);
                sqlCmd.Parameters.AddWithValue("@Passw0rd", objNewUser.Passw0rd);
                sqlCmd.Parameters.AddWithValue("@UserId", objNewUser.UserId);
                sqlCmd.Parameters.AddWithValue("@MobileNumber", objNewUser.MobileNumber);
                sqlCmd.Parameters.AddWithValue("@HouseName", objNewUser.HouseName);
                sqlCmd.Parameters.AddWithValue("@Name", objNewUser.Name);
                sqlCmd.Parameters.AddWithValue("@RoleId", objNewUser.RoleId);
                sqlCmd.Parameters.AddWithValue("@HouseNo", objNewUser.HouseNo);
                sqlCmd.Parameters.AddWithValue("@Area", objNewUser.Area);
                sqlCmd.Parameters.AddWithValue("@Flag", objNewUser.Flag);
                sqlCmd.Parameters.Add("@Success", SqlDbType.Int).Direction = ParameterDirection.Output;
                success = objConnection.ExecuteSQLScalar(sqlCmd, CommandType.StoredProcedure, commandText);
                Successmsg = Convert.ToInt32(sqlCmd.Parameters["@Success"].Value.ToString());
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
                SqlCommand sqlCmd = new SqlCommand();
                commandText = "GetAgricultureDetails";
                sqlCmd.Parameters.AddWithValue("@UserId", userid);
                objDataset = objConnection.GetDataSet(sqlCmd, CommandType.StoredProcedure, commandText);
                if (objDataset.Tables[0].Rows.Count > 0)
                {
                    obj.UserId = (int)objDataset.Tables[0].Rows[0]["UserId"];
                    obj.Banana = (int)objDataset.Tables[0].Rows[0]["Vazha"];
                    obj.Cocoa = (int)objDataset.Tables[0].Rows[0]["Cocoa"];
                    obj.CoconutTree = (int)objDataset.Tables[0].Rows[0]["Coconuttree"];
                    obj.Pepper = (int)objDataset.Tables[0].Rows[0]["Pepper"];
                    obj.Rubber = (int)objDataset.Tables[0].Rows[0]["Rubber"];
                    obj.Tapioca = (int)objDataset.Tables[0].Rows[0]["Tapioca"];
                    obj.Vegetables = (int)objDataset.Tables[0].Rows[0]["Vegetables"]; 

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return obj;
        }

        public int SetAgricultureDetails(AgricultureDetails objAgricultureDetails)
        {
            SqlCommand sqlCmd = new SqlCommand();
            int success = 0;

            try
            {
                commandText = "SetAgricultureDetails";
                sqlCmd.Parameters.AddWithValue("@UserId", objAgricultureDetails.UserId);
                sqlCmd.Parameters.AddWithValue("@Rubber", objAgricultureDetails.Rubber);
                sqlCmd.Parameters.AddWithValue("@Pepper", objAgricultureDetails.Pepper);
                sqlCmd.Parameters.AddWithValue("@Tapioca", objAgricultureDetails.Tapioca);
                sqlCmd.Parameters.AddWithValue("@Vegetables", objAgricultureDetails.Vegetables);
                sqlCmd.Parameters.AddWithValue("@Cocoa", objAgricultureDetails.Cocoa);
                sqlCmd.Parameters.AddWithValue("@Coconuttree", objAgricultureDetails.CoconutTree);
                sqlCmd.Parameters.AddWithValue("@Vazha", objAgricultureDetails.Banana);
              //  sqlCmd.Parameters.AddWithValue("Area", objAgricultureDetails.Status);               
                success = objConnection.ExecuteSQLNonQuery(sqlCmd, CommandType.StoredProcedure, commandText);                
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
                SqlCommand sqlCmd = new SqlCommand();
                commandText = "GetMarketPriceDetails";
                objDataset = objConnection.GetDataSet(sqlCmd, CommandType.StoredProcedure, commandText);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return objDataset;
        }
    }
}
