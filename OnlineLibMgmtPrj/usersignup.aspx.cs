using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLibMgmtPrj
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Submit Functionality on click event
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into member_master_tbl (full_name, dob, contact_no, email, state, city, " +
                    "pincode, full_address, member_id, password, account_status) values " +
                    "(@fn, @dob, @cn, @eml, @st, @ct, @pc, @fa, @mid, @pass, @acstatus);", con);

                cmd.Parameters.AddWithValue("@fn", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@cn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@eml", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@st", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ct", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pc", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@fa", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@mid", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@acstatus", "pending");

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Signup Successful!! Proceed to Login...');</script>");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert(Error: '{ex.Message}');</script>");
            }
        }
    }
}