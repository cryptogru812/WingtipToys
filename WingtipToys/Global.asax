<%@ Application Language="C#" %>
<%@ Import Namespace="WingtipToys" %>
<%@ Import Namespace="WingtipToys.Models" %>
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
    }

</script>
