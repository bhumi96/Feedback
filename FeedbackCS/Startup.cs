using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FeedbackCS.Startup))]
namespace FeedbackCS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
