<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnswerNotice.aspx.cs" Inherits="dabiangongao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>答辩公告</title>
     <script  language="javascript" src="Jquery/jquery-1.4.2.min.js" type="text/javascript"></script>
     <script type="text/javascript">
         var $$ = function (id) { return "string" == typeof id ? document.getElementById(id) : id; };
     </script>
    <link href ="brief.css" rel ="Stylesheet" type ="text/css" />

</head>
<body>
<div id = "biggestcontainer">
    <div id = "banner">
    </div><!-- end of banner -->
    <div id = "maincontent">
        <div id ="gongao_1" class="gongao">
            <div id = "title_1" class="title"> </div>
            <div id = "content_1" class="content">
                    <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList1"  runat="server">                    
                        <ItemTemplate >
                            <div id="rcd1"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table5"   CssClass = "  table" runat="server"  >
                                <asp:TableRow  CssClass = " row "  >
                                    
                                    <asp:TableCell   CssClass = " cell cell_studentID"><img  src="img/icon-list.png" class="icon" alt = ""  /></asp:TableCell>
                                    <asp:TableCell   CssClass = " cell cell_personName"><%#Eval("学位申请人")%></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_paperTitle"><%#Eval("论文题目")%></a></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_address"  ><span class ="sx"><%#Eval("答辩地点")%></span></asp:TableCell>
                                    <asp:TableCell  CssClass = " cell cell_date"><%#Eval("答辩时间", "{0:yyyy-MM-dd HH:mm }")%></asp:TableCell>
                                </asp:TableRow>               	
                            </asp:Table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>                
            </div>
            <div id = "more_1" class = "more"><a href="more.aspx?keyword=人文科学学部">---------->因篇幅限制,该栏目只显示此学部的部分最新记录,查看该学部的全部记录,请点击该链接<----------</a></div>
        </div><!-- end of gongao_1 -->
        <script type ="text/javascript">
             if ($("#content_1 .cell_studentID").length <= 5) $("#more_1").css({ "display": "none" }); //如果没有超过五条记录,隐藏更多链接            
        </script>

        <div id ="gongao_2" class="gongao">
            <div id = "title_2" class="title"> </div>
            <div id = "content_2" class="content">
                    <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList2"  runat="server">                    
                        <ItemTemplate>
                        <div id="rcd2"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table5"   CssClass = "  table" runat="server" >
                                <asp:TableRow  CssClass = " row ">
                                    
                                    <asp:TableCell   CssClass = " cell cell_studentID"><img  src="img/icon-list.png" class="icon" alt = ""  /></asp:TableCell>
                                    <asp:TableCell   CssClass = " cell cell_personName"><%#Eval("学位申请人")%></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_paperTitle"><%#Eval("论文题目")%></a></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_address"  ><span class ="sx"><%#Eval("答辩地点")%></span></asp:TableCell>
                                    <asp:TableCell  CssClass = " cell cell_date"><%#Eval("答辩时间", "{0:yyyy-MM-dd HH:mm }")%></asp:TableCell>
                                </asp:TableRow>               	
                            </asp:Table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>                
            </div>
            <div id = "more_2" class = "more"><a href="more.aspx?keyword=社会科学学部">---------->因篇幅限制,该栏目只显示此学部的部分最新记录,查看该学部的全部记录,请点击该链接<----------</a></div>
        </div><!-- end of gongao_2 -->
        <script type ="text/javascript">
             if ($("#content_2 .cell_studentID").length <= 5) $("#more_2").css({ "display": "none" }); //如果没有超过五条记录,隐藏更多链接            
        </script>

	    <div id ="gongao_3" class="gongao">
            <div id = "title_3" class="title"> </div>
            <div id = "content_3" class="content">
                    <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList3"  runat="server">                    
                        <ItemTemplate>
                        <div id="rcd3"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table5"   CssClass = "  table" runat="server" >
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
            <div id = "more_3" class = "more"><a href="more.aspx?keyword=理学部">---------->因篇幅限制,该栏目只显示此学部的部分最新记录,查看该学部的全部记录,请点击该链接<----------</a></div>
        </div><!-- end of gongao_3 -->
        <script type ="text/javascript">
             if ($("#content_3 .cell_studentID").length <= 5) $("#more_3").css({ "display": "none" }); //如果没有超过五条记录,隐藏更多链接            
        </script>

	    <div id ="gongao_4" class="gongao">
            <div id = "title_4" class="title"> </div>
            <div id = "content_4" class="content">
                    <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList4"  runat="server">                    
                        <ItemTemplate>
                        <div id="rcd4"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table5"   CssClass = "  table" runat="server" >
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
            <div id = "more_4" class = "more"><a href="more.aspx?keyword=工学部">---------->因篇幅限制,该栏目只显示此学部的部分最新记录,查看该学部的全部记录,请点击该链接<----------</a></div>
        </div><!-- end of gongao_4 -->
        <script type ="text/javascript">
             if ($("#content_4 .cell_studentID").length <= 5) $("#more_4").css({ "display": "none" }); //如果没有超过五条记录,隐藏更多链接            
        </script>

	    <div id ="gongao_5" class="gongao">
            <div id = "title_5" class="title"> </div>
            <div id = "content_5" class="content">
                    <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList5"  runat="server">                    
                        <ItemTemplate>
                        <div id="rcd5"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table5"   CssClass = "  table" runat="server" >
                                <asp:TableRow  CssClass = " row ">
                                    
                                    <asp:TableCell   CssClass = " cell cell_studentID"><img  src="img/icon-list.png" class="icon" alt = ""  /></asp:TableCell>
                                    <asp:TableCell   CssClass = " cell cell_personName"><%#Eval("学位申请人")%></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_paperTitle"><%#Eval("论文题目")%></asp:TableCell>
                                     <asp:TableCell   CssClass = " cell cell_address"  ><span class ="sx"><%#Eval("答辩地点")%></span></asp:TableCell>
                                    <asp:TableCell  CssClass = " cell cell_date"><%#Eval("答辩时间", "{0:yyyy-MM-dd HH:mm }")%></asp:TableCell>
                                </asp:TableRow>               	
                            </asp:Table>
                            
                        </div>
                        </ItemTemplate>
                    </asp:DataList>                
            </div>
            <div id = "more_5" class = "more"><a href="more.aspx?keyword=信息科学学部">---------->因篇幅限制,该栏目只显示此学部的部分最新记录,查看该学部的全部记录,请点击该链接<----------</a></div>
        </div><!-- end of gongao_5 -->
        <script type ="text/javascript">
             if ($("#content_5 .cell_studentID").length <= 5) $("#more_5").css({ "display": "none" }); //如果没有超过五条记录,隐藏更多链接            
        </script>

	<div id ="gongao_6" class="gongao">
            <div id = "title_6" class="title"> </div>
            <div id = "content_6" class="content">
                    <table class = "table"><tr class ="tr"><td class="td_studentID "></td>
                                <td class ="cell_personName " >学位申请人</td>
                                <td class = "cell_paperTitle ">论文题目</td>
                                <td class = "cell_address ">答辩地点</td>
                                <td class = "cell_date td">答辩时间</td></tr></table>
                
                    <asp:DataList ID="DataList6"  runat="server">                    
                        <ItemTemplate>
                        <div id="rcd6"  style = "border-top:1px dashed  gray; "
                                        onmouseover = "this.style.backgroundColor = '#fda9c3'" 
                                        onmouseout =  "this.style.backgroundColor = ''"
                                        onclick = "window.open('detail.aspx?title=<%#Eval("论文题目")%>')"
                                        title = "点击进入详细信息页面">
                             <asp:Table ID="Table5"   CssClass = "  table" runat="server" >
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
            <div id = "more_6" class = "more"><a href="more.aspx?keyword=医学部">---------->因篇幅限制,该栏目只显示此学部的部分最新记录,查看该学部的全部记录,请点击该链接<----------</a></div>
        </div><!-- end of gongao_6 -->
        <script type ="text/javascript">
             if ($("#content_6 .cell_studentID").length <= 5) $("#more_6").css({ "display": "none" }); //如果没有超过五条记录,隐藏更多链接            
        </script>

    </div><!-- end of maincontainer -->
    
</div><!-- end of biggestcontainer -->
<div id = "footer">
        <p>版权所有武汉大学研究生院     地址：湖北 武昌 珞珈山        邮编：430072</p>
    </div><!-- end of footer -->
</body>
<script type ="text/javascript">
    
    (function () {
        $$("title_1").innerHTML=$$("title_2").innerHTML=$$("title_3").innerHTML
            =$$("title_4").innerHTML=$$("title_5").innerHTML=$$("title_6").innerHTML
                ="<img src = \" img\/sakura.png\" height = \"20px\" width = \"20px\" style = \"margin-right:10px; \" align = \" bottom\"alt=\" \"/>";
        $$("title_1").innerHTML += "人文科学学部";
        $$("title_2").innerHTML += "社会科学学部";
        $$("title_3").innerHTML += "理学部";
        $$("title_4").innerHTML += "工学部";
        $$("title_5").innerHTML += "信息科学学部";
        $$("title_6").innerHTML += "医学部";
    })();
</script>
</html>
