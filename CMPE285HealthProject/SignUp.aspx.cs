using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace CMPE285HealthProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_button_Click(object sender, EventArgs e)
        {
            try
            {

                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();
                String sql = "select count(*) from users where user_name = '" + email_text.Text + "'";
                SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                int temp = Convert.ToInt32(sqlCmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    already_user_label.Text = "User with this E-mail address already exists. Try with other E-mail address.";
                    already_user_label.ForeColor = System.Drawing.Color.Red;
                    email_text.Text = "";
                }

                else
                {
                    Guid newGUID = Guid.NewGuid();
                    String sql2 = "insert into users (user_id, user_name, user_pass, user_role) values (@uid, @uname, @upass, @urole)";
                    SqlCommand sqlCmd2 = new SqlCommand(sql2, sqlConn);
                    sqlCmd2.Parameters.AddWithValue("@uid", newGUID.ToString());
                    sqlCmd2.Parameters.AddWithValue("@uname", email_text.Text);
                    sqlCmd2.Parameters.AddWithValue("@upass", password_text.Text);
                    sqlCmd2.Parameters.AddWithValue("@urole", "client");
                    sqlCmd2.ExecuteNonQuery();

                    String sql1 = "insert into user_information (user_id, user_mail, user_first_name, user_last_name, user_address, user_city, user_state, user_zip, user_mobile, user_home_phone) values (@usid, @umail, @ufirst, @ulast, @uaddress, @ucity, @ustate, @uzip, @umobile, @uhome)";
                    SqlCommand sqlCmd1 = new SqlCommand(sql1, sqlConn);
                    sqlCmd1.Parameters.AddWithValue("@usid", newGUID.ToString());
                    sqlCmd1.Parameters.AddWithValue("@umail", email_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@ufirst", first_name_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@ulast", last_name_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@uaddress", address_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@ucity", city_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@ustate", state_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@uzip", zip_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@umobile", mobile_text.Text);
                    sqlCmd1.Parameters.AddWithValue("@uhome", home_phone_text.Text);
                    sqlCmd1.ExecuteNonQuery();

                    sqlConn.Close();

                    string to_mail = email_text.Text;
                    string from_mail = "cmpe285health@gmail.com";
                    string subject = "Registration Successful";
                    string body = "Thank you for your registration with HEM(HealthCare Emergency Management). This mail confirms that you have successfully registered with us. We look forward to help you in case of any medical emergencies in future.";

                    string result = SendMail(to_mail, from_mail, subject, body);

                    Response.Redirect("Login.aspx");
                }


            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void reset_button_Click(object sender, EventArgs e)
        {

            first_name_text.Text = "";
            last_name_text.Text = "";
            email_text.Text = "";
            password_text.Text = "";
            confirm_password_text.Text = "";
            address_text.Text = "";
            city_text.Text = "";
            state_text.Text = "";
            zip_text.Text = "";
            mobile_text.Text = "";
            home_phone_text.Text = "";
        }

        public string SendMail(string toList, string from, string subject, string body)
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
            string msg = string.Empty;
            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(toList);
                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("cmpe285health", "1234567890cmpe285");

                smtpClient.Send(message);
                msg = "Successful<BR>";
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return msg;
        }
    }
}