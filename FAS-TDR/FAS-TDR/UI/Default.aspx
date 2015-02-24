<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="TDR._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1{
            width: 900px;
            background-color: #00bfff;
        }
        .style2 {
            width: 1000px;
            background-color: chocolate;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate" runat="server" >
    </asp:CalendarExtender>
    <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txtDob"  runat="server">
    </asp:CalendarExtender>
    <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtChqDate" runat="server">
    </asp:CalendarExtender>
    <div>
        <table>
            <tr>
                <td  style="background-color: #00bfff" class="style1">
                   <strong>Details Of Individual Deposit</strong> 
                </td>
            </tr>
        </table>
        </div>
    <div>
            <table>
            <tr>
                <td>Date</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtDate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                <td>TDR SL No.</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtTdrSlNo" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtTdrSlNo" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>

                <td>Account No.</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAccNo" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAccNo" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                 <br/>                   
            </tr>
            
        </table>
    </div>
    <div>
            <table>
            <tr>
                <td> </td>
                <td></td>
                <td><asp:CheckBox ID="chkNew" AutoPostBack="True" runat="server" Text="New Client" 
                        oncheckedchanged="chkNew_CheckedChanged" /></td>
                <td><asp:CheckBox ID="chkExisting" AutoPostBack="True" runat="server" Text="Existing Client" 
                        oncheckedchanged="chkExisting_CheckedChanged" /></td>
            </tr>
            </table>
            </div>
    <div>
        <table>
            <tr>
                <td style="background-color: #00bfff" class="style1">
                    <strong>Name of product(Please tick the appropriate box)</strong>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:CheckBox ID="chkThreeMonth" Text="FFIL Three Months Profit Scheme" AutoPostBack="True" runat="server" /></td>
                    <td></td>
                    <td></td>
                <td>
                    <asp:CheckBox ID="chkMonthlyProfit" Text="FFIL Monthly Profit Earner Scheme" AutoPostBack="True" runat="server" /></td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox3" Text="FFIL Semi Annual Profit Scheme" AutoPostBack="True" runat="server" /></td>
                    <td></td>
                    <td></td>
                <td>
                    <asp:CheckBox ID="CheckBox4" Text="FFIL Quarterly Profit Earner Scheme" AutoPostBack="True" runat="server" /></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><asp:Button ID="btnSave" Width="80" CausesValidation="False" runat="server" 
                            Text="Save" onclick="btnSave_Click" /></td>
                    <td></td>
                    <td><asp:Button ID="btnRefresh" CausesValidation="False" runat="server" 
                            Text="Refresh" onclick="btnRefresh_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox5" Text="FFIL Annual Profit Scheme" runat="server" /></td>
                    <td></td>
                    <td></td>
                <td>
                    <asp:CheckBox ID="CheckBox6" Text="FFIL Half-Yearly Profit Earner Scheme" AutoPostBack="True" runat="server" /></td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox7" Text="FFIL Cumulative Profit Scheme" AutoPostBack="True" runat="server" /></td>
                    <td></td>
                    <td></td>
                <td>
                    <asp:CheckBox ID="CheckBox8"  Text="FFIL Double Money Program" AutoPostBack="True" runat="server" /></td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" Text="FFIL Earn Ahead Deposit Scheme" AutoPostBack="True" runat="server" /></td>
                    <td></td>
                    <td></td>
                <td>
                    <asp:CheckBox ID="CheckBox2"  Text="FFIL Triple Money Program" AutoPostBack="True" runat="server" /></td>
            </tr>
        </table>
    </div>
        <div class="style1" >
        <table>
            <tr>
                <td><strong>Type of Deposit</strong></td>
                <td>:</td>
                <td>
                    <asp:CheckBox ID="CheckBox9" Text="01.Single" AutoPostBack="True" runat="server" /></td>
                <td>
                    <asp:CheckBox ID="CheckBox10" Text="02.Jointly" AutoPostBack="True" runat="server" /></td>
                <td>
                    <asp:CheckBox ID="CheckBox11" Text="03.Institution"  AutoPostBack="True" runat="server" /></td>
                <td>
                    <asp:CheckBox ID="CheckBox12" Text="04.Bank" AutoPostBack="True" runat="server" /></td>
                <td>
                    <asp:CheckBox ID="CheckBox13" Text="05.NFGI" AutoPostBack="True" runat="server" /></td>
                <td>
                    <asp:CheckBox ID="CheckBox14" Text="06.Corporate" AutoPostBack="True" runat="server" /></td>
                <td> 
                    <asp:CheckBox ID="CheckBox15" Text="07.Others" AutoPostBack="True" runat="server" /></td>
                <td>
                    <asp:CheckBox ID="CheckBox16" Text="08. Jointly" AutoPostBack="True" runat="server" /></td>
            </tr>
        </table>
        </div>
        <br/>
        <div class="style1">
            <strong>Details of Both Depositor's</strong>
        </div>
        <br/>
        <div class="style1">
            <strong>Details of First Depositor's</strong>
        </div>
        <br/>
        <div>
            <table>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                      
                       <td>Father's Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtFatherName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtFatherName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>  
                        
                </tr>
                <tr>
                    <td>Mother's Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtMothersName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtMothersName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        
                         <td>Spouse Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtSpouseName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtSpouseName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                   
                    <td>Religion</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtReligion" Width="200px"  runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtReligion" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        
                        
                        <td>DOB</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtDob" Width="200px"  runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtDob" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                   <td>Sex</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="ddlSex" Width="200px" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ddlSex" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   
                    <td>Nationality</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtNationality" Width="200px"  runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtNationality" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Identity Documents</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="ddlIdentity" Width="200px" runat="server">
                            <asp:ListItem>National ID</asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>
                            <asp:ListItem>Driving License</asp:ListItem>
                            <asp:ListItem>TIN</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                    <td>No.</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtIdentityNo" Width="200px" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtIdentityNo" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                     <tr>
                    <td>Occupation</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtOccupation" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="txtOccupation" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    <td>Organization</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtOrganization" Width="200px" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtOrganization" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Designation</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txtDesignation" Width="200px" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="txtDesignation" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Office Address</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txtOfficeAdd" Height="80px" Width="300px" runat="server" 
                                TextMode="MultiLine"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="txtOfficeAdd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
            </table>
        </div>
        <br/>
        <div class="style1">
            Contact Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Permanent Address
        </div>
        <br/>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPermAdd" Height="50px" Width="500px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                </table>
                </div>
        <div>
                <table>
                <tr>
                    <td>Phone</td>
                    <td>:</td>
                     <td>
                         <asp:TextBox ID="txtPhone" Width="150" runat="server"></asp:TextBox></td>
                    <td>Mobile</td>
                     <td>:</td>
                    <td>
                        <asp:TextBox ID="txtmobile" Width="150" runat="server"></asp:TextBox></td>
                     <td>Email</td>
                    <td>:</td>
                     <td>
                         <asp:TextBox ID="txtEmail" Width="150" runat="server"></asp:TextBox></td>
                    <td>Fax</td>
                     <td>:</td>
                    <td>
                        <asp:TextBox ID="txtFax" Width="150" runat="server"></asp:TextBox></td>
                </tr>
                </table>
        </div>
        <br/>
        <div class="style1"> Details of Joint Depositor </div>
        <br/>
        <div>
            <table>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJointName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="txtJointName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                      
                       <td>Father's Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJFatherName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="txtJFatherName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>  
                        
                </tr>
                <tr>
                    <td>Mother's Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJMotherName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="txtJMotherName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        
                         <td>Spouse Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJSpouseName" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="txtJSpouseName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                   
                    <td>Religion</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJReligion" Width="200px"  runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="txtJReligion" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        
                        
                        <td>DOB</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJDob" Width="200px"  runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="txtJDob" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                   <td>Sex</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="ddlJSex" Width="200px" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ControlToValidate="ddlJSex" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   
                    <td>Nationality</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtJNationality" Width="200px"  runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="txtJNationality" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Identity Documents</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="ddlJIdentity" Width="200px" runat="server">
                            <asp:ListItem>National ID</asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>
                            <asp:ListItem>Driving License</asp:ListItem>
                            <asp:ListItem>TIN</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                    <td>No.</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtjNo" Width="200px" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="txtjNo" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                     <tr>
                    <td>Occupation</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJOccupation" Width="200px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ControlToValidate="txtJOccupation" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    <td>Organization</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtJOrganization" Width="200px" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator27" ControlToValidate="txtJOrganization" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Designation</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txtJDesignation" Width="200px" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ControlToValidate="txtJDesignation" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Office Address</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txtJOffAdd" Height="80px" Width="300px" runat="server" 
                                TextMode="MultiLine"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ControlToValidate="txtJOffAdd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
            </table>
        </div>
        <br/>
        <div class="style1"> Details of Institutational/Corporate Deposit</div>
        <div>
            
            <table>
                <tr>
                    <td>Name of Institute</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtInstitute" Width="200" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ControlToValidate="txtInstitute" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   
                   </tr>
               <tr>                   
                    <td>Type Of Institute</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="ddlInstitute" Width="200" runat="server">
                        </asp:DropDownList>
                   </td>
                   </tr>
                   
                   <tr>
                       <td>Nature of Business</td>
                       <td>:</td>
                       <td>
                           <asp:TextBox ID="txtNature" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                       <td>TIN No.</td>
                       <td>:</td>
                       <td><asp:TextBox ID="txtTin" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                   </tr>
                    <tr>
                       <td>Name of 1st Signatories</td>
                       <td>:</td>
                       <td>
                           <asp:TextBox ID="txt1stSig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                       <td>Designation</td>
                       <td>:</td>
                       <td><asp:TextBox ID="txt1stDesig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Name of 2nd Signatories</td>
                       <td>:</td>
                       <td>
                           <asp:TextBox ID="txt2ndSig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                       <td>Designation</td>
                       <td>:</td>
                       <td><asp:TextBox ID="txt2ndDesig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Name of 3st Signatories</td>
                       <td>:</td>
                       <td>
                           <asp:TextBox ID="txt3rdSig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                       <td>Designation</td>
                       <td>:</td>
                       <td><asp:TextBox ID="txt3rdDesig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Name of 4st Signatories</td>
                       <td>:</td>
                       <td>
                           <asp:TextBox ID="txt4thSig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                       <td>Designation</td>
                       <td>:</td>
                       <td><asp:TextBox ID="txt4thDesig" Width="200" runat="server"></asp:TextBox></td>
                       <td></td>
                   </tr>

                   

            </table>

        </div>
        <br/>
        <div class="style1"> Registered Address</div>
        <br/>
                <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtRegAdd" Height="50px" Width="500px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                </table>
                </div>
        <div>
                <table>
                <tr>
                    <td>Phone</td>
                    <td>:</td>
                     <td>
                         <asp:TextBox ID="txtRegPhone" Width="150" runat="server"></asp:TextBox></td>
                    <td>Mobile</td>
                     <td>:</td>
                    <td>
                        <asp:TextBox ID="txtREgMobile" Width="150" runat="server"></asp:TextBox></td>
                     <td>Email</td>
                    <td>:</td>
                     <td>
                         <asp:TextBox ID="txtRegEmail" Width="150" runat="server"></asp:TextBox></td>
                    <td>Fax</td>
                     <td>:</td>
                    <td>
                        <asp:TextBox ID="txtRegFax" Width="150" runat="server"></asp:TextBox></td>
                </tr>
                </table>
        </div>
        <br/>
        <div class="style1">Deposit Details</div>
        <div>
            <table>
                <tr>
                 <td>Deposit Amount</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtDepAmt" Width="200" runat="server"></asp:TextBox></td>
                 <td></td>
                 <td>Tenure</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtTenure" Width="200" runat="server"></asp:TextBox></td>
                 <td></td>
                 
                </tr>
                <tr>
                 <td>Date of Issue</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtDateissue" Width="200" runat="server"></asp:TextBox></td>
                 <td></td>
                 <td>Date of Maturity</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtDateMaturity" Width="200" runat="server"></asp:TextBox></td>
                 <td></td>
                </tr>
            </table>
        </div>
        <br/>
        <div class="style1">
            Cheque Details
        </div>
        <div>
            <table>
                <tr>
                 <td>Cheque/PO No./DD No</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtPoDD" Width="200" runat="server"></asp:TextBox></td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ControlToValidate="txtPoDD" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                 <td>Date</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtChqDate" Width="200" runat="server"></asp:TextBox></td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ControlToValidate="txtChqDate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                 <td>Bank</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtBank" Width="200" runat="server"></asp:TextBox></td>
                     <td></td>
                    
                </tr>
                <tr>
                     <td>Branch</td>
                     <td>:</td>
                     <td>
                         <asp:TextBox ID="txtBranch" Width="200" runat="server"></asp:TextBox></td>
                         <td></td>
                 <td>Taka In Words</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox ID="txtTkWord" Width="200" runat="server"></asp:TextBox></td>
                 <td></td>
                </tr>
            </table>
        </div>
        
        <div class="style1">Details of Nominee's Information</div>
        <div>
            <table>
                <tr>
                    <td >Nominee-1</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtNom1" Width="200" runat="server"></asp:TextBox></td>
                    <td></td>
                    <td>Nominee-2</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtNom2" Width="200" runat="server"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Father's Name</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtF1Name" Width="200" runat="server"></asp:TextBox></td>
                    <td></td>
                    <td>Father's Name</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtF2Name" Width="200" runat="server"></asp:TextBox></td>
                    <td></td>
               </tr>
               <tr>
                    <td>Mother's Name</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtMot1Name" Width="200" runat="server"></asp:TextBox></td>
                    <td></td>
                    <td>Mother's Name</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtMot2Name" Width="200" runat="server"></asp:TextBox></td>
                    <td></td>
               </tr>
               <tr>
                   <td>Spouse's Name</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtSpsName1" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
                   <td>Spouse's Name</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtSpsName2" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
               </tr>
                <tr>
                   <td>Relationship</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtRelation1" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
                   <td>Relationship</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtRelation2" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
               </tr>
                <tr>
                   <td>Percentage(%)</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtPercnt1" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
                   <td>Percentage(%)</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtPercnt2" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
               </tr>
                <tr>
                   <td>Signature</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtSig1" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
                   <td>Signature</td>
                   <td>:</td>
                   <td><asp:TextBox ID="txtSig2" Width="200" runat="server"></asp:TextBox></td>
                   <td></td>
               </tr>
               <tr>
                    <td>Photograph of Nominee 1</td>
                    <td>:</td>
                    <td>
                        <asp:FileUpload ID="imgUpload1" Width="200" runat="server" /></td>
                    <td></td>
                    <td>Photograph of Nominee 2</td>
                    <td>:</td>
                    <td>
                        <asp:FileUpload ID="imgUpload2" Width="200" runat="server" /></td>
               </tr>
               </table>
        </div>
    </asp:Content>
