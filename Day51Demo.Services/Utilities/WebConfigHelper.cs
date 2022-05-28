using System.Configuration;

namespace Day51Demo.Services.Utilities
{
    public static class WebConfigHelper
    {
        public static string ConnectionString => 
            ConfigurationManager.ConnectionStrings["UserManagementConnection"].ConnectionString;
    }
}
