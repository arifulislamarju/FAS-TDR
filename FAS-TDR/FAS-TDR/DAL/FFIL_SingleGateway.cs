using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TDR.DAO;

namespace TDR.DAL
{
    public class FFIL_SingleGateway:Gateway
    {
        #region Variable
        private int result = 0;
        // public string SQL;
        DataTable dt = new DataTable();
        // DataSet ds=new DataSet();
        //  SqlDataAdapter da=new SqlDataAdapter();
        #endregion

        #region Method

        public int Insert(FFIL_Single aSingle)
        {
            using (SqlConnection connection = new SqlConnection(this.connection))
            {
                SqlCommand cmd = new SqlCommand("spSingle", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@singleId", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@depositDate", SqlDbType.DateTime).Value = aSingle.depositDate;
                cmd.Parameters.Add("@tdrSlNo", SqlDbType.Int).Value = aSingle.tdrSlNo;
                cmd.Parameters.Add("@accountNumber", SqlDbType.Int).Value = aSingle.accountNumber;
                cmd.Parameters.Add("@clientName", SqlDbType.VarChar).Value = aSingle.clientName;
                cmd.Parameters.Add("@fatherName", SqlDbType.VarChar).Value = aSingle.fatherName;
                cmd.Parameters.Add("@motherName", SqlDbType.VarChar).Value = aSingle.motherName;
                cmd.Parameters.Add("@spouseName", SqlDbType.VarChar).Value = aSingle.spouseName;
                cmd.Parameters.Add("@DOB", SqlDbType.DateTime).Value = aSingle.DOB;
                cmd.Parameters.Add("@sex", SqlDbType.VarChar).Value = aSingle.sex;
                cmd.Parameters.Add("@religion", SqlDbType.VarChar).Value = aSingle.religion;
                cmd.Parameters.Add("@nationality", SqlDbType.VarChar).Value = aSingle.nationality;
                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = aSingle.id;
                cmd.Parameters.Add("@idNo", SqlDbType.Int).Value = aSingle.idNo;
                cmd.Parameters.Add("@occupation", SqlDbType.VarChar).Value = aSingle.occupation;
                cmd.Parameters.Add("@organization", SqlDbType.VarChar).Value = aSingle.organization;
                cmd.Parameters.Add("@designation", SqlDbType.VarChar).Value = aSingle.designation;
                cmd.Parameters.Add("@officeAddress", SqlDbType.VarChar).Value = aSingle.officeAddress;
                cmd.Parameters.Add("@permAddress", SqlDbType.VarChar).Value = aSingle.permAddress;
                cmd.Parameters.Add("@phone", SqlDbType.VarChar).Value = aSingle.phone;
                cmd.Parameters.Add("@mobile", SqlDbType.VarChar).Value = aSingle.mobile;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = aSingle.email;
                cmd.Parameters.Add("@fax", SqlDbType.Int).Value = aSingle.fax;
                cmd.Parameters.Add("@depAmount", SqlDbType.Int).Value = aSingle.depAmount;
                cmd.Parameters.Add("@depTenure", SqlDbType.NVarChar).Value = aSingle.depTenure;
                cmd.Parameters.Add("@depDateIssue", SqlDbType.DateTime).Value = aSingle.depDateIssue;
                cmd.Parameters.Add("@depDateMaturity", SqlDbType.DateTime).Value = aSingle.depDateMaturity;
                cmd.Parameters.Add("@cheqPoDDNo", SqlDbType.Int).Value = aSingle.cheqPoDDNo;
                cmd.Parameters.Add("@cheqDate", SqlDbType.DateTime).Value = aSingle.cheqDate;
                cmd.Parameters.Add("@cheqBank", SqlDbType.VarChar).Value = aSingle.cheqBank;
                cmd.Parameters.Add("@cheqBranch", SqlDbType.VarChar).Value = aSingle.cheqBranch;
                cmd.Parameters.Add("@cheqTakaInWrd", SqlDbType.VarChar).Value = aSingle.cheqTakaInWrd;
                cmd.Parameters.Add("@nominee1", SqlDbType.VarChar).Value = aSingle.nominee1;
                cmd.Parameters.Add("@nominee1FatherName", SqlDbType.VarChar).Value = aSingle.nominee1FatherName;
                cmd.Parameters.Add("@nominee1MotherName", SqlDbType.VarChar).Value = aSingle.nominee1MotherName;
                cmd.Parameters.Add("@nominee1SpouseName", SqlDbType.VarChar).Value = aSingle.nominee1SpouseName;
                cmd.Parameters.Add("@nominee1Relation", SqlDbType.VarChar).Value = aSingle.nominee1Relation;
                cmd.Parameters.Add("@nominee1Percentage", SqlDbType.VarChar).Value = aSingle.nominee1Percentage;
                cmd.Parameters.Add("@nominee2", SqlDbType.VarChar).Value = aSingle.nominee2;
                cmd.Parameters.Add("@nominee2FatherName", SqlDbType.VarChar).Value = aSingle.nominee2FatherName;
                cmd.Parameters.Add("@nominee2MotherName", SqlDbType.VarChar).Value = aSingle.nominee2MotherName;
                cmd.Parameters.Add("@nominee2SpouseName", SqlDbType.VarChar).Value = aSingle.nominee2SpouseName;
                cmd.Parameters.Add("@nominee2Relation", SqlDbType.VarChar).Value = aSingle.nominee2Relation;
                cmd.Parameters.Add("@nominee2Percentage", SqlDbType.VarChar).Value = aSingle.nominee2Percentage;
                cmd.Parameters.Add("@Type", SqlDbType.Int).Value = 0;
                connection.Open();
                result = cmd.ExecuteNonQuery();
                connection.Close();
                return result;
            }
        }
        //public int Update(Products aProducts)
        //{
        //    using (SqlConnection connection = new SqlConnection(this.connection))
        //    {
        //        SqlCommand cmd = new SqlCommand("spProducts", connection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add("@productId", SqlDbType.Int).Value = aProducts.id;
        //        cmd.Parameters.Add("@productName", SqlDbType.VarChar).Value = aProducts.products;
        //        cmd.Parameters.Add("@Type", SqlDbType.Int).Value = 1;
        //        connection.Open();
        //        result = cmd.ExecuteNonQuery();
        //        connection.Close();
        //        return result;
        //    }
        //}
        //public int Delete(int id)
        //{
        //    using (SqlConnection connection = new SqlConnection(this.connection))
        //    {
        //        SqlCommand cmd = new SqlCommand("spProducts", connection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add("@productId", SqlDbType.Int).Value = id;
        //        cmd.Parameters.Add("@productName", SqlDbType.VarChar).Value = "";
        //        cmd.Parameters.Add("@Type", SqlDbType.Int).Value = 2;
        //        connection.Open();
        //        result = cmd.ExecuteNonQuery();
        //        connection.Close();
        //        return result;
        //    }
        //}
        //public DataTable GetAll()
        //{
        //    using (SqlConnection connection = new SqlConnection(this.connection))
        //    {
        //        SqlDataAdapter da = new SqlDataAdapter("spProducts", connection);
        //        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //        da.SelectCommand.Parameters.Add("@productId", SqlDbType.Int).Value = 0;
        //        da.SelectCommand.Parameters.Add("@productName", SqlDbType.VarChar).Value = "";
        //        da.SelectCommand.Parameters.Add("@Type", SqlDbType.Int).Value = 10000;
        //        connection.Open();
        //        da.Fill(dt);
        //        connection.Close();
        //        return dt;
        //    }
        //}
        #endregion

    }
}