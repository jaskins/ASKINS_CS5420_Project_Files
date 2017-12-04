<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SNS._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <table>
            <tr>
                <td style="height: 67px">
                    Last Name Search&nbsp;
                    <br />
                </td>
                <td colspan="6" style="height: 67px; width: 291px;">
                    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="LastName" ></asp:TextBox>
                    &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_OnClick" Text="Search" />
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Label Text="First Name" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="Middle Initial" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtMiddleInitial" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="Last Name" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtLastName" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="E-mail" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Address" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtAddress" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="City" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtCity" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="State" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtState" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>            
            <tr>
                <td>
                    <asp:Label Text="Zip" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtZip" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Phone Extension" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtPhoneExt" runat="server" Width="43px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Phone Number" runat="server"></asp:Label>
                </td>
                <td colspan="6" style="width: 291px">
                    <asp:TextBox ID="txtPhoneNumber" runat="server" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 67px">
                    <br />
                </td>
                <td colspan="6" style="height: 67px; width: 291px;">
                    <asp:Button Text="Add Customer" ID="btnAddCustomer" runat="server" OnClick="btnAddCustomer_Click"/>
                </td>                    
            </tr>
            <tr>
                <td></td>
                <td colspan="6">
                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" EnableViewState="False" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="6">
                    <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" EnableViewState="False" ></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="86px" Width="1162px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            
<%--******************************* this is where I add a button to GridView ********************--%>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                            <asp:Button ID="Button3" runat="server" Text="Select" PostBackUrl="~/newUser.aspx" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
<%--**************************** This is where it ends....other stuff is just asthetics *******************--%>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        <br />
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="86px" Width="1162px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            
<%--******************************* this is where I add a button to GridView ********************--%>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                            <asp:Button ID="Button4" runat="server" Text="Select" PostBackUrl="~/newUser.aspx" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
<%--**************************** This is where it ends....other stuff is just asthetics *******************--%>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

    </div>
</asp:Content>






<%--Tried to experiment with button disabled--%>
<%--$1$ ********************** Tried some experiment with disabling the button....didn't work may come back...some more code further below
                                    <asp:Button Text="Add Customer" ID="Button1" runat="server" OnClick="btnAddCustomer_Click" Enabled="False"/>
                                     ALSO --> goes with all txt above in button disable "  onkeyup="change(this, 'btnAddCustomer');"  "#1#


$2$                        <asp:Button ID="Button3" runat="server" Text="Select" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>#2#
$2$                              this ASP was the original one, the line above is active but can get rid of CommandArgument "NOT NEEDED"#2#





$1$$2$/**************************  OLD NON USED STUFF MIGHT LOOK AT LATER USE *******************************/#2#
$2$        <script>#2#
$2$            function change1(textb, buttont)#2#
$2$            {#2#
$2$                var firstNametxt = document.getElementById('<%= txtFirstName.ClientID %>');#2#
$2$                var middleInitialtxt = document.getElementById('<%= txtMiddleInitial.ClientID %>');#2#
$2$                var lastNametxt = document.getElementById('<%= txtLastName.ClientID %>');#2#
$2$                var emailtxt = document.getElementById('<%= txtEmail.ClientID %>');#2#
$2$                var addresstxt = document.getElementById('<%= txtAddress.ClientID %>');#2#
$2$                var citytxt = document.getElementById('<%= txtCity.ClientID %>');#2#
$2$                var statetxt = document.getElementById('<%= txtState.ClientID %>');#2#
$2$                var ziptxt = document.getElementById('<%= txtZip.ClientID %>');#2#
$2$                var phoneExttxt = document.getElementById('<%= txtPhoneExt.ClientID %>');#2#
$2$                var phoneNumbertxt = document.getElementById('<%= txtPhoneNumber.ClientID %>');#2#
$2$#2#
$2$                if ((textb.value.length >= 1 && firstNametxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && middleInitialtxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && lastNametxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && emailtxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && addresstxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && citytxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && statetxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && ziptxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && phoneExttxt.value.length >= 1) &&#2#
$2$                    (textb.value.length >= 1 && phoneNumbertxt.value.length >= 1))#2#
$2$#2#
$2$                    document.getElementById(buttont).disable = false;#2#
$2$#2#
$2$                else#2#
$2$#2#
$2$                    document.getElementById(buttont).disable = true;#2#
$2$#2#
$2$                }#2#
$2$    </script>#2##1#--%>
