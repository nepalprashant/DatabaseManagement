<%@ Page Title="Teacher Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Teacher_Details.aspx.cs" Inherits="Coursework.Teacher_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" CssClass="col-md-4">
    <InsertItemTemplate>
        TEACHER_ID:
        <asp:TextBox ID="TEACHER_IDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("TEACHER_ID") %>' />
        <asp:RequiredFieldValidator runat="server" ID="teacher" ControlToValidate="TEACHER_IDTextBox" ErrorMessage="Please Enter Teacher ID!" ForeColor="Red"/>
        <br />
        TEACHER_NAME:
        <asp:TextBox ID="TEACHER_NAMETextBox" runat="server" CssClass="form-control" Text='<%# Bind("TEACHER_NAME") %>' />
        <asp:RequiredFieldValidator runat="server" ID="name" ControlToValidate="TEACHER_NAMETextBox" ErrorMessage="Please Enter Teacher Name!" ForeColor="Red"/>
        <br />
        EMAIL:
        <asp:TextBox ID="EMAILTextBox" runat="server" CssClass="form-control" Text='<%# Bind("EMAIL") %>' />
        <asp:RequiredFieldValidator runat="server" ID="email" ControlToValidate="EMAILTextBox" ErrorMessage="Please Enter E-mail!" ForeColor="Red"/>
        <br />
        DEPARTMENT:
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_ID" SelectedValue='<%# Bind("DEPARTMENTS_DEPARTMENT_ID") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot; FROM &quot;DEPARTMENTS&quot;"></asp:SqlDataSource>
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-primary" Text="Insert New Teacher" />
    </ItemTemplate>
    </asp:FormView>
    </div>
</div>
<br />
<div class="card">
        <div class="card-body">
<asp:GridView ID="GridView1" PageSize="5" CssClass="table table-dark table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField HeaderText="ACTION" ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
        <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        <asp:BoundField DataField="DEPARTMENTS_DEPARTMENT_ID" HeaderText="DEPARTMENT" SortExpression="DEPARTMENTS_DEPARTMENT_ID" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;TEACHERS&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHERS&quot; (&quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;EMAIL&quot;, &quot;DEPARTMENTS_DEPARTMENT_ID&quot;) VALUES (:TEACHER_ID, :TEACHER_NAME, :EMAIL, :DEPARTMENTS_DEPARTMENT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHERS&quot;" UpdateCommand="UPDATE &quot;TEACHERS&quot; SET &quot;TEACHER_NAME&quot; = :TEACHER_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;DEPARTMENTS_DEPARTMENT_ID&quot; = :DEPARTMENTS_DEPARTMENT_ID WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
    <DeleteParameters>
        <asp:Parameter Name="TEACHER_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TEACHER_ID" Type="String" />
        <asp:Parameter Name="TEACHER_NAME" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="DEPARTMENTS_DEPARTMENT_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TEACHER_NAME" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="DEPARTMENTS_DEPARTMENT_ID" Type="String" />
        <asp:Parameter Name="TEACHER_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    </div>
</div>
    
</asp:Content>
