using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class detail : System.Web.UI.Page
{
    private const string ConnectionString = "Data Source=beta;user=DEGQUERY;password=degreedata_query_2013;";

    protected void Page_Load(object sender, EventArgs e)
    {
        string sltcdstr = Request.QueryString["title"]; 
        
        OracleConnection conn = new OracleConnection(ConnectionString);

        try
        {
            conn.Open();
            OracleCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from gsmis.v_degree_answerinfo cc where cc.论文题目 = '"+ sltcdstr  +"'";
            OracleDataReader odr = cmd.ExecuteReader();
            while (odr.Read())
            {
                Label0.Text = odr.GetOracleString(5).ToString(); 
                Label1.Text = odr.GetOracleString(3).ToString();
                Label2.Text =odr.GetOracleString(7).ToString();
                Label3.Text = odr.GetOracleString(0).ToString();
                Label4.Text = odr.GetOracleString(10).ToString();
                Label5.Text = odr.GetOracleString(18).ToString()==""?"":
                                odr.GetOracleString(11).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(25).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(18).ToString();
                
                
                xLabel51.Text = odr.GetOracleString(19).ToString() == "" ? "" :
                                odr.GetOracleString(12).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(26).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(19).ToString();
                xLabel52.Text = odr.GetOracleString(20).ToString() == "" ? "" :
                                odr.GetOracleString(13).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(27).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(20).ToString();
                xLabel53.Text = odr.GetOracleString(21).ToString() == "" ? "" :
                                odr.GetOracleString(14).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(28).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(21).ToString();
                xLabel54.Text = odr.GetOracleString(22).ToString() == "" ? "" :
                                odr.GetOracleString(15).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(29).ToString() + "&nbsp;&nbsp;" +
                                odr.GetOracleString(22).ToString();
                if (odr.GetOracleString(16).ToString() != "Null")
                    xLabel55.Text = odr.GetOracleString(23).ToString() == "" ? "" :
                                    odr.GetOracleString(16).ToString() + "&nbsp;&nbsp;" +
                                    odr.GetOracleString(30).ToString() + "&nbsp;&nbsp;" +
                                    odr.GetOracleString(23).ToString();
                else
                    xLabel55.Text = "";
                if (odr.GetOracleString(17).ToString() != "Null")
                    xLabel56.Text = odr.GetOracleString(24).ToString() == "" ? "" :
                                    odr.GetOracleString(17).ToString() + "&nbsp;&nbsp;" +
                                    odr.GetOracleString(31).ToString() + "&nbsp;&nbsp;" +
                                    odr.GetOracleString(24).ToString();
                else
                    xLabel56.Text = "";
                
                Label6.Text = odr.GetOracleString(8).ToString();
                Label7.Text = odr.GetOracleString(9).ToString();   
            }
            odr.Close();
           
            
            
        }
        catch (Exception ee)
        {
            Response.Write(ee.Message);
        }
        finally
        {
            conn.Close();
        }
    }

}

