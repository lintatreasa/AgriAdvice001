<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pesticide.aspx.cs" Inherits="AgriAdviceWeb.Home.pesticide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="id_DetailsMainDiv">    
     <div id="id_DetailsDiv">
            <div id="id_SpanDetailsDiv">
            <span id="id_SpanLogin"> 
               PESTICIDES 
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:500px;margin-top:18px;height:32px;border-right:2px solid grey;">       
       </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:670px ! important;height:auto;margin-left:10px;margin-top:35px;border-right:2px solid grey;">
         <%--BACTERICIDE--%>
            <asp:Label ID="lblMessage" CssClass="clsLabel" runat="server" Visible="false" style="margin-left:25px;"></asp:Label>
           <div style="position:relative;width:720px;height:180px;">
                <div class="clsForImages">
                    <img alt="imgpea" src="../Images/bacteriacide.jpeg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel"> BACTERIACIDE:Kills bacteria</span>
                </div>
                </div>
                 
               <%-- FUNGICIDE--%>
           <div style="position:relative;width:720px;height:190px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/fugicide.jpeg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">FUNGICIDE:kills fungus</span>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel"></span>
                </div>
                 
                </div>
                
            <%-- INSECTICIDE--%>
           <div style="position:relative;width:720px;height:190px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/insecticides-all.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">INSECTICIDE:Controls or kills insects</span>
                </div>
                 
                </div>
                 <%-- HERBICIDE--%>
           <div style="position:relative;width:720px;height:190px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/herbiside.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">HERBICIDE:Controls or kills weeds</span>
                </div>
                
             </div>
             </div>
             </div>
             </div>
</asp:Content>
