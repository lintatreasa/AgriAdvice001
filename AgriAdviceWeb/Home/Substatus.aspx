<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Substatus.aspx.cs" Inherits="AgriAdviceWeb.Home.Substatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="id_HomeOfficerDiv">    
     <div id="id_OfficerDiv">
        <div id="id_SpanDetailsDiv" style= "margin-left:50px">
            <span id="id_SpanLogin"> 
               SUBSIDY STATUS
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:450px;margin-top:-2px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:500px ! important;height:auto;margin-left:10px;margin-top:40px;border-right:2px solid grey;">
        <asp:Table ID="Table1" runat="server" >
            </asp:Table>
        </div>
       </div>
</div>          
</asp:Content>
