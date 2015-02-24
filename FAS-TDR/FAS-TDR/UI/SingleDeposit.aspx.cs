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
    public partial class SingleDeposit : System.Web.UI.Page
    {
        #region Variable
        FFIL_Single aSingle=new FFIL_Single();
        FFIL_SingleBLL aSingleBll=new FFIL_SingleBLL();
        private int result = 0;
        DataTable dt = new DataTable();
        #endregion
        
        #region Method
        public void Clear()
        {
            hfPkId.Value = "null";
            
            txtDate.Text = "";
            txtTdrSlNo.Text = "";
            txtAccNo.Text = "";
            txtName.Text = "";
            txtFatherName.Text = "";
            txtMothersName.Text = "";
            txtSpouseName.Text = "";
            txtDob.Text = "";
            txtReligion.Text = "";
            txtNationality.Text = "";
            txtIdentityNo.Text = "";
            txtOccupation.Text = "";
            txtOrganization.Text = "";
            txtDesignation.Text = "";
            txtOfficeAdd.Text = "";
            txtPermAdd.Text = "";
            txtPhone.Text = "";
            txtmobile.Text = "";
            txtEmail.Text = "";
            txtDepAmt.Text = "";
            txtTenure.Text = "";
            txtDateissue.Text = "";
            txtDateMaturity.Text = "";
            txtPoDD.Text = "";
            txtChqDate.Text = "";
            txtBank.Text = "";
            txtBranch.Text = "";
            txtTkWord.Text = "";
            txtNom1.Text = "";
            txtF1Name.Text = "";
            txtMot1Name.Text = "";
            txtSpsName1.Text = "";
            txtRelation1.Text = "";
            txtPercnt1.Text = "";
            txtNom2.Text = "";
            txtF2Name.Text = "";
            txtMot2Name.Text = "";
            txtSpsName2.Text = "";
            txtRelation2.Text = "";
            txtPercnt2.Text = "";

            btnSave.Text = "Save";
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           // if (btnSave.Text=="Save")
            //{
                try
                {
                    aSingle.depositDate = Convert.ToDateTime(txtDate.Text.Trim());
                    aSingle.tdrSlNo = Convert.ToInt32(txtTdrSlNo.Text.Trim());
                    aSingle.accountNumber = Convert.ToInt32(txtAccNo.Text.Trim());
                    aSingle.clientName = txtName.Text.Trim();
                    aSingle.fatherName = txtFatherName.Text.Trim();
                    aSingle.motherName = txtMothersName.Text.Trim();
                    aSingle.spouseName = txtSpouseName.Text.Trim();
                    aSingle.DOB = Convert.ToDateTime(txtDob.Text.Trim());
                    aSingle.sex = ddlSex.SelectedValue.Trim();
                    aSingle.religion = txtReligion.Text.Trim();
                    aSingle.nationality = txtNationality.Text.Trim();
                    aSingle.id = ddlIdentity.SelectedValue.Trim();
                    aSingle.idNo = Convert.ToInt32(txtIdentityNo.Text.Trim());
                    aSingle.occupation = Convert.ToString(txtOccupation.Text.Trim());
                    aSingle.organization = txtOrganization.Text.Trim();
                    aSingle.designation = txtDesignation.Text.Trim();
                    aSingle.officeAddress = txtOfficeAdd.Text.Trim();
                    aSingle.permAddress = txtPermAdd.Text.Trim();
                    aSingle.phone = Convert.ToInt32(txtPhone.Text.Trim());
                    aSingle.mobile = Convert.ToInt32(txtmobile.Text.Trim());
                    aSingle.email = txtEmail.Text.Trim();
                    aSingle.fax = Convert.ToInt32(txtFax.Text.Trim());
                    aSingle.depAmount = Convert.ToInt32(txtDepAmt.Text.Trim());
                    aSingle.depTenure = Convert.ToInt32(txtTenure.Text.Trim());
                    aSingle.depDateIssue = Convert.ToDateTime(txtDateissue.Text.Trim());
                    aSingle.depDateMaturity = Convert.ToDateTime(txtDateMaturity.Text.Trim());
                    aSingle.cheqPoDDNo = Convert.ToInt32(txtPoDD.Text.Trim());
                    aSingle.cheqDate = Convert.ToDateTime(txtChqDate.Text.Trim());
                    aSingle.cheqBank = txtBank.Text.Trim();
                    aSingle.cheqBranch = txtBranch.Text.Trim();
                    aSingle.cheqTakaInWrd = txtTkWord.Text.Trim();
                    aSingle.nominee1 = txtNom1.Text.Trim();
                    aSingle.nominee1FatherName = txtF1Name.Text.Trim();
                    aSingle.nominee1MotherName = txtMot1Name.Text.Trim();
                    aSingle.nominee1SpouseName = txtSpsName1.Text.Trim();
                    aSingle.nominee1Relation = txtRelation1.Text.Trim();
                    aSingle.nominee1Percentage = Convert.ToInt32(txtPercnt1.Text.Trim());
                    aSingle.nominee2 = txtNom2.Text.Trim();
                    aSingle.nominee2FatherName = txtF2Name.Text.Trim();
                    aSingle.nominee2MotherName = txtMot2Name.Text.Trim();
                    aSingle.nominee2SpouseName = txtSpsName2.Text.Trim();
                    aSingle.nominee2Relation = txtRelation2.Text.Trim();
                    aSingle.nominee2Percentage = Convert.ToInt32(txtPercnt2.Text.Trim());

                    result = aSingleBll.Insert(aSingle);
                    if (result>0)
                    {
                       Clear();
                    }
                }
                catch (Exception exception)
                {
                    Label1.Text = exception.Message.ToString();
                }
            }
            //else
            //{
            //    try
            //    {
            //        aSingle.singleId = Convert.ToInt32(hfPkId.Value);

            //        aSingle.depositDate = Convert.ToDateTime(txtDate.Text);
            //        aSingle.tdrSlNo = Convert.ToInt16(txtTdrSlNo.Text);
            //        aSingle.accountNumber = Convert.ToInt16(txtAccNo.Text);
            //        aSingle.clientName = txtName.Text;
            //        aSingle.fatherName = txtFatherName.Text;
            //        aSingle.motherName = txtMothersName.Text;
            //        aSingle.spouseName = txtSpouseName.Text;
            //        aSingle.DOB = Convert.ToDateTime(txtDob.Text);
            //        aSingle.sex = ddlSex.SelectedValue;
            //        aSingle.religion = txtReligion.Text;
            //        aSingle.nationality = txtNationality.Text;
            //        aSingle.id = ddlIdentity.SelectedValue;
            //        aSingle.idNo = Convert.ToInt16(txtIdentityNo.Text);
            //        aSingle.occupation = txtOccupation.Text;
            //        aSingle.organization = txtOrganization.Text;
            //        aSingle.designation = txtDesignation.Text;
            //        aSingle.officeAddress = txtOfficeAdd.Text;
            //        aSingle.permAddress = txtPermAdd.Text;
            //        aSingle.phone = Convert.ToInt16(txtPhone.Text);
            //        aSingle.mobile = Convert.ToInt16(txtmobile.Text);
            //        aSingle.email = txtEmail.Text;
            //        aSingle.fax = Convert.ToInt16(txtFax.Text);
            //        aSingle.depAmount = Convert.ToInt16(txtDepAmt.Text);
            //        aSingle.depTenure = Convert.ToInt16(txtTenure.Text);
            //        aSingle.depDateIssue = Convert.ToDateTime(txtDateissue.Text);
            //        aSingle.depDateMaturity = Convert.ToDateTime(txtDateMaturity.Text);
            //        aSingle.cheqPoDDNo = Convert.ToInt16(txtPoDD.Text);
            //        aSingle.cheqDate = Convert.ToDateTime(txtChqDate.Text);
            //        aSingle.cheqBank = txtBank.Text;
            //        aSingle.cheqBranch = txtBranch.Text;
            //        aSingle.cheqTakaInWrd = txtTkWord.Text;
            //        aSingle.nominee1 = txtNom1.Text;
            //        aSingle.nominee1FatherName = txtF1Name.Text;
            //        aSingle.nominee1MotherName = txtMot1Name.Text;
            //        aSingle.nominee1SpouseName = txtSpsName1.Text;
            //        aSingle.nominee1Relation = txtRelation1.Text;
            //        aSingle.nominee1Percentage = Convert.ToInt16(txtPercnt1.Text);
            //        aSingle.nominee2 = txtNom2.Text;
            //        aSingle.nominee2FatherName = txtF2Name.Text;
            //        aSingle.nominee2MotherName = txtMot2Name.Text;
            //        aSingle.nominee2SpouseName = txtSpsName2.Text;
            //        aSingle.nominee2Relation = txtRelation2.Text;
            //        aSingle.nominee2Percentage = Convert.ToInt16(txtPercnt2.Text);

            //    }
            //    catch (Exception)
            //    {
                    
            //        throw;
            //    }
         //   }
        //}
    }
}