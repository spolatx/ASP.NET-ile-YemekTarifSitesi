<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    .auto-style9 {
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
        font-weight: bold;
    }
        .auto-style10 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yemek Ad:</strong></td>
            <td>
                    <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Malzemeler:</strong></td>
            <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="auto-style8" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Tarif:</strong></td>
            <td>
                    <asp:TextBox ID="TxtTarif" runat="server" CssClass="tb5" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DdlKategori" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yemek Resim:</strong></td>
            <td class="auto-style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style9" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="225px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnGununYemegi" runat="server" CssClass="auto-style9" OnClick="BtnGununYemegi_Click" Text="Günün Yemeği Seç" Width="225px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
