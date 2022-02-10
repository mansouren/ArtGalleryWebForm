<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageImages.aspx.cs" Inherits="ArtGallerypreview.Admin.ManageImages" %>

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
            height: 47px;
            width: 116px;
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
							<td align="left"><a href="ManageImages.aspx">
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
				<img border="0" src="../images/m-g-l.jpg" width="222" height="62"/>
                <img border="0" src="../images/space.jpg" width="60" height="1"/>
                </td>
			</tr>
			<tr>
				<td align="center" width="800">
			<br />
            <br />
			        <asp:MultiView ID="mvImages" runat="server" ActiveViewIndex="0">
                        <asp:View ID="vwList" runat="server">
                        <table width="100%">

                          <tr>
                        <td  align="right" >
                            <asp:Button ID="btnAddNew0" runat="server" OnClick="btnAddNew_Click" 
                                Text="افزودن نقاشی جدید" Height="36px"  />
                                <img border="0" src="../images/space.jpg" width="70" height="1" alt="space"/>
                                <br />
                                <br />
                        </td>
                        </tr>
                        <tr>
                        <td align="center" dir="rtl">
                            <asp:GridView ID="grdImages" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" CellPadding="8" DataKeyNames="ImageID" 
                                DataSourceID="dsImages" Font-Names="Verdana" ForeColor="#333333" 
                                GridLines="None" onrowcommand="grdImages_RowCommand" PageSize="4" 
                                Width="551px" >
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="FaImageTitle" HeaderText="عنوان فارسی نقاشی" 
                                        SortExpression="FaImageTitle" ItemStyle-Width="25%" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="EnImageTitle" HeaderText="عنوان انگلیسی نقاشی" 
                                        SortExpression="EnImageTitle" ItemStyle-Width="25%" ItemStyle-HorizontalAlign="Center" />
                                    <asp:TemplateField HeaderText="تصویر نقاشی" ItemStyle-Width="30%" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Image ID="imgIcon" runat="server" 
                                                ImageUrl='<%# GetThumbFilename(Eval("ImageUrl").ToString()) %>' /></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="دستورات"><ItemTemplate><asp:LinkButton ID="lbEdit" runat="server" 
                                                CommandArgument='<%# Eval("ImageID") %>' CommandName="DoEdit">ویرایش</asp:LinkButton>
                                                 <asp:LinkButton ID="lbDelete" runat="server" 
                                                CommandArgument='<%# Eval("ImageID") %>' CommandName="DoDelete">حذف</asp:LinkButton></ItemTemplate></asp:TemplateField>
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
                          <asp:SqlDataSource ID="dsImages" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ArtGallery %>" 
                              SelectCommand="sp_Images_SelectAll" SelectCommandType="StoredProcedure">
                          </asp:SqlDataSource>
                      </td>
                      </tr>
                       
                          </table>  
                               
                                
                            
                            
                        </asp:View>
                        <asp:View ID="vwEdit" runat="server">
                            <table style="border-style: ridge; border-color: #0000FF; width: 400px; direction:rtl;">
                                <tr>
                                    <td class="style2">
                                        عنوان فارسی نقاشی</td>
                                    <td class="style1">
                                        &nbsp;<asp:TextBox ID="txtFaImageTitle" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvFaImageTitle" runat="server" 
                                            ControlToValidate="txtFaImageTitle" Display="Dynamic" 
                                            ErrorMessage="لطفا عنوان فارسی نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        عنوان انگلیسی نقاشی</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtEnImageTitle" runat="server" style="margin-right:4px;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvEnImageTitle" runat="server" 
                                            ControlToValidate="txtEnImageTitle" Display="Dynamic" 
                                            ErrorMessage="لطفا عنوان انگلیسی نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        ابعاد</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtDimension" runat="server" style="margin-right:4px;"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="rfvDimension" runat="server" 
                                            ControlToValidate="txtDimension" Display="Dynamic" 
                                            ErrorMessage="لطفا ابعاد نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>--%>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        قیمت</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtPrice" runat="server" style="margin-right:4px;"></asp:TextBox>
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        عنوان انگلیسی تکنیک</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtTeknik" runat="server" style="margin-right:4px;"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="rfvTeknik" runat="server" 
                                            ControlToValidate="txtTeknik" Display="Dynamic" 
                                            ErrorMessage="لطفا عنوان انگلیسی تکنیک نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        عنوان فارسی تکنیک</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtFaTeknik" runat="server" style="margin-right:4px;"></asp:TextBox>
<%--                                        <asp:RequiredFieldValidator ID="rfvFaTeknik" runat="server" 
                                            ControlToValidate="txtFaTeknik" Display="Dynamic" 
                                            ErrorMessage="لطفا عنوان فارسی تکنیک نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        توضیحات به فارسی</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtFaStatus" runat="server" style="margin-right:4px;" 
                                            TextMode="MultiLine"></asp:TextBox>
                                       <%-- <asp:RequiredFieldValidator ID="rfvFaStatus" runat="server" 
                                            ControlToValidate="txtFaStatus" Display="Dynamic" 
                                            ErrorMessage="لطفا وضعیت فارسی نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        توضیحات به انگلیسی</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtEnStatus" runat="server" style="margin-right:4px;" 
                                            TextMode="MultiLine"></asp:TextBox>
                                   <%--     <asp:RequiredFieldValidator ID="rfvEnStatus" runat="server" 
                                            ControlToValidate="txtEnStatus" Display="Dynamic" 
                                            ErrorMessage="لطفا وضعیت انگلیسی نقاشی را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp; تصویر نقاشی</td>
                                    <td class="style1">
                                        &nbsp;
                                        <asp:FileUpload ID="fuImageUrl" runat="server" Width="250px" />
                                        <asp:CustomValidator ID="cvUploadedFileSize" runat="server" 
                                            ErrorMessage="یک تصویر باید انتخاب شده باشد و سایز فایل آپلودشده نمی تواند بیش از 300kb باشد." 
                                            ForeColor="Red" OnServerValidate="cvUploadedFileSize_ServerValidate">→</asp:CustomValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;
                                    </td>
                                    <td class="style1">
                                        &nbsp;
                                        <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="ثبت" />
                                        &nbsp;
                                        <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                                            Text="انصراف" CausesValidation="false" />

                                    </td>
                                </tr>
                          </table>
                           
                            <asp:ValidationSummary ID="vsProducts" runat="server" ForeColor="Red" style="direction:rtl;" />
                          
                            
                        </asp:View>
                    </asp:MultiView>
			

			</td>
		</tr>
        <tr>
        <td>
        <p style="height: 51px">
        </p>
        </td>
        </tr>
	</table>

</div>
    </form>
</body>
</html>
