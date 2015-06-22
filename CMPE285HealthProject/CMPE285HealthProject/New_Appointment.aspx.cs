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
    public partial class New_Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                    SqlConnection sqlConn = new SqlConnection(sqlConnString);
                    sqlConn.Open();
                    SqlCommand sqlCmd = new SqlCommand("select * from specialist order by 2", sqlConn);
                    SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    SpecialistList.DataTextField = ds.Tables[0].Columns["specialist_name"].ToString();
                    SpecialistList.DataValueField = ds.Tables[0].Columns["specialist_id"].ToString();
                    SpecialistList.DataSource = ds.Tables[0];
                    SpecialistList.DataBind();
                    //LocationList.SelectedIndex = 1;

                }

                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }

        protected void submit_button_Click(object sender, EventArgs e)
        {
            try
            {

                Guid newGUID = Guid.NewGuid();

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

                    String sqluser1 = "select user_id from users where user_name = '" + username_text.Text + "'";
                    SqlCommand sqlCmd1 = new SqlCommand(sqluser1, sqlConn);
                    string user = sqlCmd1.ExecuteScalar().ToString();

                    String sqlspecialist = "select specialist_id from specialist where specialist_id = '" + SpecialistList.SelectedValue + "'";
                    SqlCommand sqlCmd2 = new SqlCommand(sqlspecialist, sqlConn);
                    string specialist = sqlCmd2.ExecuteScalar().ToString();

                    String sqlspecialist2 = "select specialist_name from specialist where specialist_id = '" + SpecialistList.SelectedValue + "'";
                    SqlCommand sqlCmd3 = new SqlCommand(sqlspecialist2, sqlConn);
                    string specialistname = sqlCmd3.ExecuteScalar().ToString();

                    string appointmentday = date_text.Text;
                    string appointmenttime = time_text.Text;

                    String sql = "insert into appointment (appointment_id, user_id, specialist_id, appointment_day, appointment_time, appointment_status) values (@aid, @uid, @sid, @aday, @atime, @ustatus)";
                    SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                    sqlCmd.Parameters.AddWithValue("@aid", newGUID.ToString());
                    sqlCmd.Parameters.AddWithValue("@uid", user);
                    sqlCmd.Parameters.AddWithValue("@sid", specialist);
                    sqlCmd.Parameters.AddWithValue("@aday", date_text.Text);
                    sqlCmd.Parameters.AddWithValue("@atime", time_text.Text);
                    sqlCmd.Parameters.AddWithValue("@ustatus", "New");
                    sqlCmd.ExecuteNonQuery();

                    sqlConn.Close();

                    string to_mail = username_text.Text;
                    string from_mail = "cmpe285health@gmail.com";
                    string subject = "Appointment Request Submitted";
                    string body = "Your request for appointment on  "+ appointmentday + " ,"+appointmenttime+" has been submitted to doctor  "+ specialistname + " . ";

                    string result = SendMail(to_mail, from_mail, subject, body);

                    Response.Redirect("Booking.aspx");
                }

                else
                {
                    Response.Redirect("SignUp.aspx");
                }
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
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

        protected void change_button_Click(object sender, EventArgs e)
        {

            date_text.Text = "";
            time_text.Text = "";
            username_text.Text = "";
            contact_text.Text = "";

        }
    }
}