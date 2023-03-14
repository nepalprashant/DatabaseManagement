<%@ Page Title="Course Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Course_Details.aspx.cs" Inherits="Coursework.Course_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1" CssClass="col-md-4">
        <InsertItemTemplate>
            COURSE_ID:
            <asp:TextBox ID="COURSE_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("COURSE_ID") %>' />
            <asp:RequiredFieldValidator runat="server" ID="id" ControlToValidate="COURSE_IDTextBox" ErrorMessage="Please Enter Course ID!" ForeColor="Red"/>
            <br />
            COURSE_NAME:
            <asp:TextBox ID="COURSE_NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("COURSE_NAME") %>' />
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="COURSE_NAMETextBox" ErrorMessage="Please Enter Course Name!" ForeColor="Red"/>
            <br />
            COURSE_FEE:
            <asp:TextBox ID="COURSE_FEETextBox" CssClass="form-control" runat="server" Text='<%# Bind("COURSE_FEE") %>' />
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="COURSE_FEETextBox" ErrorMessage="Please Enter Course Fee!" ForeColor="Red"/>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-primary" Text="Add New Course" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-dark table-hover" AutoGenerateColumns="False" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField HeaderText="ACTION" ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
            <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" SortExpression="COURSE_NAME" />
            <asp:BoundField DataField="COURSE_FEE" HeaderText="COURSE_FEE" SortExpression="COURSE_FEE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;COURSES&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID" InsertCommand="INSERT INTO &quot;COURSES&quot; (&quot;COURSE_ID&quot;, &quot;COURSE_NAME&quot;, &quot;COURSE_FEE&quot;) VALUES (:COURSE_ID, :COURSE_NAME, :COURSE_FEE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_NAME&quot;, &quot;COURSE_FEE&quot; FROM &quot;COURSES&quot;" UpdateCommand="UPDATE &quot;COURSES&quot; SET &quot;COURSE_NAME&quot; = :COURSE_NAME, &quot;COURSE_FEE&quot; = :COURSE_FEE WHERE &quot;COURSE_ID&quot; = :COURSE_ID">
        <DeleteParameters>
            <asp:Parameter Name="COURSE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="COURSE_ID" Type="String" />
            <asp:Parameter Name="COURSE_NAME" Type="String" />
            <asp:Parameter Name="COURSE_FEE" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="COURSE_NAME" Type="String" />
            <asp:Parameter Name="COURSE_FEE" Type="Decimal" />
            <asp:Parameter Name="COURSE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
