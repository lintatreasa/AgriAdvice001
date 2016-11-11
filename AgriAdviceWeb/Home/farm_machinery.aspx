<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="farm_machinery.aspx.cs" Inherits="AgriAdviceWeb.Home.farm_machinery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="id_DetailsMainDiv">    
     <div id="id_DetailsDiv">
            <div id="id_SpanDetailsDiv">
            <span id="id_SpanLogin"> 
               FARM_MACHNARIES 
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:500px;margin-top:18px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:500px ! important;height:auto;margin-left:10px;margin-top:35px;border-right:2px solid grey;">
         <%--COFFEE HARVESTER--%>
            <asp:Label ID="lblMessage" CssClass="clsLabel" runat="server" Visible="false" style="margin-left:25px;"></asp:Label>
           <div style="position:relative;width:720px;height:180px;">
                <div class="clsForImages">
                    <img alt="imgpea" src="../Images/800px-Coffee_Harvester_Mareeba.JPG" style="position:relative;width:165px;height:120px;"/>
                </div>
                
                  <span class="clsLabel">COFFEE HARVESTER:helps sow seeds with much ease</span> 
                </div>
               <%--SOWING--%>
           <div style="position:relative;width:720px;height:190px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/300px-Sowing_machine_Nordsten.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">SOWING MACHINE:helps sow seeds with much ease</span>
                </div>
                 
                 
                </div>
            <%-- TRACTOR--%>
           <div style="position:relative;width:720px;height:190px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/Remote-Control-Tractors-for-Farm-Remote-Mini-Crawler-Farming-Machine.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">REMOTE_CONTROL TRACTORS:tractor can be operated with a remote</span>
                </div>
            </div>
                 
                 <%----%>
           <div style="position:relative;width:720px;height:190px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/Mini-Rotary-Tiller-for-Hand-Tractor.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">MINI_ROTARY TILLER:aids in tilling the land</span>
                </div>
                 
             </div>
            </div>
        </div>
    </div>
</asp:Content>
