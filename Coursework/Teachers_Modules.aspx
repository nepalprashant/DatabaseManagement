<%@ Page Title="Teachers and Modules" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Teachers_Modules.aspx.cs" Inherits="Coursework.Teachers_Modules1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body row g-3">
            <div class="col-auto">
                <label class="form-label form-control text-white bg-primary">Select Teacher</label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TEACHER_NAME" DataValueField="TEACHER_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot; FROM &quot;TEACHERS&quot;"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-dark table-hover" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="FULL NAME" HeaderText="FULL NAME" SortExpression="FULL NAME" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="HOUSE" HeaderText="HOUSE" SortExpression="HOUSE" />
                    <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" SortExpression="DEPARTMENT" />
                    <asp:BoundField DataField="COURSE" HeaderText="COURSE" SortExpression="COURSE" />
                    <asp:BoundField DataField="MODULE" HeaderText="MODULE" SortExpression="MODULE" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;MODULES&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULES&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOURS&quot;, &quot;COURSES_COURSE_ID&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOURS, :COURSES_COURSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT TEACHERS.TEACHER_ID, TEACHERS.TEACHER_NAME AS &quot;FULL NAME&quot;, TEACHERS.EMAIL, ADDRESSES.STREET||', '||ADDRESSES.CITY AS ADDRESS, ADDRESSES.HOUSE_NO AS HOUSE, DEPARTMENTS.DEPARTMENT_NAME AS DEPARTMENT, COURSES.COURSE_NAME AS COURSE, MODULES.MODULE_NAME AS &quot;MODULE&quot;, MODULES.CREDIT_HOURS FROM COURSES, MODULES, TEACHERS_MODULES, TEACHERS, DEPARTMENTS, TEACHERS_ADDRESSES, ADDRESSES WHERE COURSES.COURSE_ID = MODULES.COURSES_COURSE_ID AND MODULES.MODULE_CODE = TEACHERS_MODULES.MODULES_MODULE_CODE AND TEACHERS_MODULES.TEACHERS_TEACHER_ID = TEACHERS.TEACHER_ID AND TEACHERS.DEPARTMENTS_DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID AND TEACHERS.TEACHER_ID = TEACHERS_ADDRESSES.TEACHERS_TEACHER_ID AND TEACHERS_ADDRESSES.ADDRESSES_ADDRESS_ID = ADDRESSES.ADDRESS_ID
AND TEACHERS.TEACHER_ID = :TEACHER_ID" UpdateCommand="UPDATE &quot;MODULES&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS, &quot;COURSES_COURSE_ID&quot; = :COURSES_COURSE_ID WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
                <DeleteParameters>
                    <asp:Parameter Name="MODULE_CODE" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MODULE_CODE" />
                    <asp:Parameter Name="MODULE_NAME" />
                    <asp:Parameter Name="CREDIT_HOURS" />
                    <asp:Parameter Name="COURSES_COURSE_ID" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MODULE_NAME" />
                    <asp:Parameter Name="CREDIT_HOURS" />
                    <asp:Parameter Name="COURSES_COURSE_ID" />
                    <asp:Parameter Name="MODULE_CODE" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
