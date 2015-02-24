<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleReport.aspx.cs" Inherits="FAS_TDR.Report.SingleReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <strong>Single Deposit Report</strong>
    </div>
    <div align="center">
        <table>
            <tr>
                <td>Enter TDR No</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlTdrNo" runat="server" Height="16px" Width="237px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddlTdrNo" runat="server" ErrorMessage="***"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    
                <td align="left"><asp:Button ID="btnSingleReport" runat="server" Text="Show Report" 
                        onclick="btnSingleReport_Click" /></td></td>
            </tr>
             <tr>
                <td></td>
                <td>
                    
                </td>
                <td align="left">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    
    <div>
        <table>
           <tr>
               <td></td>
               <td><CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                       AutoDataBind="true" EnableDatabaseLogonPrompt="False" 
                       EnableParameterPrompt="False" ReuseParameterValuesOnRefresh="True" /></td>
               <td></td>
           </tr>
        </table>
    </div>
</asp:Content>
