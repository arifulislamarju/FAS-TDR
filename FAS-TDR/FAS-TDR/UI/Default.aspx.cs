using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TDR.BLL;
using TDR.DAO;

namespace TDR
{
    public partial class _Default : System.Web.UI.Page
    {
        #region Variable
        Customer aCustomer=new Customer();
        CustomerBLL aCustomerBll=new CustomerBLL();
        private int result = 0;
        DataTable dt=new DataTable();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        protected void chkNew_CheckedChanged(object sender, EventArgs e)
        {
            if (chkNew.Checked==true)
            {
                chkExisting.Checked = false;
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void chkExisting_CheckedChanged(object sender, EventArgs e)
        {
            if (chkExisting.Checked==true)
            {
                chkNew.Checked = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (btnSave.Text=="Save")
            {
                try
                {
                    
                }
                catch (Exception)
                {
                    
                    throw;
                }
            }
            else
            {
                
            }
        }
        #region Method
        private void Clear()
        {
            
        }
        private void LoadData()
        {
            
        }
        #endregion
    }
}
