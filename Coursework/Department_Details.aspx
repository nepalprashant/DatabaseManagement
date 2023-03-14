<%@ Page Title="Department Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Department_Details.aspx.cs" Inherits="Coursework.Department_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" CssClass="col-md-4">
        <InsertItemTemplate>
            DEPARTMENT_ID:
            <asp:TextBox ID="DEPARTMENT_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
            <asp:RequiredFieldValidator runat="server" ID="id" ControlToValidate="DEPARTMENT_IDTextBox" ErrorMessage="Please Enter Department ID!" ForeColor="Red"/>
            <br />
            DEPARTMENT_NAME:
            <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" CssClass="form-control" Text='<%# Bind("DEPARTMENT_NAME") %>' />
            <asp:RequiredFieldValidator runat="server" ID="name" ControlToValidate="DEPARTMENT_NAMETextBox" ErrorMessage="Please Enter Department Name!" ForeColor="Red"/>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-primary" Text="Add New Department" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" AutoGenerateColumns="False" CssClass="table table-dark table-hover" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" HeaderText="ACTION" ControlStyle-CssClass="btn btn-secondary" ShowEditButton="True" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;DEPARTMENTS&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENTS&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENTS&quot;" UpdateCommand="UPDATE &quot;DEPARTMENTS&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
