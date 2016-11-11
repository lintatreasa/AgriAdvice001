<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Askqus.aspx.cs" Inherits="AgriAdviceWeb.Home.Askqus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id = "id_marketDiv">
    <div id="id_OfficerDiv">
        <div id="id_SpanDetailsDiv" style="margin-left:15px">
            <span id="id_SpanLogin"> 
               ASK QUS
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:485px;margin-top:-2px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:600px ! important;height:auto;margin-left:10px;margin-top:40px;border-right:2px solid grey;">
        <div style= "margin-left: 51px;margin-top:95px;height:150px;width:450px;float:left; ">
        <asp:TextBox ID="txtRubber" runat="server" Rows="5" TextMode="MultiLine" Width="450px" Height="150px"></asp:TextBox>
        </div>

        <div id="id_Loginbtn" style="margin-left: 375px;margin-top:0px;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Sent" Width="110px" 
                        Height="30px" Font-Bold="true" Font-Size="22px" Font-Names="Monotype Corsiva" />
                </div>
        <div style= "margin-left: 280px;margin-top:35px;height:150px;width:450px;float:left; ">
        <asp:TextBox ID="TextBox1" runat="server" Rows="5" TextMode="MultiLine" Width="450px" Height="150px"></asp:TextBox>
        </div>

        <div id="Div1" style="margin-left: 600px;margin-top:0px;">
                    <asp:Button ID="Button1" runat="server" Text="Sent" Width="110px" 
                        Height="30px" Font-Bold="true" Font-Size="22px" Font-Names="Monotype Corsiva" />
                </div>
        <div style="margin-left:10px;position:relative;width:150px;height:30px;Margin-top:30px">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="clsMasterPageLinks" >PREVIOUS</asp:LinkButton>
            </div>
        <div style="margin-left:600px; position:relative;width:150px;height:30px; margin-top:-30px">
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="clsMasterPageLinks" >NEXT</asp:LinkButton>
            </div>
        </div>
       
    </div>
</div>
</asp:Content>
