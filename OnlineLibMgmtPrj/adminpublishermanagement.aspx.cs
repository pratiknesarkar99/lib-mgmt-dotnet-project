using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLibMgmtPrj
{
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write($"<script>alert('Error: Publisher with same id exists');</script>");
            }
            else
            {
                addNewPublisher();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                updatePublisher();
            }
            else
            {
                Response.Write($"<script>alert('Error: Publisher doesnot exist');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                deletePublisher();
            }
            else
            {
                Response.Write($"<script>alert('Error: Publisher doesnot exist');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getPublisherById();
        }

        void getPublisherById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id='" +
                    TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sqlDataAdapter.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid publisher ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error Duplicate entry');</script>");
            }

        }

        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into publisher_master_tbl (publisher_id, publisher_name) values " +
                    "(@ai, @an);", con);

                cmd.Parameters.AddWithValue("@ai", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@an", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Added new Publisher...');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error Duplicate entry');</script>");
            }
        }

        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update publisher_master_tbl Set " +
                    "publisher_name = @an where publisher_id = '" + TextBox1.Text.Trim() + "';", con);

                cmd.Parameters.AddWithValue("@an", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Added updated Publisher...');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error Duplicate entry');</script>");
            }
        }

        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from publisher_master_tbl " +
                    "where publisher_id = '" + TextBox1.Text.Trim() + "';", con);

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Deleted updated Publisher...');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error entry not found ');</script>");
            }
        }

        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from publisher_master_tbl where publisher_id = '" +
                    TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                    return false;
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert(Error: '{ex.Message}');</script>");
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}