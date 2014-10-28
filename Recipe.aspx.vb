
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        FormView1.Focus()

    End Sub

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedRecipe As String = e.Values("recipeName").ToString()
        lbl_deleted.Text = deletedRecipe & "has been deleted from the database"
        Response.AddHeader("REFRESH", "3;URL=./Home.aspx")

    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.AddHeader("REFRESH", "3;URL=./Home.aspx")

    End Sub
End Class
