<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Home.master" AutoEventWireup="true" CodeFile="Danhmuckho.aspx.cs" Inherits="Content_Danhmuc_Danhmuckho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="danhmuckho_content">      
        <div id="dgv_danhmuckho" class="auto-style2" >
        <asp:GridView ID="dgvDmk" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White"
             BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="459px" AllowPaging="True" OnPageIndexChanging="dgvDmk_PageIndexChanging"
             OnSelectedIndexChanged="dgvDmk_SelectedIndexChanged" OnRowDataBound="dgvDmk_RowDataBound" CssClass="auto-style1">
            <Columns >
                <asp:TemplateField HeaderText="Mã Kho" >
                    
                    <ItemTemplate  >
                        <asp:Label  ID="lblStoreId" runat="server" Text='<%#Eval("Ma_Kho") %>'>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Tên Kho">
                    <ItemTemplate>
                        <asp:Label ID="lblStoreName" runat="server" Text='<%#Eval("Ten_Kho") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            
                <asp:TemplateField HeaderText="Operate">
                    <HeaderStyle Width="150" />
                    <ItemStyle Width="150" />
                    <ItemTemplate>
                        <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Edit" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtReceive"></asp:TextBox>
              <asp:HiddenField runat="server" ID="hid"></asp:HiddenField>
        </div>  
       
    </div>
</asp:Content>

