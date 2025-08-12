using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebApp.Views
{
    public class Storage : PageModel
    {
        private readonly ILogger<Storage> _logger;
        public Storage(ILogger<Storage> logger)
        {
            _logger = logger;
        }
        public void OnGet()
        {
        }
    }
}
