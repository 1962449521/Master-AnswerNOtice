using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class dabiangongao : System.Web.UI.Page
{
    private const string ConnectionString = "Data Source=beta;user=DEGQUERY;password=degreedata_query_2013;";
    protected void Page_Load(object sender, EventArgs e)
    {
        OracleConnection conn = new OracleConnection(ConnectionString);
        try
        {
            conn.Open();
            OracleCommand cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM     (SELECT * FROM gsmis.v_degree_answerinfo  cc  where cc.学部 = '人文科学学部' ORDER BY cc.答辩时间 DESC)   WHERE ROWNUM <= 7   ORDER BY ROWNUM ASC";
            OracleDataReader odr = cmd.ExecuteReader();
            DataList1.DataSource = odr;
            DataList1.DataBind();
            odr.Close();

            cmd.CommandText = "SELECT * FROM     (SELECT * FROM gsmis.v_degree_answerinfo  cc where cc.学部 = '社会科学学部' ORDER BY cc.答辩时间 DESC)   WHERE ROWNUM <= 7   ORDER BY ROWNUM ASC";
            odr = cmd.ExecuteReader();
            DataList2.DataSource = odr;
            DataList2.DataBind();
            odr.Close();

            cmd.CommandText = "SELECT * FROM     (SELECT * FROM gsmis.v_degree_answerinfo  cc where cc.学部 = '理学部' ORDER BY cc.答辩时间 DESC)   WHERE ROWNUM <= 7   ORDER BY ROWNUM ASC";
            odr = cmd.ExecuteReader();
            DataList3.DataSource = odr;
            DataList3.DataBind();
            odr.Close();

            cmd.CommandText = "SELECT * FROM     (SELECT * FROM gsmis.v_degree_answerinfo  cc where cc.学部 = '工学部' ORDER BY cc.答辩时间 DESC)   WHERE ROWNUM <= 7   ORDER BY ROWNUM ASC";
            odr = cmd.ExecuteReader();
            DataList4.DataSource = odr;
            DataList4.DataBind();
            odr.Close();

            cmd.CommandText = "SELECT * FROM     (SELECT * FROM gsmis.v_degree_answerinfo  cc where cc.学部 = '信息科学学部' ORDER BY cc.答辩时间 DESC)   WHERE ROWNUM <= 7   ORDER BY ROWNUM ASC";
            odr = cmd.ExecuteReader();
            DataList5.DataSource = odr;
            DataList5.DataBind();
            odr.Close();

            cmd.CommandText = "SELECT * FROM     (SELECT * FROM gsmis.v_degree_answerinfo  cc where cc.学部 = '医学部' ORDER BY cc.答辩时间 DESC)   WHERE ROWNUM <= 7   ORDER BY ROWNUM ASC";
            odr = cmd.ExecuteReader();
            DataList6.DataSource = odr;
            DataList6.DataBind();
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