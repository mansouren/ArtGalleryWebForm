<%@ Page Title="" Language="C#" MasterPageFile="~/EnRoot.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="ArtGallerypreview.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link id="Link1" rel="Stylesheet" type="text/css" href="Scripts/css/Imagehovering.css" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table width="100%">
<tr>
<td align="left" height="90" valign="bottom">
				<img border="0" src="images/gal-l.jpg" width="235" height="54" alt="PersianGallery"/>
                <img border="0" src="/images/space.jpg" width="60" height="1" alt="space"/>
                
                </td>
</tr>
<tr>
<td>
<br />
<br />
 <div style="width:100%; margin-bottom:20px; " align="center" >
      <asp:DataList ID="dlImages" runat="server" DataKeyField="ImageID" 
         RepeatColumns="2" RepeatDirection="Horizontal" 
             RepeatLayout="Table">
       <ItemTemplate>
        <br />

        <table cellpadding = "5px"  >

        <tr>

            <td>
                      <div class="jm-item second">

	<div class="jm-item-wrapper">

		<div class="jm-item-image">

			
                <asp:Image ID="Image" runat="server" ImageUrl='<%# GetThumbFilename(Eval("ImageUrl").ToString()) %>'     />
                
            

			<div class="jm-item-description">

			   <h5  style="font-family:Tahoma; ">
                <asp:Label ID="ImageTitleLabel" runat="server" Text='<%# Eval("EnImageTitle") %>' /><br />
                Dimension: <asp:Label ID="Dimensionlbl" runat="server" Text='<%# Eval("Dimension") %>' /> cm<br />
                Price:<asp:Label ID="Pricelbl" runat="server" Text='<%# Eval("Price") %>' /> Rial  <br />
                <asp:Label ID="Tekniklbl" runat="server" Text='<%# Eval("EnTeknik") %>' /><br />
                <asp:Label ID="Statuslbl" runat="server" Text='<%# Eval("EnStatus") %>' /></h5>
                
			    <div class="jm-item-button"><asp:HyperLink ID="hlImageUrl" runat="server" CssClass="pimage" NavigateUrl='<%# Eval("ImageUrl") %>'>
                View
                </asp:HyperLink></div>
			</div>
            

		</div>
        
		<%--<div class="jm-item-title">Pizza Ristorante</div>--%>

	</div>
    </div>
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
              <asp:button id="cmdNext" runat="server" text=" << " OnClick="cmdNext_Click"></asp:button>
    
     <asp:button id="cmdPrev" runat="server" text=" >> " OnClick="cmdPrev_Click"></asp:button>
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
