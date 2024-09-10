<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateDelete.aspx.cs" Inherits="updateDelete.updateDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update/Delete</title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.bundle.min.js"></script>
    <style>
        .container {
            margin-top: 30px;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header">
                            <h4>Update/Delete Record</h4>
                        </div>
                        <div class="card-body">
                            <asp:Label ID="lblFname" Text="First Name" CssClass="form-label" runat="server" />
                            <asp:TextBox ID="txtFname" CssClass="form-control" runat="server" />
                            <asp:Button Text="Submit" ID="btnSubmit" CssClass="btn btn-primary" runat="server" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                    <div class="card mt-4">
                        <div class="card-header">
                            <h4>Records</h4>
                        </div>
                        <div class="card-body">
                            <asp:GridView ID="gridview1" AutoGenerateColumns="false" CssClass="table table-striped table-bordered" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="glblID" Text='<%#Eval("ID") %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Full Name">
                                        <ItemTemplate>
                                            <asp:Label ID="glblFname" Text='<%#Eval("FullName") %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Update/Delete">
                                        <ItemTemplate>
                                            <asp:Label ID="glblFname" Text='<%#Eval("FullName") %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
