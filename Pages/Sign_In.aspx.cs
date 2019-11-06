using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Pages_Sing_In : System.Web.UI.Page
{
    SqlCommand cdm = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=LAPTOP-NV25J53T\\SQLEXPRESS;initial catalog=Account; integrated Security=true";
        con.Open();
    }

    protected void CreateBtn_Click(object sender, EventArgs e)
    {
        SqlCommand cdm = new SqlCommand (@"insert into Information" + "(First_Name,Last_Name,Email,Gender,Address,Password,Confirm_Password,Phone,Zip_Code,Role)values(@First_Name,@Last_Name,@Email,@Gender,@Address,@Password,@Confirm_Password,@Phone,@Zip_Code,@Role)", con);
        cdm.Parameters.AddWithValue("@First_Name", TextBox1.Text);
        cdm.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
        cdm.Parameters.AddWithValue("@Email", TextBox3.Text);
        cdm.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
        cdm.Parameters.AddWithValue("@Address", TextBox4.Text);
        cdm.Parameters.AddWithValue("@Password", TextBox5.Text);
        cdm.Parameters.AddWithValue("@Confirm_Password", TextBox6.Text);
        cdm.Parameters.AddWithValue("@Phone", TextBox8.Text);
        cdm.Parameters.AddWithValue("@Zip_Code", TextBox7.Text);
        cdm.Parameters.AddWithValue("@Role", DropDownList2.SelectedItem.Value);
        cdm.ExecuteNonQuery();
        Label1.Text = "Your Account have been created";
    }

    //protected void TextBox5_TextChanged(object sender, EventArgs e)
    //{

    //}
}