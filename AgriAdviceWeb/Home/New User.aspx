<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New User.aspx.cs" Inherits="AgriAdviceWeb.Home.New_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="id_HomeMainDiv" style="min-height:560px ! important">    
     <div id="id_RegisterDiv">
        <div id="id_SpanRegisterDiv">
            <span id="id_SpanLogin"> 
                Register 
            </span>
        </div>
        <div style="position:relative;border-top:2px solid grey;float:left;width:388px;margin-top:18px;height:32px;border-right:2px solid grey;">       
        </div>
        <div style="border-left:2px solid grey;position:relative;border-bottom:2px solid grey;width:486px;min-height:270px ! important;height:auto;margin-left:10px;margin-top:35px;border-right:2px solid grey;">
          <%-- Validation Summary--%>
            <asp:ValidationSummary ID="valsummaryLogin" ValidationGroup="vgLogin" runat="server" CssClass="clsValGroup" DisplayMode="BulletList"/>
        <asp:Label ID="lblMessage" CssClass="clsLabel" runat="server" Visible="false" style="margin-left:25px;"></asp:Label>
        <%--    User Name--%>
            <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="lblUserName" CssClass="clsLabel" runat="server" Text="User Name" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label1" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label2" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:73px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:TextBox ID="txtUserName" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="regValUserName"  ValidationGroup="vgLogin" ErrorMessage="UserName is Required" ControlToValidate="txtUserName" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>

             <%--Password--%>
            <asp:Panel runat="server" ID="pnlForPassword">
                <div style="position:relative;width:460px;height:30px;">
                     <div class="clsForRegisterLabel">
                        <asp:Label ID="lblPassword" CssClass="clsLabel" runat="server" Text="Password" ForeColor="Black"></asp:Label>
                        <asp:Label ID="Label3" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label4" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:85px;"></asp:Label>
                    </div>
                    <div class="clsForRegisterTextBox">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqvalPassword" ValidationGroup="vgLogin" ErrorMessage="Password is Required" ControlToValidate="txtPassword" runat="server" Display="None"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <%-- Confirm Password--%>
                <div style="position:relative;width:460px;height:30px;">
                     <div class="clsForRegisterLabel">
                        <asp:Label ID="lblConfirmPswd" CssClass="clsLabel" runat="server" Text="Confirm Password" ForeColor="Black"></asp:Label>
                        <asp:Label ID="Label6" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label7" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:22px;"></asp:Label>
                    </div>
                    <div class="clsForRegisterTextBox">
                        <asp:TextBox ID="txtConfirmPswd" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="vgLogin" ErrorMessage="Confirm Password is Required" ControlToValidate="txtConfirmPswd" runat="server" Display="None"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmpVal" runat="server" ValidationGroup="vgLogin" ErrorMessage="Confirm Password is not same" ControlToValidate="txtConfirmPswd" ControlToCompare="txtPassword" Display="None"></asp:CompareValidator>
                    </div>
                </div>
            </asp:Panel>

              <%--    Name--%>
            <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="Label19" CssClass="clsLabel" runat="server" Text="Name" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label20" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label21" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:112px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:TextBox ID="txtName" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ValidationGroup="vgLogin" ErrorMessage="Name is Required" ControlToValidate="txtName" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
             <%--    Role Info --%>
           <%-- <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="lblRole" CssClass="clsLabel" runat="server" Text="Role" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label15" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label16" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:123px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:DropDownList ID="ddlRole" runat="server" Width="164px" AutoPostBack="true" onselectedindexchanged="ddlRole_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  ValidationGroup="vgLogin" InitialValue="0" ErrorMessage="Please select Role" ControlToValidate="ddlRole" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>--%>

              <%--    Agriculture Oficer Info --%>
           <%-- <asp:Panel runat="server" ID="pnlOfficer" Visible="false">
                <div style="position:relative;width:460px;height:30px;">
                    <div class="clsForRegisterLabel">
                        <asp:Label ID="Label5" CssClass="clsLabel" runat="server" Text="Officer" ForeColor="Black"></asp:Label>
                        <asp:Label ID="Label17" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label18" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:104px;"></asp:Label>
                    </div>
                    <div class="clsForRegisterTextBox">
                        <asp:DropDownList ID="ddlOficerList" runat="server" Width="164px" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ValidationGroup="vgLogin" InitialValue="0" ErrorMessage="Please select Officer" ControlToValidate="ddlOficerList" runat="server" Display="None"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>--%>
             <%--    House Name--%>
            <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="lblPhone" CssClass="clsLabel" runat="server" Text="Mobile Number" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label12" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label13" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:41px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:TextBox ID="txtPhone" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ValidationGroup="vgLogin" ErrorMessage="Mobile Number is Required" ControlToValidate="txtPhone" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--    House Name--%>
            <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="lblHouseName" CssClass="clsLabel" runat="server" Text="House Name" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label8" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label9" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:63px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:TextBox ID="txtHouseName" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ValidationGroup="vgLogin" ErrorMessage="House Name is Required" ControlToValidate="txtHouseName" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
             <%--    House Number--%>
            <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="lblHouseNumber" CssClass="clsLabel" runat="server" Text="House Number" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label10" CssClass="clsLabel" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label11" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:47px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:TextBox ID="txtHouseNumber" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ValidationGroup="vgLogin" ErrorMessage="House Number is Required" ControlToValidate="txtHouseNumber" runat="server" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
             <%--    House Area--%>
             <asp:Panel runat="server" ID="pnlArea" Visible="true">
            <div style="position:relative;width:460px;height:30px;">
                <div class="clsForRegisterLabel">
                    <asp:Label ID="lblArea" CssClass="clsLabel" runat="server" Text="Acres" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label14" CssClass="clsLabel" runat="server" Text=":" ForeColor="Black" style="margin-left:128px;"></asp:Label>
                </div>
                <div class="clsForRegisterTextBox">
                    <asp:TextBox ID="txtArea" runat="server" Width="160px"></asp:TextBox>                   
                </div>
            </div>
            </asp:Panel>
            <div class="dummyDiv">
           <%----- dummy div ----%>
            </div>
            <%--Submit Button--%>
            <div id="id_Submitbtn">
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="110px" 
                    Height="30px" Font-Bold="true" Font-Size="22px"
                 Font-Names="Monotype Corsiva" CausesValidation="false" 
                    onclick="btnReset_Click"/>
            
                <asp:Button ID="btnSubmit" runat="server" Text="Register" 
                    style="margin-left:15px;" Width="110px" Height="30px" Font-Bold="true" Font-Size="22px"
                 Font-Names="Monotype Corsiva" CausesValidation="true" 
                    ValidationGroup="vgLogin" UseSubmitBehavior="true" onclick="btnSubmit_Click"/>
            </div>
        </div>
    </div>

    <div style="position:relative;height:100px;width:200px;float:left;margin-left:50px;margin-top:40px;">
        <asp:LinkButton ID="lnkAgriDetails" runat="server" 
            Text="Edit Agriculture Details" CssClass="clsLabel" 
              style="position:relative;font-size:18px;" onclick="lnkAgriDetails_Click"></asp:LinkButton>
    </div>
</div>
</asp:Content>
