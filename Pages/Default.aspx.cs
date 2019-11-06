using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pages_Default : System.Web.UI.Page
{
    //String strConnString = "Data Source=LAPTOP-NV25J53T\\SQLEXPRESS;Initial Catalog=Account;Integrated Security=True";

    //string str, UserName, Password;

    //SqlCommand com;

    //SqlDataAdapter sqlda;

    //DataTable dt;

    //int RowCount;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        Random _rand = new Random();
        int i = _rand.Next(1, 4);
        Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
    }

    //protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NV25J53T\\SQLEXPRESS;Initial Catalog=Account;Integrated Security=True");
    //    SqlCommand cmd = new SqlCommand("select * from [User] where username=@TextBox1 and password=@TextBox2 ", con);
    //    cmd.Parameters.AddWithValue("@TextBox1", TextBox1.Text);
    //    cmd.Parameters.AddWithValue("@TextBox2", TextBox2.Text);
    //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    sda.Fill(dt);
    //    con.Open();
    //    int i = cmd.ExecuteNonQuery();
    //    con.Close();

    //    if (dt.Rows.Count > 0)
    //    {
    //        Response.Redirect("~/Management/Default.aspx");
    //    }
    //    else
    //    {
    //        Label1.Text = "Username and/or password is(are) incorrect(s)";
    //        Label1.ForeColor = System.Drawing.Color.Red;
    //    }

    //}
    //private bool ValidateUser(String username, String password)
    //{

    ////    bool status;
    ////    String mycon = "Data Source=LAPTOP-NV25J53T\\SQLEXPRESS;Initial Catalog=Account;Integrated Security=True";
    ////    SqlConnection scon = new SqlConnection(mycon);
    ////    String myquery = "select * from Information";
    ////    SqlCommand cmd = new SqlCommand();
    ////    cmd.CommandText = myquery;
    ////    cmd.Connection = scon;
    ////    SqlDataAdapter da = new SqlDataAdapter();
    ////    da.SelectCommand = cmd;
    ////    DataSet ds = new DataSet();
    ////    da.Fill(ds);
    ////    String uname;
    ////    String pass;

    ////    uname = ds.Tables[0].Rows[0]["Email"].ToString();
    ////    pass = ds.Tables[0].Rows[0]["Password"].ToString();
    ////    scon.Close();
    ////    if (uname == username && pass == password)
    ////    {
    ////        Session["username"] = uname;
    ////        status = true;
    ////    }
    ////    else
    ////    {
    ////        status = false;
    ////    }
    ////    return status;
    //}



    protected void LogInBtn_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NV25J53T\SQLEXPRESS;Initial Catalog=Account;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from [Information] where Email=@TextBox2 and Password=@TextBox1 ", con);
        cmd.Parameters.AddWithValue("@TextBox1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@TextBox2", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable(); 
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["Role"].ToString() == "Professor")
            {
                Response.Redirect("~/Pages/Admin.aspx");
            }
            else
            {
                Response.Redirect("~/Pages/Student.aspx");
            }
        }
        else
        {
            Label1.Text = "Username and/or password is(are) incorrect(s)";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-NV25J53T\\SQLEXPRESS;Initial Catalog=Account;Integrated Security=True");
        //SqlDataAdapter sda = new SqlDataAdapter("Select Role from Information Where'" + TextBox1.Text + "' and Password'" + TextBox2.Text + "'   ", con);
        //DataTable dt = new System.Data.DataTable();
        //sda.Fill(dt);
        //if (dt.Rows[0][0].ToString() == "Professor")
        //{
        //    string pageProf = "~Pages/Admin.aspx";
        //    Response.Write("<script> window.open('" + pageProf + "','_blank'); </script>");
        //}
        //else
        //{
        //    string pageStu = "~Pages/AboutUs.aspx";
        //    Response.Write("<script> window.open('" + pageStu + "','_blank'); </script>");
        //}

        //SqlConnection con = new SqlConnection(strConnString);

        //con.Open();

        //str = "Select * from Infomation";

        //com = new SqlCommand(str);

        //sqlda = new SqlDataAdapter(com.CommandText, con);

        //dt = new DataTable();

        //sqlda.Fill(dt);

        //RowCount = dt.Rows.Count;

        //for (int i = 0; i < RowCount; i++)

        //{

        //    UserName = dt.Rows[i]["Email"].ToString();

        //    Password = dt.Rows[i]["Password"].ToString();

        //    if (UserName == TextBox1.Text && Password == TextBox2.Text)

        //    {

        //        Session["Email"] = UserName;

        //        if (dt.Rows[i]["Role"].ToString() == "Admin")

        //            Response.Redirect("~/Pages/Admin.aspx");

        //        else if (dt.Rows[i]["Role"].ToString() == "FreeUser")

        //            Response.Redirect("~/Pages/Default.aspx");

        //        else if (dt.Rows[i]["Role"].ToString() == "Student")

        //            Response.Redirect("~/Pages/Default.aspx");

        //    }

        //    else

        //    {

        //        Label1.Text = "Invalid User Name or Password! Please try again!";

        //    }

        //}

    }
}