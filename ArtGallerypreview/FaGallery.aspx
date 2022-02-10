<%@ Page Title="" Language="C#" MasterPageFile="~/FaRoot.Master" AutoEventWireup="true" CodeBehind="FaGallery.aspx.cs" Inherits="ArtGallerypreview.FaGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" type="text/css" href="Scripts/css/Imagehovering.css" runat="server" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%">
<tr>
<td align="right" height="90" valign="bottom"  >
				<img border="0" src="/images/p_gallery_l.gif" width="235" height="54" alt="PersianGallery" />
                <img border="0" src="/images/space.jpg" width="60" height="1" alt="space"/>
                
                </td>
</tr>

<tr>
<td align="right">
<br />
<p style="margin-right:50px;">
			<font color="#016874" >
						<span lang="AR-SA" dir="rtl" 
                style="font-size: 14pt; font-family: verdana;  text-align: justify; line-height:40px;">
			بازدیدکنندگانی که تمایل به خرید حضوری تابلو دارند میتوانند جهت 
			هماهنگی و هرگونه سوال در این رابطه با شماره تلفن 09121859109 تماس 
			حاصل نمایند.<br/>
						تابلو های خریداری شده دارای هزینه حمل و نقل نـبوده و 
						مبلغ قید شده برای هر تابلو قیمت قطعی و نهایی آن می باشد، 
						تنها خریدارانی که از خارج کشور اقدام به خرید نقاشی های 
						این گالری نمایند بر حسب محل سکونت مبلغی را جهت هزینه 
						پستی پرداخت خواهند نمود.</span></font></p>
</td>
</tr>

<tr>
<td>
<br />
 <div style="width:100%; margin-bottom:20px; " align="center" >
      <asp:DataList ID="dlImages" runat="server" DataKeyField="ImageID" 
         RepeatColumns="2" RepeatDirection="Horizontal">
       <ItemTemplate>
        <br />

        <table    cellpadding="10px" >

        <tr>

            <td   >
        
       
                <div class="jm-item second" >

	<div class="jm-item-wrapper"      >

		<div class="jm-item-image">

			
                <asp:Image ID="Image" runat="server" ImageUrl='<%# GetThumbFilename(Eval("ImageUrl").ToString()) %>'  />
                
            

			<div class="jm-item-description" >
            
			   <h5 style="font-family:Tahoma;" >
                <asp:Label ID="ImageTitleLabel" runat="server" Text='<%# Eval("FaImageTitle") %>' /><br />
                ابعاد: <asp:Label ID="Dimensionlbl" runat="server" Text='<%# Eval("Dimension") %>' /> سانتیمتر<br />
                قیمت:<asp:Label ID="Pricelbl" runat="server" Text='<%# Eval("Price") %>' /> ریال  <br />
                <asp:Label ID="Tekniklbl" runat="server" Text='<%# Eval("FaTeknik") %>' /><br />
                <asp:Label ID="Statuslbl" runat="server" Text='<%# Eval("FaStatus") %>' /></h5>
                    <div class="jm-item-button"><asp:HyperLink ID="hlImageUrl" runat="server" CssClass="pimage" NavigateUrl='<%# Eval("ImageUrl") %>'>
                نمایش
                </asp:HyperLink></div>
               
               <br />
              
			   
			</div>
            

		</div>
        
		<%--<div class="jm-item-title">Pizza Ristorante</div>--%>

	</div>

</div>

 

                </td>
                </tr>
                <tr>
                <td align="center">
              
                </td>
                </tr>
                
          </table>
       </ItemTemplate>
    </asp:DataList>
    

    
    <table>
    <tr>
    <td>
        <asp:Label ID="lblCurrentPage" runat="server"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
                  
     <asp:button id="cmdPrev" runat="server" text=" <<" OnClick="cmdPrev_Click"></asp:button>
     <asp:button id="cmdNext" runat="server" text=" >> " OnClick="cmdNext_Click"></asp:button>
    </td>
    </tr>
    </table>
    </div>

</td>
</tr>
</table>




      <script type="text/javascript">
          $(function () {
              $('.pimage').lightBox();
          });
    </script>

</asp:Content>
