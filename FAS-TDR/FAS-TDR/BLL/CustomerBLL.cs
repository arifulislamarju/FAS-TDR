using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TDR.DAL;
using TDR.DAO;

namespace TDR.BLL
{
    public class CustomerBLL
    {
        #region Variable 
        CustomerGateway customerGateway=new CustomerGateway();
        DataTable dt=new DataTable();
        #endregion

        #region Method
        public int Insert(Customer aCustomer)
        {
            try
            {
                return customerGateway.Insert(aCustomer);
            }
            catch (Exception expException)
            {

                throw (expException);
            }
        }

        public int Update(Customer aCustomer)
        {
            try
            {
                return customerGateway.Update(aCustomer);
            }
            catch (Exception exception)
            {
                throw (exception);
            }
        }

        public int Delete(int id)
        {
            try
            {
                return customerGateway.Delete(id);
            }
            catch (Exception exception)
            {
                throw (exception);
            }
        }

        public DataTable Load()
        {
            try
            {
                return dt = customerGateway.LoadData();
            }
            catch (Exception exception)
            {

                throw (exception);
            } 
        }
        #endregion
    }
}