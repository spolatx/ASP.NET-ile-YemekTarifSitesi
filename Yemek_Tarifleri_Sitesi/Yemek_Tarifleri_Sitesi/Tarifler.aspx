<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 277px;
        }
        .auto-style8 {
            width: 278px;
        }
        .auto-style11 {
            width: 161%;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style13 {
            width: 28px;
        }
        .auto-style14 {
            width: 48px;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            background-color: #99CCFF;
        }
        .auto-style17 {
            width: 356px;
        }
        .auto-style18 {
            width: 432px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:Panel ID="Panel1" runat="server" Width="450px" CssClass="auto-style16">
     <table class="auto-style4">
         <tr>
             <td class="auto-style13"><strong>
                 <asp:Button ID="BtnArti" runat="server" CssClass="auto-style12" Height="30px" OnClick="BtnArti_Click" Text="+" Width="30px" />
                 </strong></td>
             <td class="auto-style14"><strong>
                 <asp:Button ID="BtnEksi" runat="server" CssClass="auto-style15" Height="30px" OnClick="BtnEksi_Click" Text="-" Width="30px" />
                 </strong></td>
             <td><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
         </tr>
     </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                         
                                <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icons/update-icon-png-18.jpg" Width="35px" CssClass="auto-style17" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="449px"  CssClass="auto-style16">
     <table class="auto-style4">
         <tr>
             <td class="auto-style13"><strong>
                 <asp:Button ID="BtnOnayliArti" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="BtnOnayliArti_Click" />
                 </strong></td>
             <td class="auto-style14"><strong>
                 <asp:Button ID="BtnOnayliEksi" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="BtnOnayliEksi_Click" />
                 </strong></td>
             <td class="auto-style18"><strong>ONAYLI TARİF LİSTESİ</strong></td>
         </tr>
     </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                         
                                <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icons/update-icon-png-18.jpg" Width="35px" CssClass="auto-style17" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>