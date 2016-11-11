<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MarketUpdates.aspx.cs" Inherits="AgriAdviceWeb.Home.MarketUpdates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id = "id_marketDiv">
    <div id="id_OfficerDiv">
        <div id="id_SpanDetailsDiv">
            <span id="id_SpanLogin"> 
                MARKET UPDATES
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:500px;margin-top:5px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:730px ! important;height:auto;margin-left:10px;margin-top:40px;border-right:2px solid grey;">
        <div style= "margin-left: 145px;margin-top:95px;height:150px;width:450px;float:left; ">
        <asp:TextBox ID="txtRubber" runat="server" Rows="5" TextMode="MultiLine" Width="450px" Height="150px"></asp:TextBox>
        </div>

        <div id="id_Loginbtn" style="margin-left: 450px;margin-top:0px;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="110px" 
                        Height="30px" Font-Bold="true" Font-Size="22px" Font-Names="Monotype Corsiva" />
                </div>
        </div>
       
    </div>
</div>
</asp:Content>
