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
    public partial class Physician : System.Web.UI.Page
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

                    SqlCommand sqlCmd = new SqlCommand("select * from specialization order by 2", sqlConn);
                    SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    SpecializationList.DataTextField = ds.Tables[0].Columns["specialization_name"].ToString();
                    SpecializationList.DataValueField = ds.Tables[0].Columns["specialization_id"].ToString();
                    SpecializationList.DataSource = ds.Tables[0];
                    SpecializationList.DataBind();
                    //LocationList.SelectedIndex = 1;

                    SqlCommand sqlCmd2 = new SqlCommand("select * from specialist order by 2", sqlConn);
                    SqlDataAdapter da2 = new SqlDataAdapter(sqlCmd2);
                    DataSet ds2 = new DataSet();
                    da2.Fill(ds2);
                    SpecialistList.DataTextField = ds2.Tables[0].Columns["specialist_name"].ToString();
                    SpecialistList.DataValueField = ds2.Tables[0].Columns["specialist_id"].ToString();
                    SpecialistList.DataSource = ds2.Tables[0];
                    SpecialistList.DataBind();
                    sqlConn.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            try
            {
                string specialist = SpecialistList.SelectedValue;
                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();
                String sql = "select s.specialist_name, sp.specialization_name, h.hospital_name, s.specialist_description, s.specialist_rating from specialist s, specialization sp, hospital h where s.hospital_id = h.hospital_id and sp.specialization_id = s.specialization_id and s.specialist_id = '" + specialist + "'";
                SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                specialist_name.Text = ds.Tables[0].Rows[0].Field<string>("specialist_name");
                specialization.Text = ds.Tables[0].Rows[0].Field<string>("specialization_name");
                hospital.Text = ds.Tables[0].Rows[0].Field<string>("hospital_name");
                description.Text = ds.Tables[0].Rows[0].Field<string>("specialist_description");
                rating.Text = Convert.ToString(ds.Tables[0].Rows[0].Field<Int32>("specialist_rating"));

                name_label.Visible = true;
                specialist_name.Visible = true;
                specialization_label.Visible = true;
                specialization.Visible = true;
                hospital_label.Visible = true;
                hospital.Visible = true;
                description_label.Visible = true;
                description.Visible = true;
                rating.Visible = true;
                rating_label.Visible = true;
                appointment_button.Visible = true;

                sqlConn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void SpecializationList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DropDownList s = sender as DropDownList;
                string specialization = s.SelectedValue;
                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();
                String sql = "select s.specialist_name, s.specialist_id, sp.specialization_name, sp.specialization_id from specialist s, specialization sp where s.specialization_id = sp.specialization_id and sp.specialization_id ='" + specialization + " 'order by specialist_name";
                SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                SpecialistList.DataTextField = ds.Tables[0].Columns["specialist_name"].ToString();
                SpecialistList.DataValueField = ds.Tables[0].Columns["specialist_id"].ToString();
                SpecialistList.DataSource = ds.Tables[0];
                SpecialistList.DataBind();

                sqlConn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void appointment_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("New_Appointment.aspx");
        }
    }
}