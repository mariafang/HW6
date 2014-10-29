<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="./CSS/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="RecipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" DeleteCommand="DELETE FROM [fang_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [fang_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [fang_HW6] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [fang_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>

        <div>
            <p>
                <h1>Wicked Easy Recipes</h1>
                
                <h2>Using 5 Ingredients or less!</h2>
               
            </p> 
         
            <br />

        </div>

        <div id="Nav">
            <asp:HyperLink ID="hl_Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>

        &nbsp;|
            <asp:HyperLink ID="hl_New" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
            <asp:HyperLink ID="hl_aboutUs" runat="server" NavigateUrl="~/AboutUs.aspx">About us</asp:HyperLink>
&nbsp;|
            <asp:HyperLink ID="hl_Contact" runat="server" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>

        </div>

        <br />

        <span id="Notes"><asp:Label ID="lbl_deleted" runat="server"></asp:Label></span>

        <br />

        <div>

            <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="RecipeDataSource">
                <EditItemTemplate>
                    <table>
                        <tr>
                            <td id="tb_left">
                                Recipe Name:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="recipeNameTextBox" runat="server" Text='<%# Bind("recipeName") %>' />                            
                            </td>
                            <td id="rfv">
                                <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter the recipe name!" ControlToValidate="recipeNameTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Submitted By:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="submittedByTextBox" runat="server" Text='<%# Bind("submittedBy") %>' />
                            </td>
                            <td id="rfv">
                                <asp:RequiredFieldValidator ID="rfv_submittedBy" runat="server" ErrorMessage="Please enter who submits the recipe!" ControlToValidate="submittedByTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #1:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="Ingred1TextBox" runat="server" Text='<%# Bind("Ingred1") %>' />
                            </td>
                            <td id="rfv">                   
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter at least one ingredient!" ID="rfv_ingred1" ControlToValidate="Ingred1TextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #2:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="Ingred2TextBox" runat="server" Text='<%# Bind("Ingred2") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #3:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="Ingred3TextBox" runat="server" Text='<%# Bind("Ingred3") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #4:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="Ingred4TextBox" runat="server" Text='<%# Bind("Ingred4") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #5:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="Ingred5TextBox" runat="server" Text='<%# Bind("Ingred5") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Preparation:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="PrepTextBox" runat="server" Text='<%# Bind("Prep") %>' />
                            </td>
                            <td id="rfv">
                                <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter how to prepare!" ControlToValidate="PrepTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Notes:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                            </td>
                        </tr>

                        <tr id="tb_bottom">
                            <td style="text-align:right">
                                <asp:Button ID="btn_Save" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />
                            </td>
                            <td>
                                <asp:Button ID="btn_Cancel" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>

                    </table>

                </EditItemTemplate>
                
                <ItemTemplate>
                    <table>
                        <tr>
                            <td id="tb_left">
                                Recipe Name:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="recipeNameLabel" runat="server" Text='<%# Bind("recipeName") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Submitted By:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="submittedByLabel" runat="server" Text='<%# Bind("submittedBy") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #1:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="Ingred1Label" runat="server" Text='<%# Bind("Ingred1") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #2:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="Ingred2Label" runat="server" Text='<%# Bind("Ingred2") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #3:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="Ingred3Label" runat="server" Text='<%# Bind("Ingred3") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #4:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="Ingred4Label" runat="server" Text='<%# Bind("Ingred4") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Ingredient #5:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="Ingred5Label" runat="server" Text='<%# Bind("Ingred5") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Preparation:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="PrepLabel" runat="server" Text='<%# Bind("Prep") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Notes:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                            </td>
                        </tr>

                        <tr id="tb_bottom">
                            <td>
                                <asp:Button ID="btn_Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Button ID="btn_Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            </td>
                        </tr>

                    </table>

                </ItemTemplate>

            </asp:FormView>

            

        </div>

        <div id="footer">
           © 2014 6K:183 Software Design & Development 
        </div>

    </form>
</body>
</html>
