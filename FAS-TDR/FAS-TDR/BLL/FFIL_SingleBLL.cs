using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TDR.DAL;
using TDR.DAO;

namespace TDR.BLL
{
    public class FFIL_SingleBLL
    {
        #region Variable
        FFIL_SingleGateway aSingleGateway=new FFIL_SingleGateway();
        DataTable dt = new DataTable();
        #endregion

        #region Method
        public int Insert(FFIL_Single aSingle)
        {
            return aSingleGateway.Insert(aSingle);
        }
        //public int Update(Products aProducts)
        //{
        //    return aSingleGateway.Update(aProducts);
        //}
        //public int Delete(int id)
        //{
        //    return aSingleGateway.Delete(id);
        //}
        //public DataTable GetAll()
        //{
        //    return dt = aSingleGateway.GetAll();
        //}
        #endregion
    }
}