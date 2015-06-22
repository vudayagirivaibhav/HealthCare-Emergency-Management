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
    public partial class Ambulance : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();

                SqlCommand sqlCmd = new SqlCommand("select distinct provider_city from ambulance_provider order by provider_city", sqlConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                LocationList.DataTextField = ds.Tables[0].Columns["provider_city"].ToString();
                LocationList.DataValueField = ds.Tables[0].Columns["provider_city"].ToString();
                LocationList.DataSource = ds.Tables[0];
                LocationList.DataBind();
                //LocationList.SelectedIndex = 1;

                SqlCommand sqlCmd2 = new SqlCommand("select * from ambulance_provider order by provider_name", sqlConn);
                SqlDataAdapter da2 = new SqlDataAdapter(sqlCmd2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                ProviderList.DataTextField = ds2.Tables[0].Columns["provider_name"].ToString();
                ProviderList.DataValueField = ds2.Tables[0].Columns["provider_id"].ToString();
                ProviderList.DataSource = ds2.Tables[0];
                ProviderList.DataBind();
                sqlConn.Close();
            }
        }

        protected void Get_Provider(object sender, EventArgs e)
        {

            DropDownList s = sender as DropDownList;
            string location = s.SelectedValue;
            string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
            SqlConnection sqlConn = new SqlConnection(sqlConnString);
            sqlConn.Open();
            String sql = "select * from ambulance_provider where provider_city = '" + location + " ' order by provider_name";
            SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ProviderList.DataTextField = ds.Tables[0].Columns["provider_name"].ToString();
            ProviderList.DataValueField = ds.Tables[0].Columns["provider_id"].ToString();
            ProviderList.DataSource = ds.Tables[0];
            ProviderList.DataBind();

            sqlConn.Close();

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            try
            {
                string provider = ProviderList.SelectedValue;
                string sqlConnString = ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                SqlConnection sqlConn = new SqlConnection(sqlConnString);
                sqlConn.Open();
                String sql = "select * from ambulance_provider where provider_id = '" + provider + "'";
                SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ambulancename_value.Text = ds.Tables[0].Rows[0].Field<string>("provider_name");
                provideraddress_value.Text = ds.Tables[0].Rows[0].Field<string>("provider_address");
                providerphoneno_value.Text = ds.Tables[0].Rows[0].Field<string>("provider_phone");

                ambulancename_label.Visible = true;
                ambulancename_value.Visible = true;
                provideraddress_label.Visible = true;
                provideraddress_value.Visible = true;
                providerphoneno_label.Visible = true;
                providerphoneno_value.Visible = true;

                sqlConn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }
    }
}
