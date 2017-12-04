<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerInfo.aspx.cs" Inherits="SNS.CustomerInfo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <tr>
            <td style="height: 67px">
                <br />
            </td>
            <td colspan="6" style="height: 67px; width: 291px;">
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="LastName"></asp:TextBox>
                &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_OnClick" Text="Search" />
            </td>
        </tr>

        <br />
        <br />
        <br />
        <table>
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
                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="86px" Width="1162px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <%--                <asp:BoundField DataField="CustomerID" HeaderText="Customer ID"/>--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" Text="Select" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                        <%--                        <asp:Button ID="Button3" runat="server" Text="Select" PostBackUrl="~/newUser.aspx" />--%>
                        <%--<asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  --%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
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
