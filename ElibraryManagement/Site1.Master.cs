using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != null)
                {

                    LinkButton1.Visible = false; //User loging link button
                    LinkButton2.Visible = false; //User Signup link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //Hello User link button
                    LinkButton7.Text = "Hello " + Session["user"];



                }
                else
                {

                    LinkButton1.Visible = true; //User loging link button
                    LinkButton2.Visible = true; //User Signup link button
                    LinkButton3.Visible = false; //logout link button
                    LinkButton7.Visible = false; //Hello User link button
                }

              /*  if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //User loging link button
                    LinkButton2.Visible = true; //User Signup link button
                    LinkButton3.Visible = false; //logout link button
                    LinkButton7.Visible = false; //Hello User link button

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //User loging link button
                    LinkButton2.Visible = false; //User Signup link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //Hello User link button
                    LinkButton7.Text = "Hello " + Session["user"].ToString();
                }*/
            }
            catch (Exception ex) 
            {
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}