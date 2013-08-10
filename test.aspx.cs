using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OracleClient;


public partial class test : System.Web.UI.Page
{
    private const string ConnectionString = "Data Source=beta;user=DEGQUERY;password=degree_query_2013;";

    protected void Page_Load(object sender, EventArgs e)
    {
        GetData();
    }

    protected void GetData()
    {
        OracleConnection conn = new OracleConnection(ConnectionString);

        try
        {
            conn.Open();
            OracleCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from gsmis.v_degree_answerinfo";
            OracleDataReader odr = cmd.ExecuteReader();
            while (odr.Read())
            {
                Response.Write("学科、专业："+odr.GetOracleString(3).ToString() + "<br>");
                Response.Write("论文题目：" + odr.GetOracleString(7).ToString() + "<br>");
                Response.Write("学位申请人："+odr.GetOracleString(0).ToString() + "<br>");
                Response.Write("指导教师："+odr.GetOracleString(10).ToString() + "<br>");
                Response.Write("答辩委员会主席：" + odr.GetOracleString(11).ToString() + "<br>");
                Response.Write("答辩委员1：" + odr.GetOracleString(12).ToString() + "<br>");
                Response.Write("答辩委员2：" + odr.GetOracleString(13).ToString() + "<br>");
                Response.Write("答辩委员3：" + odr.GetOracleString(14).ToString() + "<br>");
                Response.Write("答辩委员4：" + odr.GetOracleString(15).ToString() + "<br>");
                Response.Write("答辩委员5：" + odr.GetOracleString(16).ToString() + "<br>");
                Response.Write("答辩委员6：" + odr.GetOracleString(17).ToString() + "<br>");
                Response.Write("答辩时间：" + odr.GetOracleString(8).ToString() + "<br>");
                Response.Write("答辩地点：" + odr.GetOracleString(9).ToString() + "<br>");

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

