using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace AgriAdviceDL
{
    public class Connection
    {
        public string dbconString = ConfigurationManager.ConnectionStrings["AgrAdviceConnection"].ConnectionString;
        SqlConnection con = null;

        public DataSet GetDataSet(SqlCommand sqlCmd, CommandType eType, string commandText)
        {
            DataSet dataSet = new DataSet();
            SqlDataAdapter sqlDap = null;

            try
            {
                con = new SqlConnection(dbconString);
                con.Open();
                sqlCmd = ConnectionStates(con, sqlCmd, eType, commandText);
                sqlDap = new SqlDataAdapter(sqlCmd);               
                sqlDap.Fill(dataSet);
            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return dataSet;
        }

        private static SqlConnection GetSqlConnection()
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["AgrAdviceConnection"].ConnectionString;
                return new SqlConnection(connString);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //********************************************************************************************
        // ConnectionStates  : This Function is to set the connection properties.
        //********************************************************************************************
        public static SqlCommand ConnectionStates(SqlConnection sqlCon, SqlCommand sqlCmd, CommandType eType, string commandText)
        {
            sqlCmd.Connection = sqlCon;
            sqlCmd.CommandText = commandText;
            sqlCmd.CommandType = eType;
            sqlCmd.CommandTimeout = 120;

            return sqlCmd;
        }

        //********************************************************************************************
        // ExecuteSQLNonQuery  : This method returns int which returns 1 on success. It is used majorly for Inserts.
        //********************************************************************************************
        public int ExecuteSQLNonQuery(SqlCommand sqlCmd, CommandType eType, string commandText)
        {
            int success;
            try
            {
                con = new SqlConnection(dbconString);
                con.Open();
                sqlCmd = ConnectionStates(con, sqlCmd, eType, commandText);
                success = sqlCmd.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                throw se;
            }
            finally
            {
                con.Close();
            }
            return success;
        }


        //********************************************************************************************
        // ExecuteSQLScalar     : This Function will return first column of the Resultset.      
        //********************************************************************************************
        public string ExecuteSQLScalar(SqlCommand sqlCmd, CommandType eType, string commandText)
        {
            try
            {
                con = new SqlConnection(dbconString);
                sqlCmd = ConnectionStates(con, sqlCmd, eType, commandText);
                con.Open();
                object strResult = (object)sqlCmd.ExecuteScalar();
                //object strResult = (object)sqlCmd.ExecuteNonQuery();
                if (strResult != null)
                {
                    return strResult.ToString();
                }
                else
                {
                    return "";
                }
            }
            catch (Exception se)
            {
                throw se;
            }
            finally
            {
                con.Close();
            }
        }

        //********************************************************************************************
        // ExecuteSQLScalar     : This Function will return first column of the Resultset.      
        //********************************************************************************************
        public object ExecuteSQL(SqlCommand sqlCmd, CommandType eType, string commandText)
        {
            try
            {
                con = new SqlConnection(dbconString);
                sqlCmd = ConnectionStates(con, sqlCmd, eType, commandText);
                con.Open();
                object strResult = (object)sqlCmd.ExecuteScalar();               
                if (strResult != null)
                {
                    return strResult;
                }
                else
                {
                    return "";
                }
            }
            catch (Exception se)
            {
                throw se;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
