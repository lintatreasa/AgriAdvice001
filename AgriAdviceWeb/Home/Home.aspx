<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AgriAdviceWeb.Home.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="id_HomeMainDiv" >
    <div id="id_AboutDiv">
    <span style="font-style:italic;color:Black;font-size:20px">
    <p>
     Agriculture is the largest livelihood provider in india,more so in the vast rural areas.it contributes a significant figure to GDP.Indian agriculture has witnessed green revolution,white revolution,yellow revolution.
    </p>
    <p>
    
    Agriculture is the key to the overall development of the State economy.  Agriculture is the backbone of kerala's economy 81% of workforce and generating nearly 42% of the State Domestic Product. The percentage of population employed in agriculture production system in kerala is estimated to 61%, which is much higher than the national average.
    </p>
    </span>
    </div>
    <asp:Panel runat="server">
    <div id="id_LoginDiv">
        <div id="id_SpanDiv">
            <span id="id_SpanLogin"> 
                Login 
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:258px;margin-top:18px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:326px;min-height:180px ! important;height:auto;margin-left:10px;margin-top:35px;border-right:2px solid grey;">
        <div style="background-image:url('../Images/Vintage-Grunge-Wood-Background.jpg');">
          <%-- Validation Summary--%>
            <asp:ValidationSummary ID="valsummaryLogin" ValidationGroup="vgLogin" runat="server" CssClass="clsValGroup" DisplayMode="BulletList"/>
            <asp:Label ID="lblMessage" CssClass="clsLabel" runat="server" Visible="false" ForeColor="Red" style="margin-left:25px;"></asp:Label>
        <%--    User Name--%>
            <div style="position:relative;">
                <div class="clsForLabel" style="width:110px;">
                    <asp:Label ID="lblUserName" CssClass="clsLabel" runat="server" Text="User Name" ></asp:Label>
                    <asp:Label ID="Label1" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label2" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:2px;"></asp:Label>                
                </div>
                <div class="clsForTextBox">
                    <asp:TextBox ID="txtUserName" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="regValUserName"  ValidationGroup="vgLogin" ErrorMessage="UserName is Required" ControlToValidate="txtUserName" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--Password--%>
            <div style="position:relative;">
                 <div class="clsForLabel" style="width:110px;">
                    <asp:Label ID="lblPassword" CssClass="clsLabel" runat="server" Text="Password" ></asp:Label>
                    <asp:Label ID="Label3" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label4" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:13px;"></asp:Label> 
                </div>
                <div class="clsForTextBox">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqvalPassword" ValidationGroup="vgLogin" ErrorMessage="Password is Required" ControlToValidate="txtPassword" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="dummyDiv">
           <%----- dummy div ----%>
            </div>
            <%--Submit Button--%>
            <div id="id_Loginbtn">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="110px"  OnClick="btnSubmit_Click"
                    Height="30px" Font-Bold="true" Font-Size="22px"
                 Font-Names="Monotype Corsiva" ValidationGroup="vgLogin" />
            </div>
            
           <%-- Forgot password--%>
          <div style="position:relative;height:32px;">
              <asp:LinkButton ID="lnkForgotPaswd" runat="server" Text="Forgot Password ?" CssClass="clsLabel" 
              style="position:relative;margin-left:150px;top:10px;font-size:18px;"></asp:LinkButton>
          </div>
          <%-- New User Registration--%>
          <div style="position:relative;height:40px;">
              <asp:LinkButton ID="lnkNewUser" runat="server" Text="New User Registration" CssClass="clsLabel" 
              style="position:relative;margin-left:150px;top:10px;font-size:18px;" OnClick="RedirectToNewUser"></asp:LinkButton>
          </div>
          </div>
      </div>
    </div>
    </asp:Panel>
</div>

</asp:Content>
