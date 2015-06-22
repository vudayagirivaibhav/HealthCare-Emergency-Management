using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CMPE285HealthProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button_Click1(object sender, EventArgs e)
        {
            string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
            SqlConnection sqlConn = new SqlConnection(sqlConnString);
            sqlConn.Open();
            String sqluser = "select count(*) from users where user_name = '" + username_text.Text + "'";
            SqlCommand sqlCmdUser = new SqlCommand(sqluser, sqlConn);
            int temp = Convert.ToInt32(sqlCmdUser.ExecuteScalar().ToString());
            sqlConn.Close();
            if (temp == 1)
            {
                sqlConn.Open();
                string sqlpass = "select user_pass from users where user_name = '" + username_text.Text + "'";
                SqlCommand sqlCmdPass = new SqlCommand(sqlpass, sqlConn);
                string password = sqlCmdPass.ExecuteScalar().ToString().Replace(" ", "");
                sqlConn.Close();

                if (password == password_text.Text)
                {
                    Response.Redirect("New_Appointment.aspx");
                }
                else
                {
                    error_label.Visible = true;
                }
            }

            else
            {
                error_label.Visible = true;
            }
        }

        protected void signup_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }


    }
}