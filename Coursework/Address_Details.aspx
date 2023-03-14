<%@ Page Title="Address Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Address_Details.aspx.cs" Inherits="Coursework.Address_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" CssClass="col-md-4">
        <InsertItemTemplate>
            ADDRESS_ID:
            <asp:TextBox ID="ADDRESS_IDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("ADDRESS_ID") %>' />
            <asp:RequiredFieldValidator runat="server" ID="address_id" ControlToValidate="ADDRESS_IDTextBox" ErrorMessage="Please Enter Address ID!" ForeColor="Red"/>
            <br />
            COUNTRY:
            <asp:TextBox ID="COUNTRYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("COUNTRY") %>' />
            <asp:RequiredFieldValidator runat="server" ID="country" ControlToValidate="COUNTRYTextBox" ErrorMessage="Please Enter Country!" ForeColor="Red"/>
            <br />
            PROVINCE:
            <asp:TextBox ID="PROVINCETextBox" runat="server" CssClass="form-control" Text='<%# Bind("PROVINCE") %>' />
            <asp:RequiredFieldValidator runat="server" ID="province" ControlToValidate="PROVINCETextBox" ErrorMessage="Please Enter Province!" ForeColor="Red"/>
            <br />
            CITY:
            <asp:TextBox ID="CITYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("CITY") %>' />
            <asp:RequiredFieldValidator runat="server" ID="city" ControlToValidate="CITYTextBox" ErrorMessage="Please Enter City!" ForeColor="Red"/>
            <br />
            STREET:
            <asp:TextBox ID="STREETTextBox" runat="server" CssClass="form-control" Text='<%# Bind("STREET") %>' />
            <asp:RequiredFieldValidator runat="server" ID="street" ControlToValidate="STREETTextBox" ErrorMessage="Please Enter Street!" ForeColor="Red"/>
            <br />
            HOUSE_NO:
            <asp:TextBox ID="HOUSE_NOTextBox" runat="server" CssClass="form-control" Text='<%# Bind("HOUSE_NO") %>' />
            <asp:RequiredFieldValidator runat="server" ID="house" ControlToValidate="HOUSE_NOTextBox" ErrorMessage="Please Enter House No!" ForeColor="Red"/>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-primary" Text="Add New Address" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-dark table-hover" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField HeaderText="ACTION" ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
            <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
            <asp:BoundField DataField="HOUSE_NO" HeaderText="HOUSE_NO" SortExpression="HOUSE_NO" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;ADDRESSES&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESSES&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;PROVINCE&quot;, &quot;CITY&quot;, &quot;STREET&quot;, &quot;HOUSE_NO&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :PROVINCE, :CITY, :STREET, :HOUSE_NO)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESSES&quot;" UpdateCommand="UPDATE &quot;ADDRESSES&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;PROVINCE&quot; = :PROVINCE, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET, &quot;HOUSE_NO&quot; = :HOUSE_NO WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
        <DeleteParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="COUNTRY" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="HOUSE_NO" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="COUNTRY" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="HOUSE_NO" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
