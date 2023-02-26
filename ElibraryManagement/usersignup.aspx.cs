using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class usersignup : System.Web.UI.Page
    {

        string strcon = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('testing');</script>");
            SignUpNewMember();
        }

        void SignUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == System.Data.ConnectionState.Closed) 
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO detailsMaster(firstname,surname,contact,email,suburb,postcode,petname,petage,petgender,userid,password) values(@firstname,@surname,@contact,@email,@suburb,@postcode,@petname,@petage,@petgender,@userid,@password)", con);
                cmd.Parameters.AddWithValue("@firstname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@surname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
               
                //cmd.Parameters.AddWithValue("@suburb", suburb.Text.Trim());
               // cmd.Parameters.AddWithValue("@postcode", postcode.Text.Trim());

                cmd.Parameters.AddWithValue("@petname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@petage", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@petgender", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox3.Text.Trim());
     

            }
            catch (Exception ex)
            { Console.WriteLine(ex.Message); }

        }
    }
}