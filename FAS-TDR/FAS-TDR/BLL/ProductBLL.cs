using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TDR.DAL;
using TDR.DAO;

namespace TDR.BLL
{
    public class ProductBLL
    {
        #region Variable
        ProductGateway aProductGateway=new ProductGateway();
        DataTable dt=new DataTable();
        #endregion

        #region Method
        public int Insert(Products aProducts)
        {
            return aProductGateway.Insert(aProducts);
        }
        public int Update(Products aProducts)
        {
            return aProductGateway.Update(aProducts);
        }
        public int Delete(int id)
        {
            return aProductGateway.Delete(id);
        }
        public DataTable GetAll()
        {
            return dt = aProductGateway.GetAll();
        }
        #endregion
    }
}