<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageNews.aspx.cs" Inherits="ArtGallerypreview.Admin.ManageNews" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
       <meta http-equiv="Content-Language" content="en-us"/>

<meta name="keywords" content="Mahnaz Sharif Askari"/>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta content="MSHTML 6.00.2800.1106" name="GENERATOR"/>

<link id="Link1" href="~/Scripts/css/main.css" type="text/css" rel="stylesheet" runat="server"/>

 <link id="Link3" runat="server" href="~/Scripts/css/jquery.lightbox-0.5.css" rel="stylesheet"
  type="text/css" />

   <style type="text/css">
     .dlGalleryTable

    {

        border:double 1px #D9D9D9;
        
        width:150px;
        border-spacing:30px;

        text-align:left;

    }
    </style>

    <style type="text/css">
    .style 
    {
        width:400px;
        direction:rtl;
        
    }
    
              
            
        .style1
        {
            height: 35px;
        }
    
              
            
    </style>

<title>Mahnaz Sharif Askari</title>
</head>

<body style="background-color:#016874; margin-left:0; margin-right:0; margin-bottom:0; margin-top:10; direction:ltr; "  >
    <form id="form1" runat="server">
   <div align="center">
	<table border="0" width="1170" cellspacing="0" cellpadding="0">
		<tr>
			<td>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2" valign="top" align="right">
         <map name="FrontPageMap0" id="English Site" >
		<area shape="rect" coords ="128, 75, 281, 125" href ="../Biography.aspx" alt="EnglishLink"/></map>
		<img border="0" src="../images/p_cartop.jpg" width="913" height="157" alt="PCartop" usemap="#FrontPageMap0"/></td>
		<td rowspan="2" bgcolor="#FFFFFF" valign="top"><table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left" valign="top" colspan="2">
					<img border="0" src="../images/p_logo.jpg" width="258" height="290" alt="Plogo"/></td>
				</tr>
				<tr>
					<td align="left" valign="top" bgcolor="#FFFFFF">
					<img border="0" src="../images/p_ca1.jpg" width="117" height="353"></td>
					<td>
					<table border="0" width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td align="left">
                            <a href="ManageNews.aspx">
							<img border="0" src="../images/m_news.jpg" width="141" height="49"></a></td>
						</tr>
						<tr>
							<td align="left">
							<img border="0" src="../images/p_galery.gif" width="141" height="53"></td>
						</tr>
						<tr>
							<td align="left">
                            <a href="ManageImages.aspx">
							<img border="0" src="../images/m_gallery.jpg" width="141" height="51"></a></td>
						</tr>
						<tr>
							<td align="left">
							<img border="0" src="../images/p_articl.gif" width="141" height="51"></td>
						</tr>
						<tr>
							<td align="left">
							<asp:ImageButton ID="btnLogout" runat="server" ImageUrl="~/images/m_exit.jpg"
                                    Width="141" Height="51" onclick="btnLogout_Click"/>
                          </td>
						</tr><tr>
							<td align="left">
							<img border="0" src="../images/p_hom.gif" width="141" height="54"></td>
						</tr>

						<tr>
							<td align="left">
							<img border="0" src="../images/p_ca2.jpg" width="141" height="249"></td>
						</tr>
						<tr><td width="705">						
						</td></tr>
						</table>
					</td>					
				</tr>				
			</table>
			</td>
	</tr>
	<tr>
		<td width="207" bgcolor="#FFFFFF" valign="top">
		<img border="0" src="../images/p_carve.jpg" width="207" height="690"></td>
		<td bgcolor="#FFFFFF" valign="top">
		<table border="0" width="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td align="right">
				<img border="0" src="../images/l.gif" width="23" height="59" alt="1"/></td>
			</tr>
			<tr>
				<td align="right" height="90" valign="bottom">
				<img border="0" src="../images/m-n-l.jpg" width="209" height="62"/>
                <img border="0" src="../images/space.jpg" width="60" height="1"/>
                </td>
			</tr>
			<tr>
				<td align="center" width="800">
			<br />
            <br />
			        <asp:MultiView ID="mvNews" runat="server" ActiveViewIndex="0">
                        <asp:View ID="vwList" runat="server">
                        <table width="100%">

                          <tr>
                        <td  align="right" dir="rtl" >
                                <img border="0" src="../images/space.jpg" width="70" height="1" alt="space"/>
                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; لطفا برای افزودن خبر جدید ، خبر قبلی را ویرایش کنید. در صورت نداشتن خبر 
                                    جدید میتوانید کادر متن خبر را خالی&nbsp; بگذارید.</h4>
                                <br />
                                <br />
                        </td>
                        </tr>
                        <tr>
                        <td align="center" dir="rtl">
                            <asp:GridView ID="grdNews" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NewsID" 
                                DataSourceID="dsNews" Font-Names="Verdana" ForeColor="#333333" 
                                GridLines="None" onrowcommand="grdNews_RowCommand" PageSize="2" 
                                Width="546px"  >
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField HeaderText="عنوان خبر" DataField="NewsTitle" SortExpression="NewsTitle"
                                     ItemStyle-Width="20%" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="NewsText" HeaderText="متن خبر" 
                                        SortExpression="NewsText" ItemStyle-Width="60%" ItemStyle-HorizontalAlign="Center" />
                                    <asp:TemplateField HeaderText="دستورات" ItemStyle-HorizontalAlign="Center"  ><ItemTemplate ><asp:LinkButton ID="lbEdit" runat="server" 
                                                CommandArgument='<%# Eval("NewsID") %>' CommandName="DoEdit">ویرایش</asp:LinkButton> 
                                                </ItemTemplate></asp:TemplateField>
                                   
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </td>
                        </tr>
                      <tr>
                      <td style="height:10px;" >
                          <asp:SqlDataSource ID="dsNews" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ArtGallery %>" 
                              SelectCommand="sp_News_SelectAll" SelectCommandType="StoredProcedure">
                          </asp:SqlDataSource>
                      </td>
                      </tr>
                       
                          </table>  
                               
                                
                            
                            
                        </asp:View>
                        <asp:View ID="vwEdit" runat="server">
                            <table style="border-style: ridge; border-color: #0000FF; width: 400px; direction:rtl;">
                                <tr>
                                    <td >
                                        <h4>عنوان خبر</h4></td>
                                    <td  align="right">
                                        <asp:TextBox ID="txtNewsTitle" runat="server" Width="156px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="2">
                                        <h4>
                                            لطفا خبر مورد نظر را در کادر زیر وارد نمایید.</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="2" dir="rtl">
                                        <asp:TextBox ID="txtNewsText" runat="server" Height="80px" TextMode="MultiLine" 
                                            Width="331px"  ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="2">
                                    <br />
                                        &nbsp;
                                        <asp:Button ID="btnSave" runat="server" Text="ثبت خبر" Width="53px" 
                                            onclick="btnSave_Click" />&nbsp;
                                        <asp:Button ID="btnCancel" runat="server" Text="انصراف" 
                                            onclick="btnCancel_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1" colspan="2">
                                    </td>
                                </tr>
                          </table>
                           
                            
                        </asp:View>
                    </asp:MultiView>
			

			</td>
		</tr>
	</table>

</div>
    </form>
</body>
</html>





