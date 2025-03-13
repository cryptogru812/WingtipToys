<%@ Application Language="C#" %>
<%@ Import Namespace="WingtipToys" %>
<%@ Import Namespace="WingtipToys.Models" %>
<%@ Import Namespace="WingtipToys.Logic" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data.Entity" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

        // Initialize the product database
        Database.SetInitializer(new ProductDatabaseInitializer());

        // Create the custom role and user.
        RoleActions roleActions = new RoleActions();
        roleActions.AddUserAndRole();

        // Add Routes.
        RegisterCustomRoutes(RouteTable.Routes);
    }

    void RegisterCustomRoutes(RouteCollection routes)
    {
        routes.MapPageRoute(
            "ProductsByCategoryRoute",
            "Category/{categoryName}",
            "~/ProductList.aspx"
        );
        routes.MapPageRoute(
            "ProductByNameRoute",
            "Product/{productName}",
            "~/ProductDetails.aspx"
        );
    }

    void Application_Error(object sender, EventArgs e)
    {
        Exception exec = Server.GetLastError();

        if (exec is HttpUnhandledException)
        {
            if (exec.InnerException != null)
            {
                exec = new Exception(exec.InnerException.Message);
                // Pass the error on the error page.
                Server.Transfer("ErrorPage.aspx?handler=Application_Error%20-%20Global.asax", true);
            }
        }
    }

</script>
