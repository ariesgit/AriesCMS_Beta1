
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
using System.IO;
using System.Data;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using AriesGlobal;
using AriesDBConnector;
using AriesDBManager;
using AriesCMSInteractions;
using AriesCMSDefinition;
using ACMSDBView;

namespace AriesCMS.Modules.CMSAdmin.Controllers
{
    public class AdminAnalyticsController : Controller
    {
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();
        //
        // GET: /Default/
        string sModuleBase = "~/Modules/CMSAdmin";
        string sBasePage = "/Views/Screens/Index.cshtml";
        string _sViewToLoad = "";
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        int[] iAccessRolesAllowed = new int[1] { 1 };




        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Report_Value_PageViews(string _From, string _To)
        {
            string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
            string sCurrentURL = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            var oResponse = Json(new { RESPONSE = "ERROR" });

            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();

                            DateTime dtFrom = DateTime.Now.AddDays(-1);
                            DateTime dtTo = DateTime.Now;

                            try
                            {
                                dtFrom = DateTime.Parse(_From);
                            }
                            catch
                            {
                            }
                            try
                            {
                                dtTo = DateTime.Parse(_To);
                            }
                            catch
                            {
                            }


                            List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> dbData = oAnalytics.Get_Views_ByDate(dtFrom, dtTo, oSystem.cnCon);

                            string _ValueYesterday = "0";
                            string _ValueToday = "0";

                            if (dbData != null)
                            {
                                if (dbData.Count > 0)
                                {
                                    try
                                    {
                                        _ValueYesterday = dbData[0].Value;
                                    }
                                    catch
                                    {
                                        _ValueYesterday = "0";
                                    }
                                    try
                                    {
                                        _ValueToday = dbData[1].Value;
                                    }
                                    catch
                                    {
                                        _ValueToday = "0";
                                    }
                                }
                            }

                            #region Set default empty values to prevent javascript chart issues if the values are empty
                            if (String.IsNullOrEmpty(_ValueYesterday))
                            {
                                _ValueYesterday = "0";
                            }

                            if (String.IsNullOrEmpty(_ValueToday))
                            {
                                _ValueToday = "0";
                            }
                            #endregion

                            oResponse = Json(new { RESPONSE = "SUCCESS", PVYesterday = _ValueYesterday, PVToday = _ValueToday });
                        }
                    }
                }
            }
            catch (Exception s)
            {

            }

            oSystem.CloseDataConnection();//Forms
            return oResponse;
        }


        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Report_Value_RegisteredUsers(string _From, string _To)
        {
            string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
            string sCurrentURL = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            var oResponse = Json(new { RESPONSE = "ERROR" });

            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();

                            DateTime dtFrom = DateTime.Now.AddDays(-1);
                            DateTime dtTo = DateTime.Now;

                            try
                            {
                                dtFrom = DateTime.Parse(_From);
                            }
                            catch
                            {
                            }
                            try
                            {
                                dtTo = DateTime.Parse(_To);
                            }
                            catch
                            {
                            }

                            List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> dbData = oAnalytics.Get_UserCount_ByDate(dtFrom, dtTo, oSystem.cnCon);

                            string _ValueYesterday = "0";
                            string _ValueToday = "0";

                            if (dbData != null)
                            {
                                if (dbData.Count > 0)
                                {
                                    try
                                    {
                                        _ValueYesterday = dbData[0].Value;
                                    }
                                    catch
                                    {
                                        _ValueYesterday = "0";
                                    }
                                    try
                                    {
                                        _ValueToday = dbData[1].Value;
                                    }
                                    catch
                                    {
                                        _ValueToday = "0";
                                    }
                                }
                            }

                            #region Set default empty values to prevent javascript chart issues if the values are empty
                            if (String.IsNullOrEmpty(_ValueYesterday))
                            {
                                _ValueYesterday = "0";
                            }

                            if (String.IsNullOrEmpty(_ValueToday))
                            {
                                _ValueToday = "0";
                            }
                            #endregion

                            oResponse = Json(new { RESPONSE = "SUCCESS", UCYesterday = _ValueYesterday, UCToday = _ValueToday });
                        }
                    }
                }
            }
            catch (Exception s)
            {
            }

            oSystem.CloseDataConnection();//Forms
            return oResponse;
        }


        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Report_Value_UniqueSiteVisitors(string _From, string _To)
        {
            string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
            string sCurrentURL = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            var oResponse = Json(new { RESPONSE = "ERROR" });

            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();

                            DateTime dtFrom = DateTime.Now.AddDays(-1);
                            DateTime dtTo = DateTime.Now;

                            try
                            {
                                dtFrom = DateTime.Parse(_From);
                            }
                            catch
                            {
                            }
                            try
                            {
                                dtTo = DateTime.Parse(_To);
                            }
                            catch
                            {
                            }

                            List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> dbData = oAnalytics.Get_Visits_ByDate(dtFrom, dtTo, oSystem.cnCon);

                            string _ValueYesterday = "0";
                            string _ValueToday = "0";

                            if (dbData != null)
                            {
                                if (dbData.Count > 0)
                                {
                                    try
                                    {
                                        _ValueYesterday = dbData[0].Value;
                                    }
                                    catch
                                    {
                                        _ValueYesterday = "0";
                                    }
                                    try
                                    {
                                        _ValueToday = dbData[1].Value;
                                    }
                                    catch
                                    {
                                        _ValueToday = "0";
                                    }
                                }
                            }

                            #region Set default empty values to prevent javascript chart issues if the values are empty
                            if (String.IsNullOrEmpty(_ValueYesterday))
                            {
                                _ValueYesterday = "0";
                            }

                            if (String.IsNullOrEmpty(_ValueToday))
                            {
                                _ValueToday = "0";
                            }
                            #endregion

                            oResponse = Json(new { RESPONSE = "SUCCESS", PVYesterday = _ValueYesterday, PVToday = _ValueToday });
                        }
                    }
                }
            }
            catch (Exception s)
            {

            }

            oSystem.CloseDataConnection();
            return oResponse;
        }


        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Report_ChartData_PageViews(string _From, string _To)
        {
            string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
            string sCurrentURL = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            var oResponse = Json(new { RESPONSE = "ERROR" });

            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();

                            DateTime dtFrom = DateTime.Now.AddDays(-1);
                            DateTime dtTo = DateTime.Now;

                            try
                            {
                                dtFrom = DateTime.Parse(_From);
                            }
                            catch
                            {
                            }
                            try
                            {
                                dtTo = DateTime.Parse(_To);
                            }
                            catch
                            {
                            }
                            List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> dbData = oAnalytics.Get_PageViews_ByDate(dtFrom, dtTo, oSystem.cnCon);

                            //string sLabels = "Index, SignUp, Portal";
                            //string sLabelValues = "100,900,45";

                            string sLabels = "";
                            string sLabelValues = "";

                            if (dbData != null)
                            {
                                if (dbData.Count > 0)
                                {
                                    for (int i = 0; i < dbData.Count; i++)
                                    {
                                        if (i > 0)
                                        {
                                            //sLabels += "," + dbData[i].Label;
                                            sLabels += "," + dbData[i].Value2.Replace("View of ", "");
                                            sLabelValues += "," + dbData[i].Value;
                                        }
                                        else
                                        {
                                            //sLabels += "," + dbData[i].Label;
                                            sLabels = dbData[i].Value2.Replace("View of ", "");
                                            sLabelValues = dbData[i].Value;
                                        }
                                    }
                                }
                            }

                            #region Set default empty values to prevent javascript chart issues if the values are empty
                            if (String.IsNullOrEmpty(sLabels))
                            {
                                sLabels = "none";
                            }

                            if (String.IsNullOrEmpty(sLabelValues))
                            {
                                sLabelValues = "0";
                            }
                            #endregion

                            oResponse = Json(new { RESPONSE = "SUCCESS", CDataLabels = sLabels, CDataValues = sLabelValues });
                        }
                    }
                }
            }
            catch (Exception s)
            {
            }

            oSystem.CloseDataConnection();
            return oResponse;
        }


        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Report_ChartData_TopActivePages(string _From, string _To)
        {
            string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
            string sCurrentURL = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            var oResponse = Json(new { RESPONSE = "ERROR" });

            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();

                            DateTime dtFrom = DateTime.Now.AddDays(-1);
                            DateTime dtTo = DateTime.Now;

                            try
                            {
                                dtFrom = DateTime.Parse(_From);
                            }
                            catch
                            {
                            }
                            try
                            {
                                dtTo = DateTime.Parse(_To);
                            }
                            catch
                            {
                            }

                            List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> dbData = oAnalytics.Get_PageViews_ByDate(dtFrom, dtTo, oSystem.cnCon);

                            //string sLabels = "Index, SignUp, Portal";
                            //string sLabelValues = "10,34,45";

                            string sLabels = "";
                            string sLabelValues = "";

                            if (dbData != null)
                            {
                                if (dbData.Count > 0)
                                {
                                    for (int i = 0; i < dbData.Count; i++)
                                    {
                                        if (i > 0)
                                        {
                                            sLabels += "," + dbData[i].Label;
                                            //sLabels += "," + dbData[i].Value2.Replace("View of ", "");
                                            sLabelValues += "," + dbData[i].Value;
                                        }
                                        else
                                        {
                                            sLabels += "," + dbData[i].Label;
                                            //sLabels = dbData[i].Value2.Replace("View of ", "");
                                            sLabelValues = dbData[i].Value;
                                        }
                                    }
                                }
                            }

                            #region Set default empty values to prevent javascript chart issues if the values are empty
                            if (String.IsNullOrEmpty(sLabels))
                            {
                                sLabels = "none";
                            }

                            if (String.IsNullOrEmpty(sLabelValues))
                            {
                                sLabelValues = "0";
                            }
                            #endregion

                            oResponse = Json(new { RESPONSE = "SUCCESS", CDataLabels = sLabels, CDataValues = sLabelValues });
                        }
                    }
                }
            }
            catch (Exception s)
            {
            }

            oSystem.CloseDataConnection();
            return oResponse;
        }


        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Report_ChartData_SiteVisits(string _From, string _To)
        {
            string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
            string sCurrentURL = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            var oResponse = Json(new { RESPONSE = "ERROR" });

            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();

                            DateTime dtFrom = DateTime.Now.AddDays(-1);
                            DateTime dtTo = DateTime.Now;

                            try
                            {
                                dtFrom = DateTime.Parse(_From);
                            }
                            catch
                            {
                            }
                            try
                            {
                                dtTo = DateTime.Parse(_To);
                            }
                            catch
                            {
                            }

                            List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> dbData = oAnalytics.Get_PageVisits_ByDate(dtFrom, dtTo, oSystem.cnCon);

                            //string sLabels = "January, February, March, April, May, June, July, August, September, October, November, December";
                            //string sLabelValues = "1,2,3,4,5,6,7,8,9,10,11,12";

                            string sLabels = "";
                            string sLabelValues = "";

                            if (dbData != null)
                            {
                                if (dbData.Count > 0)
                                {
                                    for (int i = 0; i < dbData.Count; i++)
                                    {
                                        if (i > 0)
                                        {
                                            sLabels += "," + dbData[i].Label;
                                            //sLabels += "," + dbData[i].Value2.Replace("View of ", "");
                                            sLabelValues += "," + dbData[i].Value;
                                        }
                                        else
                                        {
                                            sLabels += "," + dbData[i].Label;
                                            //sLabels = dbData[i].Value2.Replace("View of ", "");
                                            sLabelValues = dbData[i].Value;
                                        }
                                    }
                                }
                            }


                            #region Set default empty values to prevent javascript chart issues if the values are empty
                            if (String.IsNullOrEmpty(sLabels))
                            {
                                sLabels = "none";
                            }

                            if (String.IsNullOrEmpty(sLabelValues))
                            {
                                sLabelValues = "0";
                            }
                            #endregion

                            oResponse = Json(new { RESPONSE = "SUCCESS", CDataLabels = sLabels, CDataValues = sLabelValues });
                        }
                    }
                }
            }
            catch (Exception s)
            {
            }

            oSystem.CloseDataConnection();
            return oResponse;
        }


    }
}