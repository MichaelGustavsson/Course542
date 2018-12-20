using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(XSLTDemo.Startup))]
namespace XSLTDemo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
