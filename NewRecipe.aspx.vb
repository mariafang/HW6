
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load

        FormView1.Focus()

    End Sub


    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Dim InsertedRecipe As String = e.Values("recipeName").ToString()
        lbl_Inserted.Text = InsertedRecipe & "has been added to the database"
        Response.AddHeader("REFRESH", "3;URL=./Home.aspx")

    End Sub
End Class
