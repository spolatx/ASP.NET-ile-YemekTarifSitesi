<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: large;
            color: #FFFFFF;
            width: 184px;
        }
        .auto-style7 {
            text-align: right;
            width: 184px;
        }
        .auto-style8 {
            width: 184px;
        }
        .auto-style9 {
            width: 184px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5"><strong>MESAJ PANELİ</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong></strong></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>İçerik:</strong></td>
        <td>
            <asp:TextBox ID="TxtIcerik" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong></strong></td>
        <td>
            <strong>
            <asp:Button ID="BtnMesajGonder" runat="server" Text="Mesaj Gonder" CssClass="button" OnClick="BtnMesajGonder_Click" Width="222px" />
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
