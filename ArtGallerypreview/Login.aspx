<%@ Page Title="" Language="C#" MasterPageFile="~/FaRoot.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ArtGallerypreview.Login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
    .style 
    {
        width:400px;
        direction:rtl;
        border-color:#2B55AC;
        border-style:ridge;
    }
    
      .style1
      {
          height: 46px;
      }
    
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <table style="width: 100%; direction:rtl;">
        <tr>
           <td align="right" height="90" valign="bottom">
           <img border="0" src="../images/space.jpg" width="60" height="1" alt="Space"/>
				<img border="0" src="../images/p_admin.gif" width="229" height="62" alt="Admin"/>
                 </td>
        </tr>
        <tr>
        <td     align="center" valign="bottom">
        <br />
        <p style="background-color:#2B55AC;  width:400px;   font-weight:bold; height: 30px; vertical-align:bottom; font-size:larger; margin-top: 3px; margin-bottom: 0px;">
        
        
        <span >ورود به سیستم</span>
        
        </p>
        
        </td>
        </tr>
        <tr>

            <td align="center"  >
    
           
                                 
                    
                <table class="style" >
                    <tr>
                        <td class="style1">
                            نام کاربر:
                        </td>
                        <td class="style1" >
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                                ControlToValidate="txtUsername" Display="Dynamic" 
                                ErrorMessage="لطفا نام کاربر را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            کلمه عبور:
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                                ControlToValidate="txtPassword" Display="Dynamic" 
                                ErrorMessage="لطفا کلمه عبور را وارد کنید" ForeColor="Red">→</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvLogin" runat="server" Display="Dynamic" 
                                ErrorMessage="نام کاربر یا کلمه عبور صحیح نیست" ForeColor="Red" 
                                onservervalidate="cvLogin_ServerValidate">→</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style1">
                            <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                                Text="ورود به سیستم" />
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="vsLogin" runat="server" ForeColor="Red" />
    
            </td>
        </tr>
        </table>
</asp:Content>
