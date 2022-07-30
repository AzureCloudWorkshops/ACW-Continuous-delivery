using api.Controllers;
using NUnit.Framework;

namespace tests;

public class Tests
{
    private WeatherForecastController _target;

    [SetUp]
    public void Setup()
    {
        _target = new WeatherForecastController();
    }

    [Test]
    public void Test1()
    {
        Assert.Pass();
    }

    [Test]
    public void GivenGetIsCalled_ItReturnsAnIEnumerableOfLength1to5()
    {
        // We are going to call this 15 times and assert it's always between 1 - 5 records
        for (int i = 0; i < 15; i++)
        {
            var result = _target.Get();
            Assert.IsTrue(result.Count > 0 && result.Count < 6);
        }
    }
}