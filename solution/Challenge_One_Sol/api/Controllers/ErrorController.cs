using Microsoft.AspNetCore.Mvc;

namespace api.Controllers;

[ApiController]
[Route("[controller]")]
public class ErrorController : ControllerBase
{
    public ErrorController()
    {
    }
    // Throws an exception to test the error handling in app insights.
    [HttpGet(Name = "ThrowException")]
    public void Get()
    {
        throw new Exception();
    }
}
