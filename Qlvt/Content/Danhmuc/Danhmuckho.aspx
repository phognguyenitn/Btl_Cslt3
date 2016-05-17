<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Home.master" AutoEventWireup="true" CodeFile="Danhmuckho.aspx.cs" Inherits="Content_Danhmuc_Danhmuckho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
          
            $("#btn_insertkho").click(function () {
                $("#danhmuc_insert").show();
            });
        });
</script>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="danhmuckho_content">      
        <div id="dgv_danhmuckho" class="auto-style2" >
            <asp:HiddenField runat="server" ID="hid"></asp:HiddenField>
            <asp:GridView ID="dgvDmk" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="7" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnPageIndexChanging="dgvDmk_PageIndexChanging" OnRowCancelingEdit="dgvDmk_RowCancelingEdit" OnRowDataBound="dgvDmk_RowDataBound" OnRowDeleting="dgvDmk_RowDeleting" OnRowEditing="dgvDmk_RowEditing" OnRowUpdating="dgvDmk_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Mã Kho">
                        <ItemTemplate>
                            <asp:Label ID="lblStoreId" runat="server"  Text='<%# Eval("Ma_Kho") %>' Width="100px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tên Kho">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTenkho" runat="server" Text='<%# Bind("Ten_Kho") %>' Width="100px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblStoreName" runat="server"  Text='<%# Eval("Ten_Kho") %>' Width="100px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                  <%--  Fix chieu dai cua--%>
                    <asp:TemplateField HeaderText="Operate">
                        <HeaderStyle Width="120" />
                        <ItemStyle Width="120" />
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update" Width="50px" />
                            <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" Width="50px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" Width="50px" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    Data Empty
                </EmptyDataTemplate>
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
            <asp:Button ID="btn_insertkho" runat="server" Text="Create" />
        </div>
        <div id="danhmuc_insert">
            <div></div>
        </div>
       
    </div>
</asp:Content>

