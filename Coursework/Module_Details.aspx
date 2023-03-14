<%@ Page Title="Module Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Module_Details.aspx.cs" Inherits="Coursework.Module_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" CssClass="col-md-4">
        <InsertItemTemplate>
            MODULE_CODE:
            <asp:TextBox ID="MODULE_CODETextBox" runat="server" CssClass="form-control" Text='<%# Bind("MODULE_CODE") %>' />
            <asp:RequiredFieldValidator runat="server" ID="code" ControlToValidate="MODULE_CODETextBox" ErrorMessage="Please Enter Module Code!" ForeColor="Red"/>
            <br />
            MODULE_NAME:
            <asp:TextBox ID="MODULE_NAMETextBox" runat="server" CssClass="form-control" Text='<%# Bind("MODULE_NAME") %>' />
            <asp:RequiredFieldValidator runat="server" ID="name" ControlToValidate="MODULE_NAMETextBox" ErrorMessage="Please Enter Module Name!" ForeColor="Red"/>
            <br />
            CREDIT_HOURS:
            <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" CssClass="form-control" Text='<%# Bind("CREDIT_HOURS") %>' />
            <asp:RequiredFieldValidator runat="server" ID="credit" ControlToValidate="CREDIT_HOURSTextBox" ErrorMessage="Please Enter Credit Hours!" ForeColor="Red"/>
            <br />
            COURSE:
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="COURSE_NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSES_COURSE_ID") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_NAME&quot; FROM &quot;COURSES&quot;"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-primary" Text="Add New Module" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-dark table-hover" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField HeaderText="ACTION" ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
            <asp:BoundField DataField="COURSES_COURSE_ID" HeaderText="COURSE" SortExpression="COURSES_COURSE_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;MODULES&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULES&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOURS&quot;, &quot;COURSES_COURSE_ID&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOURS, :COURSES_COURSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULES&quot;" UpdateCommand="UPDATE &quot;MODULES&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS, &quot;COURSES_COURSE_ID&quot; = :COURSES_COURSE_ID WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
        <DeleteParameters>
            <asp:Parameter Name="MODULE_CODE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MODULE_CODE" Type="String" />
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOURS" Type="String" />
            <asp:Parameter Name="COURSES_COURSE_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOURS" Type="String" />
            <asp:Parameter Name="COURSES_COURSE_ID" Type="String" />
            <asp:Parameter Name="MODULE_CODE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
