<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleDeposit.aspx.cs" Inherits="TDR.UI.SingleDeposit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=4.1.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        <style type="text/css">
        .style1{
            width: 900px;
            background-color: #00bfff;
        }
            .style2
            {
                width: 88px;
            }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager> 
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate" runat="server" >
    </asp:CalendarExtender>
    <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txtDob"  runat="server">
    </asp:CalendarExtender>
    <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtChqDate" runat="server">
    </asp:CalendarExtender>
    <asp:CalendarExtender ID="CalendarExtender4" TargetControlID="txtDateissue" runat="server">
    </asp:CalendarExtender>
    <asp:CalendarExtender ID="CalendarExtender5" TargetControlID="txtDateMaturity" runat="server">
    </asp:CalendarExtender>
    <div align="center" class="style1">
        <table>
            <tr>
                <td>
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

    <br/>
         <div align="center" class="style1">
            <strong>Details of Single Depositor</strong>
        </div>
        <br/>
        <div align="center" class="style1">
            <strong>Details of Depositor</strong>
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
                    
                    
            </table>
        </div>
        <div>
            <table>
                <tr>
                        <td class="style2">Office Address</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtOfficeAdd" Height="80px" Width="512px" runat="server" 
                                TextMode="MultiLine"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="txtOfficeAdd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    
                    </tr>
            </table>
        </div>
        <br/>
        
         <div align="center" class="style1">
            <strong>Contact Details</strong>
        </div>

        <div>
            Contact Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Permanent Address
        </div>
        <br/>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPermAdd" Height="50px" Width="500px" TextMode="MultiLine" runat="server"></asp:TextBox>
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
        <div align="center" class="style1">
        <strong>Deposit Details</strong>
        </div>
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
        
         <div align="center" class="style1">
        <strong>Cheque Details</strong>
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
        
         <div align="center" class="style1">
        <strong>Details of Nominee's Information</strong>
        </div>
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
               </table>
        </div>
        <div></div>
        <div>
            <table>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;</td>
                    <td><asp:Button ID="btnSave" runat="server" Text="Save" Height="31px" 
                            Width="128px" onclick="btnSave_Click" /></td>
                    <td></td>
                </tr>
                </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td><asp:HiddenField ID="hfPkId"  runat="server" /></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td></td>
                    <td>
                    <asp:Label ID="Label1" Width="876px" runat="server" style="margin-left: 0px"></asp:Label></td>
                    <td></td>
                </tr>
            </table>
        </div>
</asp:Content>
