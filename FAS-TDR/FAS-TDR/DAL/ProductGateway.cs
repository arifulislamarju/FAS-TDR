using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TDR.DAO;

namespace TDR.DAL
{
    public class ProductGateway:Gateway
    {
        #region Variable
        private int result = 0;
      // public string SQL;
        DataTable dt=new DataTable();
       // DataSet ds=new DataSet();
      //  SqlDataAdapter da=new SqlDataAdapter();
        #endregion

        #region Method

        public int Insert(Products aProducts)
        {
            using (SqlConnection connection=new SqlConnection(this.connection))
            {
                SqlCommand cmd=new SqlCommand("spProducts",connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@productId", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@productName", SqlDbType.VarChar).Value = aProducts.products;
                cmd.Parameters.Add("@Type", SqlDbType.Int).Value = 0;
                connection.Open();
                result = cmd.ExecuteNonQuery();
                connection.Close();
                return result;    
            }
        }
        public int Update(Products aProducts)
        {
            using (SqlConnection connection = new SqlConnection(this.connection))
            {
                SqlCommand cmd = new SqlCommand("spProducts", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@productId", SqlDbType.Int).Value = aProducts.id;
                cmd.Parameters.Add("@productName", SqlDbType.VarChar).Value = aProducts.products;
                cmd.Parameters.Add("@Type", SqlDbType.Int).Value = 1;
                connection.Open();
                result = cmd.ExecuteNonQuery();
                connection.Close();
                return result;    
            }
        }
        public int Delete(int id)
        {
            using (SqlConnection connection = new SqlConnection(this.connection))
            {
                SqlCommand cmd = new SqlCommand("spProducts", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@productId", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@productName", SqlDbType.VarChar).Value = "";
                cmd.Parameters.Add("@Type", SqlDbType.Int).Value = 2;
                connection.Open();
                result = cmd.ExecuteNonQuery();
                connection.Close();
                return result; 
            }
        }
        public DataTable GetAll()
        {
            using (SqlConnection connection = new SqlConnection(this.connection))
            {
                SqlDataAdapter da = new SqlDataAdapter("spProducts", connection);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add("@productId", SqlDbType.Int).Value =0;
                da.SelectCommand.Parameters.Add("@productName", SqlDbType.VarChar).Value ="";
                da.SelectCommand.Parameters.Add("@Type", SqlDbType.Int).Value = 10000;
                connection.Open();
                da.Fill(dt);
                connection.Close();
                return dt; 
            }
        }
        #endregion

    }
}