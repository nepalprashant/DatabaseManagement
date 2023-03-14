<%@ Page Title="Student Payments" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Student_Payments.aspx.cs" Inherits="Coursework.Student_Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body row g-3">
            <div class="col-auto">
                <label class="form-label form-control text-white bg-primary">Select Student</label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID">
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENTS&quot;"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" CssClass="table table-dark table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="FULL NAME" HeaderText="FULL NAME" SortExpression="FULL NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="HOUSE" HeaderText="HOUSE" SortExpression="HOUSE" />
                <asp:BoundField DataField="COURSE" HeaderText="COURSE" SortExpression="COURSE" />
                <asp:BoundField DataField="PAID_AMOUNT" HeaderText="PAID_AMOUNT" SortExpression="PAID_AMOUNT" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT STUDENTS.STUDENT_ID, STUDENTS.STUDENT_NAME AS &quot;FULL NAME&quot;, STUDENTS.STUDENT_EMAIL AS EMAIL, ADDRESSES.STREET||', '||ADDRESSES.CITY AS ADDRESS, ADDRESSES.HOUSE_NO AS HOUSE, COURSES.COURSE_NAME AS COURSE, FEES.PAID_AMOUNT, FEES.FEE_STATUS AS STATUS, TO_CHAR(FEES.PAYMENT_DATE, 'DD-MON-RR') PAYMENT_DATE FROM STUDENTS, ADDRESSES, COURSES, FEES WHERE STUDENTS.ADDRESSES_ADDRESS_ID = ADDRESSES.ADDRESS_ID AND STUDENTS.COURSES_COURSE_ID = COURSES.COURSE_ID AND STUDENTS.STUDENT_ID = FEES.STUDENTS_STUDENT_ID AND STUDENTS.STUDENT_ID = :STUDENT_ID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
