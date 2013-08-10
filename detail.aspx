﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>详细内容</title>

    <script  language="javascript" src="Jquery/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var $$ = function (id) { return "string" == typeof id ? document.getElementById(id) : id; };
     </script>
    <style type="text/css">     
        body{	background:  white url('img/body_bg.gif') repeat;font-family: "宋体","黑体";font-weight:bolder;
	           color:#fdfd02; font-size:14px;	text-decoration: none;	text-align:center;	margin:0 auto; vertical-align:middle;}
	    table,TABLE{	border-spacing:0px; }
        #container{ background:  white url('img/detail_bg.jpg') no-repeat;width:1000px; 
                    height:700px; top:50%; left:50%;margin:-350px 0 0 -500px; 
                    overflow:hidden;  position: absolute; border:4px solid #ccc; }
         span[id^="Label"],#dabianweiyuan{ position:absolute; left:312px; color:#fdfd02; }
         #Label0{top:166px;}
        #Label1{ top:203px; }#Label2{ top:239px; text-align:left;}#Label3{ top:274px; }#Label4{ top:310px; }#Label5{ top:345px; }
        #dabianweiyuan{top:374px; height:153px; width:388px;  text-align:left;  }            
        #Label6{ top:555px; }#Label7{ top:589px; }
        tr[id^="weiyuan"]{height:25px;}
        #xtable{ position:absolute; }
        </style>
</head>
<body>
    <div id = "container">
        <asp:Label ID="Label0" runat="server" Text="培养单位"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="学科专业"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="论文题目论文题目论文题目论文题目论文题目论文题目论文题目论文题目论文题目论文题目"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="学位申请人"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="指导教师"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="答辩委员会主席"></asp:Label>
        <div id = "dabianweiyuan">
            <table id = "xtable" style="vertical-align: middle; " cellpadding="0" cellspacing="0"  >
                <tr><td>
                    <table  cellpadding="0" cellspacing="0">
                        <tr id = "weiyuan1"><td><asp:Label ID="xLabel51" runat="server" ></asp:Label></td></tr>
                        <tr id = "weiyuan2"><td><asp:Label ID="xLabel52" runat="server" ></asp:Label></td></tr>
                        <tr id = "weiyuan3"><td><asp:Label ID="xLabel53" runat="server" ></asp:Label></td></tr>
                        <tr id = "weiyuan4"><td><asp:Label ID="xLabel54" runat="server" ></asp:Label></td></tr>
                        <tr id = "weiyuan5"><td><asp:Label ID="xLabel55" runat="server"></asp:Label></td></tr>
                        <tr id = "weiyuan6"><td><asp:Label ID="xLabel56" runat="server"></asp:Label></td></tr>                    
                    </table>                
                </td></tr>
            </table>
        </div>
        <script  type = "text/javascript" >      
        //隐藏没有内容的委员列,并使整个版面垂直居中 
          if ($("#xLabel51").html() == "") $("#weiyuan1").css({ "height": "0px" });
          if ($("#xLabel52").html() == "") $("#weiyuan2").css({ "height": "0px" });
          if ($("#xLabel53").html() == "") $("#weiyuan3").css({ "height": "0px" });
          if ($("#xLabel54").html() == "") $("#weiyuan4").css({ "height": "0px" });
          if ($("#xLabel55").html() == "") $("#weiyuan5").css({ "height": "0px" });
           if ($("#xLabel56").html() == "") $("#weiyuan6").css({ "height": "0px" });          
           var height = $("#xtable").height();
           $("#xtable").css({ "top": (153 - height) / 2 });
           var tm = $("#Label2").html();
           if (tm.length > 26) {
               tm = tm.substring(0, 26) + "<br />" + tm.substring(26);
               $("#Label2").html(tm);
               $("#Label2").css("top","228px");
           } 
           </script>
        <asp:Label ID="Label6" runat="server" Text="答辩时间"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="答辩地点"></asp:Label>
    </div>
    
</body>

</html>
