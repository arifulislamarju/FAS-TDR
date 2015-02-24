using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace FAS_TDR.Report
{
    public partial class SingleReport : System.Web.UI.Page
    {

        #region Variable
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        #endregion

        #region Method
        public void FillTDR()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TDR"].ToString());
            string query = "select tdrSlNo,accountNumber,clientName from tblSingle";
            //SqlCommand cmd = new SqlCommand("select tdrSlNo,accountNumber,clientName from tblSingle", conn);
            SqlCommand cmd=new SqlCommand(query,con);
            con.Open();
            //DataSet ds=new DataSet();
            da.SelectCommand = cmd;
            //conn.Open();
            da.Fill(dt);
            ddlTdrNo.DataSource = dt;
            ddlTdrNo.DataBind();
            ddlTdrNo.DataTextField = "tdrSlNo";
            ddlTdrNo.DataValueField = "tdrSlNo";
            ddlTdrNo.DataBind();
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillTDR();
            }
        }

        protected void btnSingleReport_Click(object sender, EventArgs e)
        {
            try
            {
                ReportDocument singleReportDocument=new ReportDocument();
                ParameterField parameterField=new ParameterField();
                ParameterFields parameterFields=new ParameterFields();
                ParameterDiscreteValue parameterDiscreteValue=new ParameterDiscreteValue();

                parameterField.Name = "@tdrSlNo";
                parameterDiscreteValue.Value = ddlTdrNo.SelectedValue;
                parameterField.CurrentValues.Add(parameterDiscreteValue);
                parameterFields.Add(parameterField);
                CrystalReportViewer1.ParameterFieldInfo = parameterFields;
                string reportPath = Server.MapPath("~/Report/SingleDepositReport.rpt");
                singleReportDocument.Load(reportPath);
                singleReportDocument.SetParameterValue("tdrSlNo", ddlTdrNo.SelectedValue);
                CrystalReportViewer1.ReportSource = singleReportDocument;






              //  SingleDepositReport aSingleDeposit=new SingleDepositReport();
              // // SingleReport aSingleDeposit=new SingleReport();
              // // SingleDeposit aSingleDeposit=new SingleDeposit();
              // // ReportDocument rptSingle = new ReportDocument();
              ////  rptSingle.Load(@"D:\Web-Project\FAS-TDR\FAS-TDR\Report\SingleDeposit.rpt");
              //  //CrystalReportViewer1.SelectionFormula = "{tblSingle.tdrSlNo}=" + ddlTdrNo.SelectedItem;
              //  CrystalReportViewer1.SelectionFormula = "{tblSingle.tdrSlNo}=" + Convert.ToString(ddlTdrNo.SelectedValue);
              //  CrystalReportViewer1.ReportSource = aSingleDeposit;
              //  //CrystalReportViewer1.ReportSource = rptSingle;
              //  //CrystalReportViewer1.DisplayToolbar = true;
            }
            catch (Exception exception)
            {
                Label1.Text = exception.Message.ToString();
            }
        }
    }
}