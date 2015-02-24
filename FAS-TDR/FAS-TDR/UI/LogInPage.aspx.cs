using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FidelityManagement.UI
{
    public partial class LoginPage : System.Web.UI.Page
    {
        #region Variable
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TDR"].ToString());
        SqlCommand cmd;
        SqlDataReader reader;
        private SqlDataAdapter da;
        private DataTable dt;
        private string SQL;
        #endregion

        #region Method
        public string Clear()
        {
            txtuserName.Text = "";
            txtPassword.Text = "";
            return Clear();
        }
        //public static string EncryptPassword(string password)
        //{
        //    try
        //    {
        //        byte[] encrypDate=new byte[password.Length];
        //        encrypDate = System.Text.Encoding.UTF8.GetBytes(password);
        //        string encodedData = Convert.ToBase64String(encrypDate);
        //        return encodedData;
        //    }
        //    catch (Exception exception)
        //    {
        //        throw exception;
        //    }
        //}
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // Clear();
                Session.RemoveAll();
            }
        }
        
        protected void btnSign_Click1(object sender, EventArgs e)
        {
            try
            {
                Session["loginUserName"] = txtuserName.Text.Trim();
                Session["loginPassword"] = txtPassword.Text;

                
                connection.Open();
                SQL = "select * from tblLoginMst where loginUserName=@loginUserName and loginPassword=@loginPassword";
                cmd = new SqlCommand(SQL, connection);
                cmd.Parameters.AddWithValue("@loginUserName", txtuserName.Text);
                cmd.Parameters.AddWithValue("@loginPassword", txtPassword.Text);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<Script language='javascript'>alert('Invalid Username OR password')</script>");
                    //this.Label1.ForeColor = System.Drawing.Color.Red;
                    //this.Label1.Text = "Invalid User";
                }
            }
            catch (Exception exception)
            {
                this.Label1.ForeColor = System.Drawing.Color.DarkRed;
                this.Label1.Text = exception.Message.ToString();
            }
        }
    }
}