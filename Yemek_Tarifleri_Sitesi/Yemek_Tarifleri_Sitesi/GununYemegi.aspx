<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekAd") %>' style="font-weight: 700; font-size: large; text-align: center"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Malzemeler:</strong><asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <strong>Tarif:</strong><asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="149px" style="text-align: center" Width="380px" ImageUrl="~/Pictures/mucver.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <table class="auto-style1">
                        <tr>
                            <td><strong>Puan:</strong><asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

