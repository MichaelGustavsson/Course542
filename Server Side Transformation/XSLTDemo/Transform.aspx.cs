using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;

namespace XSLTDemo
{
    public partial class Transform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TransformButton_Click(object sender, EventArgs e)
        {
            XsltArgumentList args = new XsltArgumentList();
            XslCompiledTransform xsl = new XslCompiledTransform();

            args.AddExtensionObject(ExtensionDemo.Namespace, new ExtensionDemo());

            xsl.Load(Server.MapPath("Xml/flights-html.xsl"));

            Response.Clear();
            Response.ContentType = "text/xml";

            xsl.Transform(Server.MapPath("Xml/Flights.xml"), args, Response.OutputStream);

            Response.End();
        }
    }

    public class ExtensionDemo
    {
        public const string Namespace = "http://XsltDemoExtensions.XsltFunctions/1.0";

        public string Greeting()
        {
            return "Hello from .net C# extension method";
        }
    }
}