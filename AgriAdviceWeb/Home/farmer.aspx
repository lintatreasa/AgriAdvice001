<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="farmer.aspx.cs" Inherits="AgriAdviceWeb.Home.farmer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="id_HomeFarmerDiv">    
     <div id="id_FarmerDiv">
        <div id="id_SpanDetailsDiv">
            <span id="id_SpanLogin"> 
                WELCOME
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:500px;margin-top:5px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:500px ! important;height:auto;margin-left:10px;margin-top:40px;border-right:2px solid grey;">
        <div id="Div4" style="margin-left: 600px;margin-top:0px;">
                    <asp:Button ID="Button1" runat="server" Text="Logout" Width="110px" 
                        Height="30px" Font-Bold="true" Font-Size="22px" Font-Names="Monotype Corsiva" />
                </div>
        <div id="id_Loginbtn"style= "margin-left: 30px;margin-top:70px;height:100px;width:200px;float:left;background-image:url('../Images/Untitled.jpg');">
        <div style="margin-left:90px;position:relative;width:150px;height:30px;margin-top:50px;">
                <asp:LinkButton ID="lnkHome" CssClass="clsMasterPageLinks" runat="server" PostBackUrl="~/Home/New User.aspx" >Profile</asp:LinkButton>
            </div>
        </div>
        <div id="Div1"style= "margin-left:30px;margin-top:70px;height:100px;width:200px;float:left;background-image:url('../Images/Untitled.jpg');">
        <div style="margin-left:90px;position:relative;width:150px;height:30px;margin-top:50px;">
                <asp:LinkButton ID="LinkButton1" CssClass="clsMasterPageLinks" runat="server" PostBackUrl="~/Home/Askqus.aspx" >AskQus</asp:LinkButton>
            </div>
        </div>
        <div id="Div2"style= "margin-left:30px;margin-top:70px;height:100px;width:200px;float:left;background-image:url('../Images/Untitled.jpg');">
        <div style="margin-left:80px;position:relative;width:150px;height:30px;margin-top:50px;">
                <asp:LinkButton ID="LinkButton2" CssClass="clsMasterPageLinks" runat="server" >Notification</asp:LinkButton>
            </div>
        </div>
        <div id="Div3"style= "margin-left:30px;margin-top:30px;height:100px;width:200px;float:left;background-image:url('../Images/Untitled.jpg');">
        <div style="margin-left:57px;position:relative;width:150px;height:30px;margin-top:50px;">
                <asp:LinkButton ID="LinkButton3" CssClass="clsMasterPageLinks" runat="server" PostBackUrl="~/Home/MarketUpdates.aspx" >Market Updates</asp:LinkButton>
            </div>
        </div>
        <div id="Div5"style= "margin-left:30px;margin-top:30px;height:100px;width:200px;float:left;background-image:url('../Images/Untitled.jpg');">
        <div style="margin-left:57px;position:relative;width:150px;height:30px;margin-top:50px;">
                <asp:LinkButton ID="LinkButton4" CssClass="clsMasterPageLinks" runat="server" >Subsidy Status</asp:LinkButton>
            </div>
        </div>
        
</div>
</div>
</div>
</asp:Content>
