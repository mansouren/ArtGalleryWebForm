<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ArtGallerypreview.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >

<head>
<meta http-equiv="Content-Language" content="fa">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>مهناز شریف عسگری</title>

<style type="text/css">
           body{
    font-family:arial
}
 
.clear {
    clear:both
}
 
#gallery {
    position:relative;
    height:360px
}
    #gallery a {
        float:left;
        position:absolute;
    }
     
    #gallery a img {
        border:none;
    }
     
    #gallery a.show {
        z-index:500
    }
 
 #gallery1 {
    position:relative;
    height:360px
}
    #gallery1 a {
        float:left;
        position:absolute;
    }
     
    #gallery1 a img {
        border:none;
    }
     
    #gallery1 a.show {
        z-index:500
    }  
 

</style>
</head>

<body bgcolor="#015B65" topmargin="11">
<form id="form1" runat="server">
<table border="0" width="1170" cellspacing="0" cellpadding="0" align=center>
	<tr>
		<td valign="top">
		<table border="0" width="263" cellspacing="0" cellpadding="0">
			<tr>
				<td>
				<img border="0" src="images/h1.jpg" width="263" height="280"></td>
			</tr>
			<tr>
				<td>
				<a href="FaBiography.aspx">
				<img border="0" src="images/h-persian.jpg" width="263" height="77"></a></td>
			</tr>
			<tr>
				<td>
				<a href="Biography.aspx"><img border="0" src="images/h-english.jpg" width="263" height="70"></a></td>
			</tr>
		</table></td>
		<td valign="top">
		<table border="0" width="198" cellspacing="0" cellpadding="0">
			<tr>
				<td>
				<img border="0" src="images/h2.jpg" width="198" height="280"></td>
			</tr>
			<tr>
				<td><img border="0" src="images/h3.jpg" width="198" height="147"></td></tr>
		</table></td>
		<td valign="bottom" bgcolor="#FFFFFF">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
				<div id="gallery" style="height:328px;">
                <a class="show" href="#">
                  <img border="0" src="../images/paint1.jpg" width="225" height="328" alt="Paint" />
                  </a> 
                               
                   <a href="#">
                     <img border="0" src="../images/3.jpg" width="225" height="328" alt="3" />
                   </a>

                   <a href="#">
                     <img border="0" src="../images/10.jpg" width="225" height="328" alt="10"/>
                   </a>

                   <a href="#">
                     <img border="0" src="../images/11.jpg" width="225" height="328" alt="11"/>
                   </a>

                   <a href="#">
                     <img border="0" src="../images/66.jpg" width="225" height="328" alt="66" />
                   </a>
			

                </div>
                </td>
			</tr><tr><td>
				<img border="0" src="images/h03.jpg" width="225" height="38"></td></tr>
		</table>
		</td>
		<td valign="bottom" bgcolor="#FFFFFF" width="9">
		<img border="0" src="images/h5.jpg" width="9" height="387"></td>
		<td bgcolor="#FFFFFF" valign="bottom"><table border="0" width="9" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<div id="gallery1" style="height:220px;">
                <a class="show" href="#">
                  <img border="0" src="../images/paint2.jpg" width="258" height="220" alt="Paint" />
                  </a> 
                               
                   <a href="#">
                     <img border="0" src="../images/1.jpg" width="258" height="220" alt="1" />
                   </a>

                   <a href="#">
                     <img border="0" src="../images/2.jpg" width="258" height="220" alt="2"/>
                   </a>

                   <a href="#">
                     <img border="0" src="../images/7.jpg" width="258" height="220" alt="7"/>
                   </a>

                   <a href="#">
                     <img border="0" src="../images/8.jpg" width="258" height="220" alt="8" />
          
          
                   </a>
			

                </div>
                </td>
			</tr>
			<tr>
				<td><img border="0" src="images/h6.jpg" width="258" height="169"></td>
			</tr>
		</table>
</td><td bgcolor="#FFFFFF" valign="bottom"><table border="0" width="9" cellspacing="0" cellpadding="0">
			<tr>
				<td>
				<img border="0" src="images/h8.jpg" width="219" height="220"></td>
			</tr>
			<tr>
				<td>
				<img border="0" src="images/h9.jpg" width="219" height="169"></td>
			</tr>

		</table>
