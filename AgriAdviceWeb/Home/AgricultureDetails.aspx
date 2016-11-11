<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgricultureDetails.aspx.cs" Inherits="AgriAdviceWeb.Home.AgricultureDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="id_DetailsMainDiv">    
     <div id="id_DetailsDiv">
        <div id="id_SpanDetailsDiv">
            <span id="id_SpanLogin"> 
                Agriculture Details 
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:500px;margin-top:18px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:740px;min-height:670px ! important;height:auto;margin-left:10px;margin-top:35px;border-right:2px solid grey;">
           <%--Rubber--%>
            <asp:Label ID="lblMessage" CssClass="clsLabel" runat="server" Visible="false" style="margin-left:25px;"></asp:Label>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/01.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">റബർ(in Number)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtRubber" runat="server"></asp:TextBox>
                </div>
            </div>       
           <%-- Tapioca--%>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/05.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">മരചിനി(in Number)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtTapioca" runat="server"></asp:TextBox>
                </div>
            </div>
            <%-- Pepper--%>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/02.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">കുരുമുളക്(in area)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtPepper" runat="server"></asp:TextBox>
                </div>
            </div>
            <%-- Cocoa--%>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/03.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">കൊക്കോ(in number)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtCocoa" runat="server"></asp:TextBox>
                </div>
            </div>
            <%-- Vegetables--%>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/07.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">പച്ചക്കറികൾ(in area)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtVegetables" runat="server"></asp:TextBox>
                </div>
            </div>
            <%-- Coconuttree--%>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/coc.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">തെങ്ങ്(in number)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtCoconuttree" runat="server"></asp:TextBox>
                </div>
            </div>
            <%-- Vazha--%>
           <div style="position:relative;width:720px;height:140px;">
                <div class="clsForImages">
                    <img alt="imgRubber" src="../Images/06.jpg" style="position:relative;width:165px;height:120px;"/>
                </div>
                <div class="clsForTitle">
                    <span class="clsLabel">വാഴ(in number)</span>
                </div>
                <div class="clsForTitle">
                     <asp:TextBox ID="txtVazha" runat="server"></asp:TextBox>
                </div>
            </div>
             <%--Submit Button--%>
            <div id="id_Submitbtn" style="margin-left:392px;">
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="110px" 
                    Height="30px" Font-Bold="true" Font-Size="22px"
                 Font-Names="Monotype Corsiva" CausesValidation="false" 
                    onclick="btnReset_Click"/>
            
                <asp:Button ID="btnSubmit" runat="server" Text="Save" style="margin-left:15px;" 
                    Width="110px" Height="30px" Font-Bold="true" Font-Size="22px"
                 Font-Names="Monotype Corsiva" UseSubmitBehavior="true" 
                    onclick="btnSubmit_Click"/>
            </div>
        </div>
        <div style="position:relative;height:40px;width:200px;margin-left:50px;margin-top:10px;">
        <asp:LinkButton ID="lnkAgriDetails" runat="server" 
            Text="Edit Personal Details" CssClass="clsLabel" 
              style="position:relative;font-size:18px;" onclick="lnkAgriDetails_Click"></asp:LinkButton>
    </div>
    </div>
    </div>
</asp:Content>
