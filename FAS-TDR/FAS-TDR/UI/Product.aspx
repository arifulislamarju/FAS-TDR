<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="TDR.UI.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <table>
        <tr>
            <td>Product Name</td>
            <td>:</td>
            <td><asp:TextBox ID="txtProduct" runat="server" Height="25px" Width="252px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" 
                    ControlToValidate="txtProduct" ErrorMessage="***"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td></td>
            <td></td>
            <td><asp:Button ID="btnProduct" CausesValidation="False" runat="server" Text="Save" Width="61px" 
                    onclick="btnProduct_Click" /></td>
            <td></td>
        </tr>
         <tr>
            <td></td>
            <td></td>
            <td><asp:HiddenField ID="hfPkId" runat="server" /></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>
                <asp:GridView ID="grvProducts" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Height="96px" 
                    
                    onrowediting="grvProducts_RowEditing">
                    <Columns>
                    <asp:TemplateField HeaderText="ID" Visible="True">
                    <ItemTemplate>
                    <asp:Label ID="lblPKID" runat="server" Text='<%#Eval("productId") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name" Visible="True">
                    <ItemTemplate>
                    <asp:Label ID="lblProducts" runat="server" Text='<%#Eval("productName") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                     <ItemTemplate>
                    <asp:LinkButton CausesValidation="False" runat="server" ID="lnkEdit" CommandName="Edit" Text="Edit"></asp:LinkButton>
                     </ItemTemplate>
                    </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Delete" Visible="False">
                    <ItemTemplate>
                    <asp:LinkButton ID="lnkDelete" CausesValidation="False"  runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
                     </ItemTemplate>
                     </asp:TemplateField>  
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
            <td></td>
        </tr>
    </table>
</div>
</asp:Content>
