<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-left: 40px;
        }
        .auto-style7 {
        text-align: right;
        width: 117px;
    }
        .auto-style8 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    .auto-style9 {
        width: 117px;
    }
    .auto-style10 {
        border-style: none;
        border-color: inherit;
        border-width: 0;
        padding: 17px 40px;
        border-radius: 10px;
        background-color: rgb(255, 56, 86);
        letter-spacing: 1.5px;
        font-size: 15px;
        transition: all .3s ease;
        box-shadow: rgb(201, 46, 70) 0px 10px 0px 0px;
        color: hsl(0, 0%, 100%);
        margin-left: 53px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Ad Soyad:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TxtIcerik" runat="server" CssClass="auto-style8" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style10" Text="Onayla" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
