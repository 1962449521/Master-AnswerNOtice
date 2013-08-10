<%@ Page Language="C#" AutoEventWireup="true" CodeFile="more.aspx.cs" Inherits="more" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>更多</title>
    <link href ="brief.css" rel ="Stylesheet" type ="text/css" />
    <script type="text/javascript">
        var $$ = function (id) { return "string" == typeof id ? document.getElementById(id) : id; };
     </script>
    <style type="text/css"> .content{ height:auto;}</style>
</head>
<body>
<div id = "biggestcontainer">
    <div id = "banner">
    </div><!-- end of banner -->
    <div id = "maincontent">        
        <div id ="gongao" class="gongao">
            <div id = "title" class="title"><img src = " img/sakura.png" height = "20px" width = "20px" style = "margin-right:10px; " align = " bottom"alt=" "/> 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
            <div id = "content" class="content">
              <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList1"  runat="server">                    
                        <ItemTemplate>
                         <div id="rcd4"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table1"   CssClass = "  table" runat="server" >
                                <asp:TableRow  CssClass = " row ">
                                    
                                    <asp:TableCell   CssClass = " cell cell_studentID"><img  src="img/icon-list.png" class="icon" alt = ""  /></asp:TableCell>
                                    <asp:TableCell   CssClass = " cell cell_personName"><%#Eval("学位申请人")%></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_paperTitle"><%#Eval("论文题目")%></a></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_address"  ><span class ="sx"><%#Eval("答辩地点")%></span> </asp:TableCell>
                                    <asp:TableCell  CssClass = " cell cell_date"><%#Eval("答辩时间", "{0:yyyy-MM-dd HH:mm }")%></asp:TableCell>
                                </asp:TableRow>               	
                            </asp:Table>
                            </div>
                           
                        </ItemTemplate>
                    </asp:DataList>                
            </div>
            
        </div><!-- end of gongao-->
        

    </div><!-- end of maincontainer -->    
</div><!-- end of biggestcontainer -->
<div id = "footer">
        <p>版权所有武汉大学研究生院     地址：湖北 武昌 珞珈山        邮编：430072</p>
    </div><!-- end of footer -->
</body>

</html>
