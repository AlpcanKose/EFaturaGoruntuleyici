using System;
using System.IO;
using System.Text;
using System.Xml;
using System.Xml.Xsl;
using SelectPdf;

namespace EFaturaGoruntuleyici
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(args.GetValue(0).ToString());//Görüntüsü yüklenecek olan XML dosyasının yolu.
            XmlNodeList xmlnodeInvoices = xmldoc.GetElementsByTagName("cbc:EmbeddedDocumentBinaryObject");
            int rightOne = 0;
            for (int i = 0; i < xmlnodeInvoices.Count; i++)
            {
                for (int j = 0; j < xmlnodeInvoices[i].Attributes.Count; j++)
                {
                    string attributeName = xmlnodeInvoices[i].Attributes[j].Name;
                    if (attributeName == "filename")
                    {
                        string attributeValue = xmlnodeInvoices[i].Attributes[j].Value;
                        string[] result = attributeValue.Split('.');
                        result[1] = result[1].ToLower();
                        if (result[1] == "xslt")
                        {
                            rightOne = i;
                        }
                    }
                }
            }
            string xslt = null;
            if (xmlnodeInvoices.Count == 0)
            {
                XmlDocument defaultXSLT = new XmlDocument();
                var x = Path.GetFullPath(".");
                defaultXSLT.Load("default.xslt");
                xslt = defaultXSLT.InnerXml;
            }
            else
            {
                byte[] value = Convert.FromBase64String(xmlnodeInvoices[rightOne].InnerText);
                xslt = ASCIIEncoding.UTF8.GetString(value);
            }
            string html = ConvertToHtml(xslt, xmldoc.InnerXml);
            File.WriteAllText("converted.html", html);
            HtmlToPdf htmlToPdf = new HtmlToPdf();
            PdfDocument pdfDocument = htmlToPdf.ConvertHtmlString(html);
            pdfDocument.Save("converted.pdf");

        }
        public static string ConvertToHtml(string transformXSL, string inputXML)
        {
            XslCompiledTransform proc = new XslCompiledTransform();
            XsltSettings settings = new XsltSettings();
            settings.EnableScript = true;

            using (StringReader sr = new StringReader(transformXSL))
            {
                using (XmlReader xr = XmlReader.Create(sr))
                {
                    proc.Load(xr, settings, null);
                }
            }
            string resultXML;
            using (StringReader sr = new StringReader(inputXML))
            {
                using (XmlReader xr = XmlReader.Create(sr))
                {
                    using (StringWriter sw = new StringWriter())
                    {
                        proc.Transform(xr, null, sw);
                        resultXML = sw.ToString();
                    }
                }
            }
            return resultXML;
        }
    }
}
