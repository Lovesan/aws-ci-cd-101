using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AwsCICD101.Test
{
    [TestClass]
    public class ExampleTest
    {
        [TestMethod]
        public void TestAdd()
        {
            var ex = new ExampleClass();
            var res = ex.Add(1, 2);
            Assert.AreEqual(3, res);
        }
    }
}
