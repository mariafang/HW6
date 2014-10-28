<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
            <asp:HyperLink ID="hl_Home" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>

        &nbsp;|
            <asp:HyperLink ID="hl_New" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
            <asp:HyperLink ID="hl_aboutUs" runat="server" NavigateUrl="~/AboutUs.aspx">About us</asp:HyperLink>
&nbsp;|
            <asp:HyperLink ID="hl_Contact" runat="server" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>

        </div>

        <br />
        <br />

        <div id="Main">
            
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, tellus sit amet feugiat euismod, velit lectus pellentesque nisi, non eleifend quam ipsum at arcu. Sed semper mi a tristique porttitor. Morbi rhoncus diam dui, a ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices. Nullam laoreet volutpat dolor in convallis. Ut ornare mollis odio at luctus. Morbi nec blandit justo. Donec porta sagittis euismod. Cras quis congue dui. Nunc at lorem ac diam vestibulum placerat quis eu nibh. In hac habitasse platea dictumst. 
            </p>

            <p>    
                Etiam vel lorem nec justo suscipit ornare. Sed risus urna, gravida nec convallis eu, viverra nec sem. Sed eget mauris magna. Sed vulputate tortor in tempus fringilla. Donec in commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut dui quam, imperdiet ornare est non, accumsan vulputate justo. Vestibulum sit amet erat a nunc consectetur pellentesque. Aenean imperdiet tellus nec augue eleifend condimentum.
            </p>

        </div>

        <div id="footer">
           © 2014 6K:183 Software Design & Development 
        </div>

    </form>
</body>
</html>
