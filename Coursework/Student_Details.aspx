<%@ Page Title="Student Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Student_Details.aspx.cs" Inherits="Coursework.Student_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card">
        <div class="card-body">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID"
                DataSourceID="SqlDataSource1" CssClass="col-md-4">
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" CssClass="form-control"
                        Text='<%# Bind("STUDENT_ID") %>' />
                    <asp:RequiredFieldValidator runat="server" ID="id" ControlToValidate="STUDENT_IDTextBox" ErrorMessage="Please Enter Student ID!" ForeColor="Red"/>
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" CssClass="form-control"
                        Text='<%# Bind("STUDENT_NAME") %>' />
                    <asp:RequiredFieldValidator runat="server" ID="name" ControlToValidate="STUDENT_NAMETextBox" ErrorMessage="Please Enter Student Name!" ForeColor="Red"/>
                    <br />
                    STUDENT_EMAIL:
                    <asp:TextBox ID="STUDENT_EMAILTextBox" runat="server" CssClass="form-control"
                        Text='<%# Bind("STUDENT_EMAIL") %>' />
                    <asp:RequiredFieldValidator runat="server" ID="email" ControlToValidate="STUDENT_EMAILTextBox" ErrorMessage="Please Enter E-mail!" ForeColor="Red"/>
                    <br />
                    ADDRESS:
                    <br />
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="ADDRESS" DataValueField="ADDRESS_ID" SelectedValue='<%# Bind("ADDRESSES_ADDRESS_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;HOUSE_NO&quot;||', '||&quot;STREET&quot;||', '||&quot;CITY&quot;||', '||&quot;PROVINCE&quot; AS ADDRESS FROM &quot;ADDRESSES&quot; ORDER BY PROVINCE"></asp:SqlDataSource>
                    <br />
                    COURSE:
                    <br />
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="COURSE_NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSES_COURSE_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_NAME&quot; FROM &quot;COURSES&quot;"></asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True"
                        CssClass="btn btn-primary" CommandName="Insert" Text="Insert" />
                    &nbsp;
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-primary"
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                        CssClass="btn btn-primary" Text="Insert New Student" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
    <br />
    <div class="card">
        <div class="card-body">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" AutoGenerateColumns="False"
                DataKeyNames="STUDENT_ID" CssClass="table table-dark table-hover"
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField HeaderText="ACTION" ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True"
                        SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME"
                        SortExpression="STUDENT_NAME" />
                    <asp:BoundField DataField="STUDENT_EMAIL" HeaderText="STUDENT_EMAIL"
                        SortExpression="STUDENT_EMAIL" />
                    <asp:BoundField DataField="ADDRESSES_ADDRESS_ID" HeaderText="ADDRESS"
                        SortExpression="ADDRESSES_ADDRESS_ID" />
                    <asp:BoundField DataField="COURSES_COURSE_ID" HeaderText="COURSE"
                        SortExpression="COURSES_COURSE_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
                ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>"
                SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;STUDENT_EMAIL&quot;, &quot;ADDRESSES_ADDRESS_ID&quot;, &quot;COURSES_COURSE_ID&quot; FROM &quot;STUDENTS&quot;"
                DeleteCommand="DELETE FROM &quot;STUDENTS&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID"
                InsertCommand="INSERT INTO &quot;STUDENTS&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;STUDENT_EMAIL&quot;, &quot;ADDRESSES_ADDRESS_ID&quot;, &quot;COURSES_COURSE_ID&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :STUDENT_EMAIL, :ADDRESSES_ADDRESS_ID, :COURSES_COURSE_ID)"
                UpdateCommand="UPDATE &quot;STUDENTS&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;STUDENT_EMAIL&quot; = :STUDENT_EMAIL, &quot;ADDRESSES_ADDRESS_ID&quot; = :ADDRESSES_ADDRESS_ID, &quot;COURSES_COURSE_ID&quot; = :COURSES_COURSE_ID WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="STUDENT_EMAIL" Type="String" />
                    <asp:Parameter Name="ADDRESSES_ADDRESS_ID" Type="String" />
                    <asp:Parameter Name="COURSES_COURSE_ID" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
