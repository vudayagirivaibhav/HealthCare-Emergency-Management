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
    public partial class Helpline : System.Web.UI.Page
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

                    SqlCommand sqlCmd = new SqlCommand("select * from hospital order by 2", sqlConn);
                    SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    HospitalList.DataTextField = ds.Tables[0].Columns["hospital_name"].ToString();
                    HospitalList.DataValueField = ds.Tables[0].Columns["hospital_id"].ToString();
                    HospitalList.DataSource = ds.Tables[0];
                    HospitalList.DataBind();
                    //LocationList.SelectedIndex = 1;
                }

                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }

            }
        }

        protected void search_button_Click(object sender, EventArgs e)
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
                helpline_value.Text = ds.Tables[0].Rows[0].Field<string>("hospital_helpline");

                helpline_label.Visible = true;
                helpline_value.Visible = true;


                sqlConn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}