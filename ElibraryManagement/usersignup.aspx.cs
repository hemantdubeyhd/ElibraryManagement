using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Security.Cryptography; //for hashing password
using System.Text;

namespace ElibraryManagement
{
    public partial class usersignup : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
       }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('testing0.1');</script>");
            SignUpNewMember();
        }

        void SignUpNewMember()
        {
            //Response.Write("<script>alert('testing under function');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed) 
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO detailsMaster(firstname,surname,contact,email,suburb,postcode,petname,petbreed,petage,petgender,userid,password) values(@firstname,@surname,@contact,@email,@suburb,@postcode,@petname,@petbreed,@petage,@petgender,@userid,@password)", con);
                cmd.Parameters.AddWithValue("@firstname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@surname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
               
                cmd.Parameters.AddWithValue("@suburb", suburb.Text.Trim());
                cmd.Parameters.AddWithValue("@postcode", postcode.Text.Trim());
                cmd.Parameters.AddWithValue("@petname", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@petbreed", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@petage", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@petgender", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", TextBox9.Text.Trim());
               // cmd.Parameters.AddWithValue("@password", TextBox14.Text.Trim());
                string password = TextBox14.Text.Trim();  // Replace with user input

                // Generate a random salt
                byte[] salt = new byte[16];
                new RNGCryptoServiceProvider().GetBytes(salt);

                // Hash the password with the salt using SHA256
                byte[] hashBytes = new Rfc2898DeriveBytes(password, salt, 10000).GetBytes(32);

                // Combine the salt and hash bytes into a single string
                byte[] hashWithSaltBytes = new byte[48];
                Array.Copy(salt, 0, hashWithSaltBytes, 0, 16);
                Array.Copy(hashBytes, 0, hashWithSaltBytes, 16, 32);
                string hashWithSalt = Convert.ToBase64String(hashWithSaltBytes);
                cmd.Parameters.AddWithValue("@password", hashWithSalt);//testing hash and salt

                cmd.ExecuteNonQuery();
                con.Close();
               // Response.Write("<script>alert('testing');</script>");
                Response.Write("<script>alert('Sign Up Sucessfull, Go to User Login to Loging');</script>"); 
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exception');</script>");
                //Response.Write("<script>alert('" + ex.Message + "');</script>"); 
            }

        }
    }
}