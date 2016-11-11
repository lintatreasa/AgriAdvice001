<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="MarketPrice.aspx.cs" Inherits="AgriAdviceWeb.Home.MarketPrice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="id_HomeMainDiv" style="min-height: 1400px ! important">
        <div id="id_RegisterDiv" style="width: 785px;">
            <div id="id_SpanRegisterDiv" style="width: 270px; float: left;">
                <span id="id_SpanLogin">MARKET-PRICE </span>
            </div>
            <div style="position: relative; border-top: 2px solid grey; float: left; width: 490px;
                margin-top: 18px; height: 32px; border-right: 2px solid grey;">
            </div>
            <div style="border-left: 2px solid grey; position: relative; border-bottom: 2px solid grey;
                width: 723px; min-height: 570px ! important; height: auto; margin-left: 35px;
                margin-top: 35px; border-right: 2px solid grey;">
                <%--Rubber--%>
                <asp:Label ID="lblMessage" CssClass="clsLabel" runat="server" Visible="false" Style="margin-left: 25px;"></asp:Label>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/01.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">റബർ</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtRubber" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- Tapioca--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/05.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">മരചിനി</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtTapioca" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- Pepper--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/02.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">കുരുമുളക്</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtPepper" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- Cocoa--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/03.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">കൊക്കോ</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtCocoa" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--പയർ --%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgപയർ" src="../Images/long bean.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">പയർ</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtPayar" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- പാവൽ--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/Bitter-gourd.jpg" style="position: relative;
                            width: 165px; height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">പാവക്ക</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtBitterQuard" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- കോവക്ക--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/kovakka.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">കോവക്ക</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="Kovakka" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- Coconuttree--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/coc.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">തെങ്ങാ</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtCoconut" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- Vazha--%>
                <div style="position: relative; width: 720px; height: 140px;">
                    <div class="clsForImages">
                        <img alt="imgRubber" src="../Images/06.jpg" style="position: relative; width: 165px;
                            height: 120px;" />
                    </div>
                    <div class="clsForTitle">
                        <span class="clsLabel">വാഴകുല</span>
                    </div>
                    <div class="clsForTitle">
                        <asp:TextBox ID="txtVazha" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div id="id_Loginbtn" style="margin-left: 450px;margin-top:0px;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="110px" OnClick="btnSubmit_Click"
                        Height="30px" Font-Bold="true" Font-Size="22px" Font-Names="Monotype Corsiva" />
                </div>
                 <div class="dummyDiv">
           <%----- dummy div ----%>
            </div>
            </div>
        </div>
    </div>
</asp:Content>
