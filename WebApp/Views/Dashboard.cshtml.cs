using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebApp.Views
{
    public class Dashboard : PageModel
    {
        private readonly ILogger<Dashboard> _logger;
        public Dashboard(ILogger<Dashboard> logger)
        {
            _logger = logger;
        }
        public void OnGet()
        {
        }
    }
}
