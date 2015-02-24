using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TDR.DAO;

namespace TDR.DAL
{
    public class CustomerGateway:Gateway
    {
        #region Variable
        public int result = 0;
        public string SQL;
        DataTable dt=new DataTable();
        DataSet ds=new DataSet();
        SqlDataAdapter da=new SqlDataAdapter();
        #endregion

        #region Method
        public int Insert(Customer aCustomer)
        {
            using (SqlConnection conn=new SqlConnection(this.connection))
            {
                try
                {
                    SQL = "";
                    SqlCommand cmd = new SqlCommand(SQL, conn);
                    conn.Open();
                    result = cmd.ExecuteNonQuery();
                    conn.Close();
                    return result;
                }
                catch (Exception exception)
                {
                    throw (exception);
                }
            }
        }
        public int Update(Customer aCustomer)
        {
            using (SqlConnection conn = new SqlConnection(this.connection))
            {
                try
                {
                    SQL = "";
                    SqlCommand cmd = new SqlCommand(SQL, conn);
                    conn.Open();
                    result = cmd.ExecuteNonQuery();
                    conn.Close();
                    return result;
                }
                catch (Exception exception)
                {
                    throw (exception);
                }
            }
        }
        public int Delete(int id)
        {
           using (SqlConnection conn = new SqlConnection(this.connection))
            {
                try
                {
                    SQL = "";
                    SqlCommand cmd = new SqlCommand(SQL, conn);
                    conn.Open();
                    result = cmd.ExecuteNonQuery();
                    conn.Close();
                    return result;
                }
                catch (Exception exception)
                {
                    throw (exception);
                }
            }
        }
        public DataTable LoadData()
        {
            using (SqlConnection conn=new SqlConnection(this.connection))
            {
                try
                {
                    SQL = "";
                    da = new SqlDataAdapter(SQL, conn);
                    conn.Open();
                    da.Fill(dt);
                    return dt;
                }
                catch (Exception exception)
                {
                    throw (exception);
                }
            }
        }
        #endregion
    }
}