using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Drama : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "")
        {
            Label1.Text = "Please select the Book";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label1.Text = "";
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}