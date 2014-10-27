<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="./CSS/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="RecipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" DeleteCommand="DELETE FROM [fang_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [fang_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [fang_HW6]" UpdateCommand="UPDATE [fang_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
            <asp:HyperLink ID="HyperLink1" runat="server">Home</asp:HyperLink>

        &nbsp;|
            <asp:HyperLink ID="HyperLink2" runat="server">New Recipe</asp:HyperLink>
&nbsp;|
            <asp:HyperLink ID="HyperLink3" runat="server">About us</asp:HyperLink>
&nbsp;|
            <asp:HyperLink ID="HyperLink4" runat="server">Contact</asp:HyperLink>

        </div>

        <br />
        <br />

        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="RecipeDataSource" CssClass="cssgridview">
                <Columns>
                    <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                    <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                    <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="Recipe.aspx?recipeID={0}" Text="Select" />
                </Columns>
            </asp:GridView>

        </div>

        <div id="footer">
           © 2014 6K:183 Software Design & Development 
        </div>

    </form>
</body>
</html>
