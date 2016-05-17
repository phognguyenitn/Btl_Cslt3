using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Content_Danhmuc_Danhmuckho : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=PHONG-PC;Initial Catalog=VATTU_DB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                FillGrid();
            }
        }
        catch (Exception)
        {
            
            
        }

    }

    void FillGrid()
    {
        try
        {
            conn.Open();           
            string strSelect = "select * from tb_Ma_Kho";
            SqlDataAdapter da  = new SqlDataAdapter(strSelect,conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvDmk.DataSource = dt;
            dgvDmk.DataBind(); 

        }
        catch (Exception)
        {
           
        }
    }

    protected void dgvDmk_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='pink';";
            e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
            e.Row.ToolTip = "Click last column for selecting this row.";
        }
    }
    protected void dgvDmk_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void dgvDmk_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        
        dgvDmk.PageIndex = e.NewPageIndex;
        FillGrid();
    }





    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow grow = btn.NamingContainer as GridViewRow;
        hid.Value = (grow.FindControl("lblStoreId") as Label).Text;
        txtReceive.Text = (grow.FindControl("lblStoreName") as Label).Text;
    }
}