using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class more : System.Web.UI.Page
{
    private const string ConnectionString = "Data Source=beta;user=DEGQUERY;password=degreedata_query_2013;";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sltcdstr = Request.QueryString["keyword"];        
        Label1.Text = sltcdstr +"(all)";

        OracleConnection conn = new OracleConnection(ConnectionString);
        try
        {
            conn.Open();
            OracleCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from gsmis.v_degree_answerinfo  cc where cc.学部 = '" +  sltcdstr +"'";
            OracleDataReader odr = cmd.ExecuteReader();
            DataList1.DataSource = odr;
            DataList1.DataBind();
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