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
    public partial class Hospital : Page
    {
        string location = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string location = LocationList.SelectedValue;
                try
                {
                    string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                    SqlConnection sqlConn = new SqlConnection(sqlConnString);
                    sqlConn.Open();

                    SqlCommand sqlCmd = new SqlCommand("select distinct hospital_city from hospital order by hospital_city", sqlConn);
                    SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    LocationList.DataTextField = ds.Tables[0].Columns["hospital_city"].ToString();
                    LocationList.DataValueField = ds.Tables[0].Columns["hospital_city"].ToString();
                    LocationList.DataSource = ds.Tables[0];
                    LocationList.DataBind();
                    //LocationList.SelectedIndex = 1;

                    SqlCommand sqlCmd2 = new SqlCommand("select * from hospital order by 2", sqlConn);
                    SqlDataAdapter da2 = new SqlDataAdapter(sqlCmd2);
                    DataSet ds2 = new DataSet();
                    da2.Fill(ds2);
                    HospitalList.DataTextField = ds2.Tables[0].Columns["hospital_name"].ToString();
                    HospitalList.DataValueField = ds2.Tables[0].Columns["hospital_id"].ToString();
                    HospitalList.DataSource = ds2.Tables[0];
                    HospitalList.DataBind();
                    sqlConn.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }

        protected void Get_Hospital(object sender, EventArgs e)
        {
            try
            {
                DropDownList s = sender as DropDownList;
                string location = s.SelectedValue;
                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();
                String sql = "select * from hospital where hospital_city = '" + location + " 'order by hospital_name";
                SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                HospitalList.DataTextField = ds.Tables[0].Columns["hospital_name"].ToString();
                HospitalList.DataValueField = ds.Tables[0].Columns["hospital_id"].ToString();
                HospitalList.DataSource = ds.Tables[0];
                HospitalList.DataBind();

                sqlConn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            try
            {
                string hospital = HospitalList.SelectedValue;
                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();
                String sql = "select * from hospital where hospital_id = '" + hospital + "'";
                SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                description.Text = ds.Tables[0].Rows[0].Field<string>("hospital_description");
                address.Text = ds.Tables[0].Rows[0].Field<string>("hospital_address");
                phone1.Text = ds.Tables[0].Rows[0].Field<string>("hospital_phone1");
                phone2.Text = ds.Tables[0].Rows[0].Field<string>("hospital_phone2");
                HyperLink1.Text = ds.Tables[0].Rows[0].Field<string>("hospital_website");
                HyperLink1.NavigateUrl = ds.Tables[0].Rows[0].Field<string>("hospital_website");
                rating.Text = Convert.ToString(ds.Tables[0].Rows[0].Field<decimal>("hospital_rating"));

                description.Visible = true;
                description_label.Visible = true;
                address.Visible = true;
                address_label.Visible = true;
                phone1.Visible = true;
                phone_label.Visible = true;
                phone2.Visible = true;
                website_label.Visible = true;
                HyperLink1.Visible = true;
                rating.Visible = true;
                rating_label.Visible = true;

                sqlConn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }


        protected void get_direction_Click(object sender, EventArgs e)
        {
            string hospital = HospitalList.SelectedValue;
            string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
            SqlConnection sqlConn = new SqlConnection(sqlConnString);
            sqlConn.Open();
            String sql = "select hospital_address from hospital where hospital_id = '" + hospital + "'";
            SqlCommand sqlCmdUser = new SqlCommand(sql, sqlConn);
            hidden_text.Text = sqlCmdUser.ExecuteScalar().ToString();
            String str = hidden_text.Text;
            hospital_location.Value = str;
        }


    }
}