﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sentnoti.aspx.cs" Inherits="AgriAdviceWeb.Home.Sentnoti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id = "id_marketDiv">
    <div id="id_OfficerDiv">
        <div id="id_SpanDetailsDiv">
            <span id="id_SpanLogin"> 
                SENT NOTIFICATION
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:500px;margin-top:5px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:500px ! important;height:auto;margin-left:10px;margin-top:40px;border-right:2px solid grey;">
        <div style= "margin-left: 145px;margin-top:95px;height:150px;width:450px;float:left; ">
        <asp:TextBox ID="txtRubber" runat="server" Rows="5" TextMode="MultiLine" Width="450px" Height="150px"></asp:TextBox>
        </div>

        <div id="id_Loginbtn" style="margin-left: 450px;margin-top:0px;">
                    <asp:Button ID="btnSubmit" runat="server" Text="SENT" Width="110px" 
                        Height="30px" Font-Bold="true" Font-Size="22px" Font-Names="Monotype Corsiva" />
                </div>
        <div id="Div1" style="margin-left: 215px;margin-top:-18px;">
        <asp:RadioButton ID="RadioButton1" runat="server" Text="IMPORTANT"/>
        </div>
        </div>  
    </div>
</div>
</asp:Content>
