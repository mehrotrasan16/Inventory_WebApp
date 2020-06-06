﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabPage.aspx.cs" Inherits="Inventory_WebApp.Pages.LabPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a New Lab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css" />
    <!-- Load Font Awesome 5 -->
    <script defer="" src="https://use.fontawesome.com/releases/v5.8.1/js/all.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="hero is-primary is-bold">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">Inventory @ ETS
                    </h1>
                    <h2 class="subtitle">Department of Engineering
                    </h2>
                </div>
            </div>
            <div class="hero-foot is-primary">
            </div>
        </section>
        <div class="tabs">
            <ul>
                <li class="is-active"><a href="LabPage.aspx">Labs</a></li>
                <li><a href="ItemsPage.aspx">Items</a></li>
                <li><a href="InventoryPage.aspx">Inventory</a></li>
                <li><a href="SuppliersPage.aspx">Suppliers</a></li>
                <li><a href="DB_Select_Page.aspx">Choose your DB</a></li>
            </ul>
        </div>
        <div class="columns ">
            <div class="column box has-text-centered">
                <asp:GridView runat="server" ID="gvitem" CssClass="table"
                    HorizontalAlign="Center"
                    BorderColor="000080"
                    BorderWidth="2px"
                    Width="100%"
                    AllowPaging="true"
                    AllowSorting="true"
                    PageSize="10"
                    PagerSettings-Position="Bottom"
                    PagerSettings-Mode="Numeric"
                    PagerStyle-HorizontalAlign="Center" PagerSettings-NextPageText="Next" PagerSettings-PreviousPageText="Prev" AutoGenerateDeleteButton="true" OnPageIndexChanging="gvitem_PageIndexChanging">
                    <Columns>
                        <asp:ButtonField CommandName="increment" Text="<i class='fa fa-info'></i>"
                            ButtonType="Link"
                            ControlStyle-CssClass="btn btn-primary" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
                <asp:Button ID="btnLoad" runat="server" OnClick="btnLoad_Click" Text="Load Table" CssClass="button" />
            </div>
            <div class="column">
                <div class="box">
                    <div class="columns">
                        <div class="column">
                            <div class="field">
                                <asp:Label ID="Label1" CssClass="label" runat="server">Lab Name:   </asp:Label>
                                <div class="control">
                                    <asp:TextBox ID="txtInsertLab" CssClass="input" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="field">
                                <asp:Label ID="Label3" CssClass="label" runat="server">Building:   </asp:Label>
                                <div class="control">
                                    <asp:TextBox ID="txtInsertBuilding" CssClass="input" runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="field">
                                <asp:Label ID="Label2" CssClass="label" runat="server">Classroom:   </asp:Label>
                                <div class="control">
                                    <asp:TextBox ID="txtInsertRoom" CssClass="input" runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="field is-grouped">
                                <div class="control has-text-centered">
                                    <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" CssClass="button" />
                                </div>
                                <br />
                                <asp:Label ID="lblInsertInfo" runat="server" CssClass="label" ForeColor="Red"></asp:Label>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="columns">
                        <div class="column">
                            <div class="field">
                                <asp:Label ID="Label4" CssClass="label" runat="server">Lab Name:   </asp:Label>
                                <div class="control">
                                    <asp:TextBox ID="txtUpdateLab" CssClass="input" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="field">
                                <asp:Label ID="Label5" CssClass="label" runat="server">Building:   </asp:Label>
                                <div class="control">
                                    <asp:TextBox ID="txtUpdateBuilding" CssClass="input" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="field">
                                <asp:Label ID="Label6" CssClass="label" runat="server">Classroom:   </asp:Label>
                                <div class="control">
                                    <asp:TextBox ID="txtUpdateRoom" CssClass="input" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="field is-grouped">
                                <div class="control">
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="button" />
                                </div>
                                <asp:Label ID="lblUpdateInfo" CssClass="label" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="field">
                        <asp:Label runat="server" CssClass="label">Column: </asp:Label>
                        <div class="control">
                            <asp:DropDownList ID="ddlColumn" CssClass="select" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="select">
                        <select>
                            <option>Select dropdown</option>
                            <option>With options</option>
                        </select>
                    </div>

                    <div class="field">
                        <div class="control">
                            <asp:TextBox ID="txtSearchtext" CssClass="input" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="field is-grouped">
                        <div class="control">
                            <asp:Button runat="server" ID="btnSearch" OnClick="btnSearch_Click" Text="Search" CssClass="button" />
                        </div>
                        <asp:Label ID="lblSearchInfo" CssClass="label" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    <asp:DataGrid runat="server" ID="dgSearchResult" AllowPaging="true" PageSize="5" CssClass="table"></asp:DataGrid>
                </div>
            </div>
        </div>
    </form>
</body>
</html>