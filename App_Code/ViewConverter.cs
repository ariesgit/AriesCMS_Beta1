
#region Copyright
// 
// Aries TCO, Inc.® - http://www.ariestco.com
// Copyright (c) 2002-2014
// by Aries TCO, Inc.
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated 
// documentation files (the "Software"), to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and 
// to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions 
// of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
// TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
// CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
#endregion




using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.IO;

namespace AriesCMS
{
    public class ViewConverter
    {

        public virtual string RenderViewToString(ControllerContext controllerContext,
              string viewPath,
              string masterPath,
              ViewDataDictionary viewData,
              TempDataDictionary tempData)
        {
            Stream filter = null;

            ViewPage viewPage = new ViewPage();
            StringWriter sw = new StringWriter();
            //HtmlTextWriter sw = new HtmlTextWriter();
            //Right, create our view
            viewPage.ViewContext = new ViewContext(controllerContext, new WebFormView(controllerContext, viewPath), viewData, tempData, sw);

            //Get the response context, flush it and get the response filter.
            var response = viewPage.ViewContext.HttpContext.Response;
            response.Flush();
            var oldFilter = response.Filter;

            try
            {
                //Put a new filter into the response
                filter = new MemoryStream();
                response.Filter = filter;

                //Now render the view into the memorystream and flush the response
                viewPage.ViewContext.View.Render(viewPage.ViewContext, viewPage.ViewContext.HttpContext.Response.Output);
                response.Flush();

                //Now read the rendered view.
                filter.Position = 0;
                var reader = new StreamReader(filter, response.ContentEncoding);
                return reader.ReadToEnd();
            }
            finally
            {
                //Clean up.
                if (filter != null)
                {
                    filter.Dispose();
                }

                //Now replace the response filter
                response.Filter = oldFilter;
            }
        }
    }
}