<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            height: 27px;
        }
        .auto-style5 {
            height: 28px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="441px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td style="background-color: #FFCCCC; text-align: center;"><a href="YemekDetay.aspx?Yemekid=<%# Eval("YemekId")%>">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large; text-align: center;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="background-color: #CCCCCC"><strong>Eklenme Tarihi :</strong><asp:Label ID="Label6" runat="server" style="color: #FFFFFF" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            &nbsp;<em><strong>- Puan:<asp:Label ID="Label7" runat="server" style="color: #FFFFFF" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></em></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
