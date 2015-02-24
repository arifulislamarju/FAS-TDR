using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TDR.BLL;
using TDR.DAO;

namespace TDR.UI
{
    public partial class Product : System.Web.UI.Page
    {
        #region Variable
        Products aProducts=new Products();
        ProductBLL aProductBll=new ProductBLL();
        private int result = 0;
        DataTable dt=new DataTable();
        #endregion

        #region Method 
        private void LoadAllData()
        {
            dt = aProductBll.GetAll();
            if (dt.Rows.Count>0)
            {
                grvProducts.DataSource = dt;
                grvProducts.DataBind();
            }
        }

        private void Clear()
        {
            txtProduct.Text = "";
            hfPkId.Value = null;
            btnProduct.Text = "Save";
        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAllData();
            }
        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            if (btnProduct.Text=="Save")
            {
                try
                {
                    aProducts.products = txtProduct.Text;

                    result = aProductBll.Insert(aProducts);

                    if (result>0)
                    {
                        Clear();
                        LoadAllData();
                        
                    }
                }
                catch (Exception exception)
                {

                    throw exception;
                }
            }
            else
            {
                try
                {
                    aProducts.id = Convert.ToInt32(hfPkId.Value);
                    aProducts.products = txtProduct.Text;

                    result = aProductBll.Update(aProducts);

                    if (result>0)
                    {
                        Clear();
                        LoadAllData();
                        
                    }
                }
                catch (Exception exception)
                {

                    throw exception;
                }
            }
        }

        //protected void grvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int i = e.RowIndex;

        //    hfPkId.Value = ((Label)grvProducts.Rows[i].FindControl("lblPKID")).Text;

        //    result = aProductBll.Delete(Convert.ToInt32(hfPkId.Value));
        //    if (result > 0)
        //    {
        //        LoadAllData();
        //        Clear();
        //    }
        //}

        protected void grvProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
            txtProduct.Text = ((Label) grvProducts.Rows[i].FindControl("lblProducts")).Text;
            hfPkId.Value = ((Label) grvProducts.Rows[i].FindControl("lblPKID")).Text;

            btnProduct.Text = "Update";

        }
    }
}