</td>

	</tr>
	<tr>
		<td width="263">
		<img border="0" src="images/h-hand.jpg" width="263" height="416"></td>
		<td width="198" colspan="4">
		<table border="0" width="100%" height="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td>
				<img border="0" src="images/n1.jpg" width="131" height="285"></td>
				<td>
				<img border="0" src="images/n4.jpg" width="371" height="285"></td>
				<td>
				<img border="0" src="images/n6.jpg" width="188" height="285"></td>
			</tr>
			<tr>
				<td><img border="0" src="images/n2.jpg" width="131" height="99"></td>
				<td bgcolor="#76dce8" align="right">
				          <marquee
                          
                   scrollamount="1"
                   scrolldelay="20"
                   style="font-family: Tahoma;
                   font-size: 10pt;
                   color: Black; width: 360px;"
                   direction="right"   >
                    
                   
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="NewsDB" DataKeyField="NewsID" RepeatColumns="1" RepeatDirection="Horizontal" >
                    <ItemTemplate  >
                     <h4 dir="rtl" >
                <asp:Label ID="NewsTextlbl" runat="server" Text='<%# Eval("NewsText") %>'  /></h4>
                    </ItemTemplate>
                    </asp:DataList>   
                     </marquee> 
                    </td>
				<td><img border="0" src="images/n7.jpg" width="188" height="99"></td>
			</tr>
			<tr>
				<td><img border="0" src="images/n3.jpg" width="131" height="32"></td>
				<td><img border="0" src="images/n5.jpg" width="371" height="32"></td>
				<td><img border="0" src="images/n8.jpg" width="188" height="32"></td>
			</tr>
		</table>
		</td>
		<td valign="bottom" bgcolor="#FFFFFF" width="225">
		<img border="0" src="images/h10.jpg" width="219" height="416"></td>

	</tr>
</table>

<asp:SqlDataSource ID="NewsDB" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ArtGallery %>" 
    SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
</form>
        <script type="text/javascript" src="Scripts/jquery-1.3.1.min.js"></script>
<script type="text/javascript" >

    $(document).ready(function () {

        //Execute the slideShow
        slideShow();
        slideShow1();
    });

    function slideShow() {

        //Set the opacity of all images to 0
        $('#gallery a').css({ opacity: 0.0 });

        //Get the first image and display it (set it to full opacity)
        $('#gallery a:first').css({ opacity: 1.0 });



        //Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
        setInterval('gallery()', 3000);

    }

    function gallery() {

        //if no IMGs have the show class, grab the first image
        var current = ($('#gallery a.show') ? $('#gallery a.show') : $('#gallery a:first'));

        //Get next image, if it reached the end of the slideshow, rotate it back to the first image
        var next = ((current.next().length) ? ((current.next().hasClass('caption')) ? $('#gallery a:first') : current.next()) : $('#gallery a:first'));


        //Set the fade in effect for the next image, show class has higher z-index
        next.css({ opacity: 0.0 }).addClass('show').animate({ opacity: 1.0 }, 1000);

        //Hide the current image
        current.animate({ opacity: 0.0 }, 1000)
    .removeClass('show');



    }






    function slideShow1() {

        //Set the opacity of all images to 0
        $('#gallery1 a').css({ opacity: 0.0 });

        //Get the first image and display it (set it to full opacity)
        $('#gallery1 a:first').css({ opacity: 1.0 });



        //Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
        setInterval('gallery1()', 3000);

    }

    function gallery1() {

        //if no IMGs have the show class, grab the first image
        var current = ($('#gallery1 a.show') ? $('#gallery1 a.show') : $('#gallery1 a:first'));

        //Get next image, if it reached the end of the slideshow, rotate it back to the first image
        var next = ((current.next().length) ? ((current.next().hasClass('caption')) ? $('#gallery1 a:first') : current.next()) : $('#gallery1 a:first'));


        //Set the fade in effect for the next image, show class has higher z-index
        next.css({ opacity: 0.0 }).addClass('show').animate({ opacity: 1.0 }, 1000);

        //Hide the current image
        current.animate({ opacity: 0.0 }, 1000)
    .removeClass('show');



    }

</script>

</body>

</html>
