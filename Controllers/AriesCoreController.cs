
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
using System.Net;
using System.Net.Mail;
using System.Web.Configuration;
using System.IO;
using System.Web.Script.Serialization;
using System.Threading;
using System.Threading.Tasks;
using AriesGlobal;
using AriesDBConnector;
using AriesDBManager;
using AriesCMSInteractions;
using AriesCMSDefinition;
using ACMSDBView;


namespace AriesCMS.Controllers
{

    public partial class LPController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";


        string _ViewFile_SetupEncryption = "~/views/localview/inc_Setup.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult Setup()
        {
            ViewBag.bError = false;
            ViewBag.bCompleted = false;


            if (oSystem.OpenDataConnection())
            {
                oSystem.GetCurrentUser();

                Object oResponse = null;

                #region Get all session and dynamic settings 
                try
                {
                    oResponse = (Object)Session["_sFormFunctionDBMod"];
                }
                catch
                {
                }
                Session["_sFormFunctionDBMod"] = null;


                try
                {
                    if (Session["_sFormFunctionResults"] != null)
                    {
                        string sRaw = Session["_sFormFunctionResults"].ToString();

                        string[] _Values = sRaw.Split('|');
                        foreach (string sT in _Values)
                        {
                            string[] _Split = sT.Split('=');
                            if (_Split.Length > 1)
                            {
                                ViewData.Add(_Split[0], _Split[1]);
                            }
                        }
                    }
                }
                catch
                {
                }

                try
                {
                    if (Session["_SiteDynamics"] != null)
                    {
                        string sRaw1 = Session["_SiteDynamics"].ToString();

                        string[] _Values = sRaw1.Split('|');
                        foreach (string sT in _Values)
                        {
                            string[] _Split = sT.Split('=');
                            if (_Split.Length > 1)
                            {
                                ViewData.Add(_Split[0], _Split[1]);
                            }
                        }
                    }
                }
                catch
                {
                }
                #endregion


                AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                string sPageTitle = "New Setup Aries CSM";
                string sPageName = "New Setup Aries CSM";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "New Setup Aries CSM";
                string sKeyWords = "New Setup Aries CSM Form - New Setup Aries CSM Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_SetupEncryption, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ContactFormData = new Models.ContactUsView();

                    oSystem.ContactFormData.ErrorMessage = "";
                    oSystem.ContactFormData.ErrorPageURL = "";
                    oSystem.ContactFormData.SuccessPageURL = "";
                    oSystem.ContactFormData.SourceForm = _ViewFile_SetupEncryption;
                    oSystem.ContactFormData.IsCMSForm = "false";

                    //Use the data pull you do above to add set the primary data model
                    //oPage.DataModelsPrimary = dbSearch.OrderByDescending(s => s.ID).ToList();
                    oPage.DataModelsPrimary = oSystem;
                    oPage.DataModelsSub.Add(oSystem);

                    oPage.AuthenticatedUser = true;
                    oPage.PartialViewToLoad = "";
                    oPage.CanEditPages = false;

                    oSystem.CloseDataConnection();
                    return View(sModuleBase + "Views/Default/Index.cshtml", oPage);

                }
                else
                {
                    oSystem.CloseDataConnection();
                    return Redirect("~/error");
                }
            }
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }


    }

    public partial class BlogController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";
        
    }

    public partial class CommunityController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";
    }

    public partial class JobsController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";
    }

    public partial class ConfirmController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";

        
    }

    public partial class ErrorPageController : Controller
    {
        //
        // GET: /ErrorPage/

        public ActionResult Index()
        {
            string sErrorMessage = "";
            try
            {
                ACMSGlobal.CMSGlobal rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
                string sValue = HttpContext.Request.QueryString[0].ToString();
                if (rsGlobalVeriables == null)
                {
                    rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
                }
                sErrorMessage = "Sorry, could not find " + sValue + " you were looking for!  Did you type the name correctly? or it could have been moved, try looking around to see if you can find it!  Otherwise you can contact us and we will do our best to help at " + rsGlobalVeriables.SupportEmail;

            }
            catch
            {
                //if (rsGlobalVeriables.ShowAdminErrors)
                //{
                //    sErrorMessage = sErrorMessage + " Details: " + sAdminErrorMessage;
                //}
                sErrorMessage = "Local Error Occured!";
            }

            ViewBag.ErrorMessage = sErrorMessage;
            return View("~/Views/Default/Error.cshtml");
        }

    }

    public partial class FRController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";


        string _ViewFile_SetupEncryption = "~/views/localview/inc_Setup.cshtml";
        [HttpPost]
        public ActionResult SubmitSetup(FormCollection fc, AriesCMS.Models.ContactUsView _rec)
        {
            string sURLSubmittedFrom = HttpContext.Request.UrlReferrer.OriginalString.ToString();
            string sErrorMessage = "";

            oSystem.SetValue_FormFunction("bError", "false");
            oSystem.SetValue_FormFunction("bCompleted", "false");

            ViewBag.ErrorMessage = "";
            ViewBag.bError = false;
            ViewBag.bCompleted = false;

            if (oSystem.OpenDataConnection())
            {
                oSystem.GetCurrentUser();
                Object oResponse = null;
                #region Get all session and dynamic settings 
                try
                {
                    oResponse = (Object)Session["_sFormFunctionDBMod"];
                }
                catch
                {
                }
                Session["_sFormFunctionDBMod"] = null;


                try
                {
                    if (Session["_sFormFunctionResults"] != null)
                    {
                        string sRaw = Session["_sFormFunctionResults"].ToString();

                        string[] _Values = sRaw.Split('|');
                        foreach (string sT in _Values)
                        {
                            string[] _Split = sT.Split('=');
                            if (_Split.Length > 1)
                            {
                                ViewData.Add(_Split[0], _Split[1]);
                            }
                        }
                    }
                }
                catch
                {
                }

                try
                {
                    if (Session["_SiteDynamics"] != null)
                    {
                        string sRaw1 = Session["_SiteDynamics"].ToString();

                        string[] _Values = sRaw1.Split('|');
                        foreach (string sT in _Values)
                        {
                            string[] _Split = sT.Split('=');
                            if (_Split.Length > 1)
                            {
                                ViewData.Add(_Split[0], _Split[1]);
                            }
                        }
                    }
                }
                catch
                {
                }
                #endregion

                #region Run Form Based Function
                //This veriable determins if the page needs to be built or we are simply redirecting the user
                bool bIsRedirect = false;
                bool bRedirectToError = false;

                //This process is designed to both determin if the model is null and that it can be populated by the form fields
                #region Check for null data model
                bool bBuildModelViaFormObjects = false;
                if (_rec == null)
                {
                    bBuildModelViaFormObjects = true;
                }
                else if (String.IsNullOrEmpty(_rec.Name))
                {
                    bBuildModelViaFormObjects = true;
                }

                if (bBuildModelViaFormObjects == true)
                {
                    if (fc != null)
                    {
                        _rec = new Models.ContactUsView();
                        if (fc.Count > 0)
                        {
                            #region Translate Form Objects To Data Model Objects
                            try
                            {
                                if (Request.Form[""] != null)
                                {
                                    _rec.Name = Request.Form[""].ToString();
                                }
                                else if (Request.Form["."] != null)
                                {
                                    _rec.Name = Request.Form["."].ToString();
                                }
                            }
                            catch
                            {
                            }
                            #endregion
                        }
                        else
                        {
                            bRedirectToError = true;
                        }
                    }
                    else
                    {
                        bRedirectToError = true;
                    }
                }


                if (_rec.IsCMSForm == "true")
                {
                    bIsRedirect = true;
                }
                #endregion

                if (_rec != null)
                {
                    #region Process Form
                    //oSystem.SetValue_FormFunction("", _rec.);

                    bool bValidationError = false;
                    #region Validation
                    AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();
                    bool IsValid = oValidation.Validate_ContactUs(_rec, out sErrorMessage);
                    if (!IsValid)
                    {
                        bValidationError = true;
                    }
                    //if (String.IsNullOrEmpty(_rec.Email))
                    //{
                    //    bValidationError = true;
                    //    sErrorMessage += " Please provide a proper Email. <br />";
                    //}

                    //if (String.IsNullOrEmpty(_rec.Name))
                    //{
                    //    bValidationError = true;
                    //    sErrorMessage += " Please provide your full Name. <br />";
                    //}
                    #endregion

                    if (bValidationError == false)
                    {
                       
                        bRedirectToError = false;
                        ViewBag.bError = false;
                        ViewBag.bCompleted = true;
                        ViewBag.ErrorMessage = "";
                        oSystem.SetValue_FormFunction("bError", "false");
                        oSystem.SetValue_FormFunction("bCompleted", "true");
                        oSystem.SetValue_FormFunction("sError_Message", "");
                    }
                    else
                    {
                        ViewBag.bError = true;
                        ViewBag.bCompleted = false;
                        ViewBag.ErrorMessage = "Contact Form Data Was Not Valid!";
                        oSystem.SetValue_FormFunction("bError", "true");
                        oSystem.SetValue_FormFunction("bCompleted", "false");
                        oSystem.SetValue_FormFunction("sError_Message", "Contact Form Data Was Not Valid!");
                        bRedirectToError = true;
                    }
                    #endregion
                }
                else
                {
                    bRedirectToError = true;
                    oSystem.CloseDataConnection();
                    //Error model is null redirect to error page
                    return Redirect("~/error");
                }


                //This function is designed to fire if this form was submitted via a cms version of the form not cshtml
                if (bRedirectToError == false)
                {
                    #region Form was a cms based form and required a redirect 
                    if (bIsRedirect)
                    {
                        if (_rec != null)
                        {
                            if (!String.IsNullOrEmpty(_rec.SuccessPageURL))
                            {
                                oSystem.CloseDataConnection();
                                return Redirect(_rec.SuccessPageURL);
                            }
                        }
                    }
                    #endregion
                }
                else
                {
                    #region Form was a cms based form and required a redirect 
                    if (bIsRedirect)
                    {
                        if (_rec != null)
                        {
                            if (!String.IsNullOrEmpty(_rec.ErrorPageURL))
                            {
                                oSystem.CloseDataConnection();
                                return Redirect(_rec.ErrorPageURL);
                            }
                        }
                    }
                    #endregion
                }
                #endregion

                #region Now Perform Page Level Functions Based on Form Type
                AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                string sPageTitle = "Contact Us";
                string sPageName = "Contact Us";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Contact Us";
                string sKeyWords = "Contact Form - Contact Information";


                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_ContactUs, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ContactFormData = _rec;


                    //Use the data pull you do above to add set the primary data model
                    //oPage.DataModelsPrimary = dbSearch.OrderByDescending(s => s.ID).ToList();
                    oPage.DataModelsPrimary = oSystem;
                    oPage.DataModelsSub.Add(oSystem);

                    oPage.AuthenticatedUser = true;
                    oPage.PartialViewToLoad = "";
                    oPage.CanEditPages = false;

                    oSystem.CloseDataConnection();
                    return View(sModuleBase + "Views/Default/Index.cshtml", oPage);

                }
                else
                {
                    oSystem.CloseDataConnection();
                    return Redirect("~/error");
                }
                #endregion
            }
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }

    }
    
    public partial class RestServiceController : Controller
    {
        string _sViewToLoad = "";
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();


        public void Set_ViewBag_UserInfo()
        {
            try
            {
                ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;
                ViewBag.User_UserName = oSystem.CurrentUser.UserView.User.sUserName;


                if (oSystem.CurrentUser.AuthenticatedUser == true)
                {
                    ViewBag.bLoggedIn = oSystem.CurrentUser.UserView.UserLoggedIn;
                    ViewBag.User_UserName = oSystem.CurrentUser.UserView.User.sUserName;
                    ViewBag.client_userid = oSystem.CurrentUser.UserView.User.ID;

                    ViewBag.client_username = oSystem.CurrentUser.UserView.User.sUserName;
                    ViewBag.client_firstname = oSystem.CurrentUser.UserView.User.sFName;
                    ViewBag.client_lastname = oSystem.CurrentUser.UserView.User.sLName;
                    ViewBag.client_userisloggedin = "true";

                    oSystem.SetValue_SiteDynamics("client_userisloggedin", "true");
                    oSystem.SetValue_SiteDynamics("client_useride", oSystem.CurrentUser.UserView.User.ID.ToString());
                    oSystem.SetValue_SiteDynamics("client_username", oSystem.CurrentUser.UserView.User.sUserName);
                    oSystem.SetValue_SiteDynamics("client_firstname", oSystem.CurrentUser.UserView.User.sFName);
                    oSystem.SetValue_SiteDynamics("client_lastname", oSystem.CurrentUser.UserView.User.sLName);

                    if (oSystem.CurrentUser.UserView.User.iPrimaryRole <= 1)
                    {
                        oSystem.SetValue_SiteDynamics("client_LogInUrl", HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/" + "admin");
                        ViewBag.client_LogInUrl = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/" + "admin";
                    }
                    else
                    {
                        oSystem.SetValue_SiteDynamics("client_LogInUrl", HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/" + "portal");
                        ViewBag.client_LogInUrl = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/" + "portal";
                    }
                }
                else
                {
                    ViewBag.bLoggedIn = false;

                    ViewBag.client_username = "Guest";
                    ViewBag.client_firstname = " ";
                    ViewBag.client_lastname = " ";
                    ViewBag.client_userisloggedin = "false";
                    ViewBag.client_userid = "0";

                    oSystem.SetValue_SiteDynamics("client_userisloggedin", "false");
                    oSystem.SetValue_SiteDynamics("client_useride", "0");
                    oSystem.SetValue_SiteDynamics("client_username", " ");
                    oSystem.SetValue_SiteDynamics("client_firstname", " ");
                    oSystem.SetValue_SiteDynamics("client_lastname", " ");
                    oSystem.SetValue_SiteDynamics("client_LogInUrl", HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/");
                    ViewBag.client_LogInUrl = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";

                }


                Set_CustomViewBag_UserInfo();
            }
            catch
            {
            }
        }
        public void Set_ViewBag_UserInfo_Defaults()
        {
            try
            {
                ViewBag.bLoggedIn = false;

                ViewBag.client_username = "Guest";
                ViewBag.client_firstname = " ";
                ViewBag.client_lastname = " ";
                ViewBag.client_userisloggedin = "false";
                ViewBag.client_userid = "0";

                oSystem.SetValue_SiteDynamics("client_userisloggedin", "false");
                oSystem.SetValue_SiteDynamics("client_useride", "0");
                oSystem.SetValue_SiteDynamics("client_username", " ");
                oSystem.SetValue_SiteDynamics("client_firstname", " ");
                oSystem.SetValue_SiteDynamics("client_lastname", " ");
                oSystem.SetValue_SiteDynamics("client_LogInUrl", HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/");
                ViewBag.client_LogInUrl = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";

                Set_CustomViewBag_UserInfo_Defaults();
            }
            catch
            {
            }
        }


        public ActionResult Index()
        {
            return Redirect("~/");
        }

        //[HttpPost]
        //public JsonResult Example(string _sName)
        //{
        //    //string _sName = "Paiman Allage";
        //    var a = Json(new { LogIN = " Hello " + _sName });
        //    return a;
        //}
        //This example showes how to call the above JSON service from the page it's selfe
        //      <script type="text/javascript">
        //    function SendDataToServerTester()
        //    {
        //        alert("I got here!");
        //        try {

        //            //data: oMydata,
        //            var oMydata = { "_sName": "Paiman Allage" };
        //            $.ajax({
        //                type: 'POST',
        //                url: 'http://localhost:15660/soap.asmx?op=JLogIn',
        //                data: oMydata,
        //                dataType: "json",
        //                error: function (jqXHR, textStatus, errorThrown) {
        //                    alert("Error: " + errorThrown);
        //                },
        //                success: function (data) {
        //                    //var cities = data.d;
        //                    //$.each(cities, function (index, cities) {
        //                    //alert("City Name: " + cities.Name + "\nID: " + cities.ID);                
        //                    //});
        //                    alert("Success: " + data.LogIN);
        //                }
        //            });
        //        }
        //        catch (e) {
        //            alert(e);
        //        }
        //    }
        //</script>

        [HttpPost]
        public JsonResult PageView(string _Content)
        {
            try
            {
                if (oSystem.OpenDataConnection())
                {
                    //if (oSystem.CurrentUser != null)
                    //{
                    //    if (oSystem.CurrentUser.UserView != null)
                    //    {
                    //        if (oSystem.CurrentUser.UserView.User != null)
                    //        {
                    //            if (oSystem.UserCookie != null)
                    //            {
                    //                if (!String.IsNullOrEmpty(oSystem.UserCookie.CookieID))
                    //                {
                    //                }
                    //            }
                    //        }
                    //    }
                    //}

                    #region Record Event
                    new Thread(() =>
                    {
                        DINT_WebSiteEvents dbSitEvent = new DINT_WebSiteEvents(oSystem.cnCon);
                        DEF_WebSiteEvents.RecordObject oRecord = new DEF_WebSiteEvents.RecordObject();

                        oRecord.iParentID = System.Convert.ToInt32(oSystem.rsGlobalVeriables.SiteID);
                        oRecord.sParentID = oSystem.rsGlobalVeriables.Name;

                        oRecord.sControl = Guid.NewGuid().ToString();
                        try
                        {
                            oRecord.sCookieID = oSystem.UserCookie.CookieID;
                        }
                        catch (Exception e)
                        {

                        }
                        oRecord.iTypeID = 0;
                        oRecord.sTypeID = "View";
                        oRecord.dtDateCreated = DateTime.Now;
                        oRecord.dtLastUpdated = DateTime.Now;
                        oRecord.sEvent = "View of " + _Content;

                        #region Get User Info from Browser
                        try
                        {
                            oRecord.sLog = Request.ServerVariables["ALL_HTTP"].ToString();
                        }
                        catch
                        {
                        }
                        try
                        {
                            oRecord.sNotes = "IP Address: " + oSystem.VisitorHTTPValues.VisitorIPAddress() + " " + oSystem.VisitorHTTPValues.ToString();
                        }
                        catch
                        {
                        }
                        #endregion

                        if (oSystem.GetCurrentUser())
                        {
                            oRecord.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                            oRecord.sCreatedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;

                            oRecord.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                            oRecord.sUpdatedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;
                        }
                        else
                        {
                            oRecord.iCreatedByID = -1;
                            oRecord.sCreatedByID = "Unregistered";

                            oRecord.iUpdatedByID = -1;
                            oRecord.sUpdatedByID = "Unregistered";
                        }


                        dbSitEvent.Insert_SQL(oRecord);
                        oSystem.CloseDataConnection();
                    }).Start();
                    #endregion
                }
            }
            catch
            {
            }
            string _sName = "World";
            var a = Json(new { LogIN = " Hello " + _sName });
            return a;
        }

        [HttpPost]
        public JsonResult ClicksEvent(string _Content)
        {
            try
            {
                if (oSystem.OpenDataConnection())
                {
                    //if (oSystem.CurrentUser != null)
                    //{
                    //    if (oSystem.CurrentUser.UserView != null)
                    //    {
                    //        if (oSystem.CurrentUser.UserView.User != null)
                    //        {
                    //            if (oSystem.UserCookie != null)
                    //            {
                    //                if (!String.IsNullOrEmpty(oSystem.UserCookie.CookieID))
                    //                {
                    //                }
                    //            }
                    //        }
                    //    }
                    //}

                    #region Record Event
                    new Thread(() =>
                    {

                        DINT_WebSiteEvents dbSitEvent = new DINT_WebSiteEvents(oSystem.cnCon);
                        DEF_WebSiteEvents.RecordObject oRecord = new DEF_WebSiteEvents.RecordObject();
                        oRecord.iParentID = System.Convert.ToInt32(oSystem.rsGlobalVeriables.SiteID);
                        oRecord.sParentID = oSystem.rsGlobalVeriables.Name;

                        oRecord.sControl = Guid.NewGuid().ToString();
                        try
                        {
                            oRecord.sCookieID = oSystem.UserCookie.CookieID;
                        }
                        catch
                        {

                        }
                        oRecord.iTypeID = 1;
                        oRecord.sTypeID = "Click";
                        oRecord.dtDateCreated = DateTime.Now;
                        oRecord.dtLastUpdated = DateTime.Now;
                        oRecord.sEvent = "Click of " + _Content;

                        #region Get User Info from Browser
                        try
                        {
                            oRecord.sLog = Request.ServerVariables["ALL_HTTP"].ToString();
                        }
                        catch
                        {
                        }
                        try
                        {
                            oRecord.sNotes = "IP Address: " + oSystem.VisitorHTTPValues.VisitorIPAddress() + " " + oSystem.VisitorHTTPValues.ToString();
                        }
                        catch
                        {
                        }
                        #endregion

                        if (oSystem.GetCurrentUser())
                        {
                            oRecord.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                            oRecord.sCreatedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;

                            oRecord.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                            oRecord.sUpdatedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;
                        }
                        else
                        {
                            oRecord.iCreatedByID = -1;
                            oRecord.sCreatedByID = "Unregistered";

                            oRecord.iUpdatedByID = -1;
                            oRecord.sUpdatedByID = "Unregistered";
                        }


                        dbSitEvent.Insert_SQL(oRecord);
                        oSystem.CloseDataConnection();
                    }).Start();
                    #endregion
                }
            }
            catch
            {
            }
            string _sName = "World";
            var a = Json(new { LogIN = " Hello " + _sName });
            return a;
        }
        
        [HttpPost]
        public JsonResult GetPageViews(string _From, string _To)
        {
            var oResponseError1 = Json(new { RESPONSE = "ERROR" });
            try
            {
                if (!String.IsNullOrEmpty(_From))
                {
                    DateTime dtDate = DateTime.Parse(_From);
                    if (oSystem.OpenDataConnection())
                    {
                        AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();
                        DateTime dtFrom = DateTime.Parse(_From);
                        DateTime dtTo = DateTime.Now;
                        if (!String.IsNullOrEmpty(_To))
                        {
                            dtTo = DateTime.Parse(_To);
                        }

                        List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> oResults = oAnalytics.Get_PageViews_ByDate(dtFrom, dtTo, oSystem.cnCon);
                        List<SelectListItem> lstValueSet = new List<SelectListItem>();
                        foreach (AriesCMS.Helpers.SitAnalytics.SiteAnalytics oAnn in oResults)
                        {
                            lstValueSet.Add(new SelectListItem { Selected = false, Text = oAnn.Label, Value = oAnn.Value });
                        }

                        var oResponse = Json(lstValueSet);
                        return oResponse;
                    }
                    else
                    {
                        return oResponseError1;
                    }
                }
                else
                {
                    return oResponseError1;
                }
            }
            catch
            {
                return oResponseError1;
            }
        }

        [HttpPost]
        public JsonResult GetSiteVisitors(string _From, string _To)
        {
            var oResponseError1 = Json(new { RESPONSE = "ERROR" });
            try
            {
                if (!String.IsNullOrEmpty(_From))
                {
                    DateTime dtDate = DateTime.Parse(_From);
                    if (oSystem.OpenDataConnection())
                    {
                        AriesCMS.Helpers.SitAnalytics oAnalytics = new Helpers.SitAnalytics();
                        DateTime dtFrom = DateTime.Parse(_From);
                        DateTime dtTo = DateTime.Now;
                        if (!String.IsNullOrEmpty(_To))
                        {
                            dtTo = DateTime.Parse(_To);
                        }

                        List<AriesCMS.Helpers.SitAnalytics.SiteAnalytics> oResults = oAnalytics.Get_Visits_ByDate(dtFrom, dtTo, oSystem.cnCon);
                        List<SelectListItem> lstValueSet = new List<SelectListItem>();
                        foreach (AriesCMS.Helpers.SitAnalytics.SiteAnalytics oAnn in oResults)
                        {
                            lstValueSet.Add(new SelectListItem { Selected = false, Text = oAnn.Label, Value = oAnn.Value });
                        }

                        var oResponse = Json(lstValueSet);
                        return oResponse;
                    }
                    else
                    {
                        return oResponseError1;
                    }
                }
                else
                {
                    return oResponseError1;
                }
            }
            catch
            {
                return oResponseError1;
            }
        }

        [HttpPost]
        public JsonResult UserLogIn(string _UserName, string _Password, bool _SaveLogIn)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";
            string sUSERPORTALURL = "";
            string sUSERID = "0";
            string sUSERFIRSTNAME = "";
            string sUSERLASTNAME = "";
            string sKEY = "0";
            string sPROFILEIMAGEURL = "";
            if (oSystem.OpenDataConnection())
            {
                ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                oUserAuth.UserName = _UserName;
                oUserAuth.Password = _Password;
                oUserAuth.SaveLogIn = _SaveLogIn;
                string sProcessError = "";
                bool bResponse = oSystem.UserLogIn(oUserAuth, out sProcessError);
                if (bResponse == true)
                {
                    if (oSystem.CurrentUser.UserView.User.bAccLocked == false)
                    {
                        if (oSystem.CurrentUser.UserView.User.bCurrentlyLoggedIn == false)
                        {
                            if (oUserAuth.SaveLogIn)
                            {
                                oSystem.SaveLogIn();
                            }
                            oSystem.SetCurrentUser();

                            oUserAuth.AccessGranted = true;

                            Set_ViewBag_UserInfo();

                            sUSERID = oSystem.CurrentUser.UserView.User.ID.ToString();
                            sUSERFIRSTNAME = oSystem.CurrentUser.UserView.User.sFName;
                            sUSERLASTNAME = oSystem.CurrentUser.UserView.User.sLName;
                            sKEY = oSystem.GetUserServiceKey();
                            sPROFILEIMAGEURL = oSystem.CurrentUser.UserView.User.sAvitarImgURL;

                            sRESPONSE = "true";
                            sRESPONSEMESSAGE = sProcessError;
                        }
                        else
                        {
                            sRESPONSE = "false";
                            sRESPONSEMESSAGE = sProcessError + " " + "Sorry Your Account Is In Use, Only One Log In Instance Is Allowed!";
                        }
                    }
                    else
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = sProcessError + " " + "Sorry Your Account Is Currently Locked Out, Please Contact The Site Administrator For Assistance!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = sProcessError;
                }
            }

            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, USERPORTAL = sUSERPORTALURL, USERID = sUSERID, FIRSTNAME = sUSERFIRSTNAME, LASTNAME = sUSERLASTNAME, KEY = sKEY, AVITARURL = sPROFILEIMAGEURL });
            return oResponse;
        }


        [HttpPost]
        public JsonResult UserAutoLogIn()
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";
            string sUSERPORTALURL = "";
            string sUSERID = "0";
            string sUSERFIRSTNAME = "";
            string sUSERLASTNAME = "";
            string sKEY = "0";
            string sPROFILEIMAGEURL = "";
            if (oSystem.OpenDataConnection())
            {
                string sProcessError = "";
                bool bResponse = oSystem.AutoLogIn();
                if (bResponse == true)
                {
                    if (oSystem.CurrentUser.UserView.User.bAccLocked == false)
                    {
                        if (oSystem.CurrentUser.UserView.User.bCurrentlyLoggedIn == false)
                        {
                            oSystem.SaveLogIn();
                            oSystem.SetCurrentUser();


                            Set_ViewBag_UserInfo();

                            sUSERID = oSystem.CurrentUser.UserView.User.ID.ToString();
                            sUSERFIRSTNAME = oSystem.CurrentUser.UserView.User.sFName;
                            sUSERLASTNAME = oSystem.CurrentUser.UserView.User.sLName;
                            sKEY = oSystem.GetUserServiceKey();
                            sPROFILEIMAGEURL = oSystem.CurrentUser.UserView.User.sAvitarImgURL;

                            sRESPONSE = "true";
                            sRESPONSEMESSAGE = sProcessError;
                        }
                        else
                        {
                            sRESPONSE = "false";
                            sRESPONSEMESSAGE = sProcessError + " " + "Sorry Your Account Is In Use, Only One Log In Instance Is Allowed!";
                        }
                    }
                    else
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = sProcessError + " " + "Sorry Your Account Is Currently Locked Out, Please Contact The Site Administrator For Assistance!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = sProcessError;
                }
            }

            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, USERPORTAL = sUSERPORTALURL, USERID = sUSERID, FIRSTNAME = sUSERFIRSTNAME, LASTNAME = sUSERLASTNAME, KEY = sKEY, AVITARURL = sPROFILEIMAGEURL });
            return oResponse;
        }


        [HttpPost]
        public JsonResult UserLogOut()
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";
            string sUSERPORTALURL = "";
            string sUSERID = "0";
            string sUSERFIRSTNAME = "";
            string sUSERLASTNAME = "";
            string sKEY = "0";
            string sPROFILEIMAGEURL = "";
            if (oSystem.OpenDataConnection())
            {
                oSystem.UserLoggOff();
            }

            oSystem.ClearSavedLogIn();
            oSystem.CurrentUser = null;

            oSystem.CloseDataConnection();
            sRESPONSE = "true";
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, USERPORTAL = sUSERPORTALURL, USERID = sUSERID, FIRSTNAME = sUSERFIRSTNAME, LASTNAME = sUSERLASTNAME, KEY = sKEY, AVITARURL = sPROFILEIMAGEURL });
            return oResponse;
        }



        [HttpPost]
        public JsonResult IsLoggedIn()
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";
            string sUSERPORTALURL = "";
            string sUSERID = "0";
            string sUSERFIRSTNAME = "";
            string sUSERLASTNAME = "";
            string sKEY = "0";
            string sPROFILEIMAGEURL = "";
            bool bResponse = false;
            if (oSystem.OpenDataConnection())
            {
                string sProcessError = "";
                if (oSystem.GetCurrentUser())
                {
                    if (oSystem.IsUserLoggedIn())
                    {
                        bResponse = true;
                        oSystem.SaveLogIn();
                        oSystem.SetCurrentUser();

                        Set_ViewBag_UserInfo();

                        sUSERID = oSystem.CurrentUser.UserView.User.ID.ToString();
                        sUSERFIRSTNAME = oSystem.CurrentUser.UserView.User.sFName;
                        sUSERLASTNAME = oSystem.CurrentUser.UserView.User.sLName;
                        sKEY = oSystem.GetUserServiceKey();
                        sPROFILEIMAGEURL = oSystem.CurrentUser.UserView.User.sAvitarImgURL;

                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = sProcessError;
                    }
                }

                #region
                //if(bResponse == false)
                //{
                //    bResponse = oSystem.AutoLogIn();

                //    if (bResponse == true)
                //    {
                //        if (oSystem.CurrentUser.UserView.User.bAccLocked == false)
                //        {
                //            if (oSystem.CurrentUser.UserView.User.bCurrentlyLoggedIn == false)
                //            {
                //                oSystem.SaveLogIn();
                //                oSystem.SetCurrentUser();

                //                Set_ViewBag_UserInfo();

                //                sUSERID = oSystem.CurrentUser.UserView.User.ID.ToString();
                //                sUSERFIRSTNAME = oSystem.CurrentUser.UserView.User.sFName;
                //                sUSERLASTNAME = oSystem.CurrentUser.UserView.User.sLName;
                //                sKEY = oSystem.GetUserServiceKey();
                //                sPROFILEIMAGEURL = oSystem.CurrentUser.UserView.User.sAvitarImgURL;

                //                sRESPONSE = "true";
                //                sRESPONSEMESSAGE = sProcessError;
                //            }
                //            else
                //            {
                //                sRESPONSE = "false";
                //                sRESPONSEMESSAGE = sProcessError + " " + "Sorry Your Account Is In Use, Only One Log In Instance Is Allowed!";
                //            }
                //        }
                //        else
                //        {
                //            sRESPONSE = "false";
                //            sRESPONSEMESSAGE = sProcessError + " " + "Sorry Your Account Is Currently Locked Out, Please Contact The Site Administrator For Assistance!";
                //        }
                //    }
                //    else
                //    {
                //        sRESPONSE = "false";
                //        sRESPONSEMESSAGE = sProcessError;
                //    }
                //}
                #endregion
            }

            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, USERPORTAL = sUSERPORTALURL, USERID = sUSERID, FIRSTNAME = sUSERFIRSTNAME, LASTNAME = sUSERLASTNAME, KEY = sKEY, AVITARURL = sPROFILEIMAGEURL });
            return oResponse;
        }



        [HttpPost]
        public JsonResult RecoverProfile(string _EMail, string _FullName, string _FirstName, string _LastName)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            if (oSystem.OpenDataConnection())
            {
                #region
                if (oSystem.OpenDataConnection())
                {
                    try
                    {
                        if (!String.IsNullOrEmpty(_EMail))
                        {
                            #region Split Full name into first and last if first and last are empty
                            if (!String.IsNullOrEmpty(_FullName))
                            {
                                if (String.IsNullOrEmpty(_FirstName))
                                {
                                    if (String.IsNullOrEmpty(_LastName))
                                    {
                                        try
                                        {
                                            string[] oSplit = _FullName.Split(' ');
                                            _FirstName = oSplit[0];
                                            _LastName = oSplit[1];
                                        }
                                        catch
                                        {
                                            _LastName = _FirstName;
                                        }
                                    }
                                }
                            }
                            #endregion


                            DINT_Users dbInteraction = new DINT_Users(oSystem.cnCon);
                            List<DEF_Users.RecordObject> dbSearch = null;
                            List<DataParameter> lstParameters = new List<DataParameter>();

                            DataParameter pParameter = new DataParameter("sUserName", "'" + _EMail + "'", "string", 11, "sUserName", " = ", "");
                            lstParameters.Add(pParameter);

                            int iTotalRows = dbInteraction.GetRowCount(lstParameters);
                            if (iTotalRows > 0)
                            {
                                dbSearch = dbInteraction.Get(lstParameters);
                                if (dbSearch != null)
                                {
                                    if (dbSearch.Count > 0)
                                    {
                                        string sSubject = "Web Site User Profile Recovery";
                                        string sMessage = "";
                                        sMessage += "You recently requested your site credentials " + "<br/>";
                                        sMessage += "User Name: " + dbSearch[0].sUserName + "\r\n" + "<br/>";
                                        sMessage += "Password: " + oSystem.rsGlobalVeriables.oEncryption.Decrypt(dbSearch[0].sPassword) + "\r\n" + "<br/>";

                                        oSystem.SendMessage("support@zawyou.com", "Site Profile Recovery", dbSearch[0].sPrimaryEMail, dbSearch[0].sFName + " " + dbSearch[0].sLName, sSubject, sMessage);

                                        sRESPONSE = "true";
                                        sRESPONSEMESSAGE = "Profile found and sent!";

                                    }
                                    else
                                    {
                                        sRESPONSE = "false";
                                        sRESPONSEMESSAGE = "Sorry could not find your information!";
                                    }
                                }
                                else
                                {
                                    sRESPONSE = "false";
                                    sRESPONSEMESSAGE = "Sorry could not find your information!";
                                }
                            }
                            else
                            {
                                sRESPONSE = "false";
                                sRESPONSEMESSAGE = "Sorry could not find your information!";
                            }
                        }
                        else
                        {
                            sRESPONSE = "false";
                            sRESPONSEMESSAGE = "Sorry email is blank!";
                        }
                    }
                    catch
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "Sorry could not find your information!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                }
                #endregion
            }

            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }

        [HttpPost]
        public JsonResult GetUserProfile(string _Id)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";
            DEF_Users.RecordObject oRecord = null;
            if (oSystem.OpenDataConnection())
            {
                if (oSystem.AuthenticateViaServiceKey(_Id))
                {
                    #region
                    if (oSystem.GetCurrentUser())
                    {
                        oRecord = oSystem.CurrentUser.UserView.User;
                        oRecord.sPassword = "";
                        oRecord.sAccessKey = "";
                        oRecord.sActivationKey = "";

                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "Profile!";
                    }
                    #endregion
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                }
            }
            else
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = "System error occured please contact system administrator!";
            }

            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, DATA = oRecord });
            return oResponse;
        }

        [HttpPost]
        public JsonResult UserRegister(string _UserName, string _Password, string _ConfirmPassword, string _FirstName, 
            string _LastName, string _Email, string _Phone)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            if (!String.IsNullOrEmpty(_UserName))
            {
                if (!String.IsNullOrEmpty(_Password))
                {
                    if (!String.IsNullOrEmpty(_ConfirmPassword))
                    {
                        if (!String.IsNullOrEmpty(_FirstName))
                        {
                            if (!String.IsNullOrEmpty(_LastName))
                            {
                                if (oSystem.OpenDataConnection())
                                {
                                    AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();
                                    AriesCMS.Models.NewUserRegistration _oNewUser = new Models.NewUserRegistration();
                                    _oNewUser.UserName = _UserName;
                                    _oNewUser.Password = _Password;
                                    _oNewUser.PasswordConfirm = _ConfirmPassword;
                                    _oNewUser.FirstName = _FirstName;
                                    _oNewUser.LastName = _LastName;
                                    _oNewUser.EMail = _Email;
                                    _oNewUser.Phone = _Phone;

                                    string sReponse = "";
                                    bool bResponse = oValidation.Validate_NewUserRegistration(_oNewUser, out sReponse);
                                    if (bResponse == true)
                                    {
                                        #region Process Registriong
                                        int iDupCheck = 0;
                                        iDupCheck = oSystem.CurrentUser.CheckUserDupCheck_UserName(oSystem.cnCon, _oNewUser.UserName);
                                        if (iDupCheck == 0)
                                        {
                                            //No duplicate user found
                                            DINT_Users dbInteraction = new DINT_Users(oSystem.cnCon);
                                            
                                            oSystem.SetValue_FormFunction("client_FirstName", _oNewUser.FirstName);
                                            oSystem.SetValue_FormFunction("client_LastName", _oNewUser.LastName);
                                            oSystem.SetValue_FormFunction("client_EMail", _oNewUser.EMail);
                                            oSystem.SetValue_FormFunction("client_Phone", _oNewUser.Phone);
                                            oSystem.SetValue_FormFunction("client_oVisualState", "3");
                                            oSystem.SetValue_FormFunction("client_oPageReload", "true");

                                            #region Process registration
                                            DEF_Users.RecordObject _NewUserRecord = new DEF_Users.RecordObject();

                                            #region
                                            _NewUserRecord.sControl = Guid.NewGuid().ToString();

                                            //Set the cookie id to make sure we have a consisted identity and track tool
                                            _NewUserRecord.sAccessKey = oSystem.UserCookie.CookieID;
                                            _NewUserRecord.sActivationKey = Guid.NewGuid().ToString();

                                            _NewUserRecord.dtDateCreated = DateTime.Now;
                                            _NewUserRecord.dtLastUpdated = DateTime.Now;

                                            //creat base info
                                            _NewUserRecord.bAccLocked = false;
                                            _NewUserRecord.bAccountActivated = false;
                                            _NewUserRecord.bCurrentlyLoggedIn = false;
                                            _NewUserRecord.bOptInMarketing = false;
                                            _NewUserRecord.bPrivateProfile = false;

                                            _NewUserRecord.dtDateOfBirth = DateTime.Parse("01/01/1901");
                                            _NewUserRecord.dtLastLoggedIn = DateTime.Now;

                                            _NewUserRecord.iUpdatedByID = -6;
                                            _NewUserRecord.sUpdatedByID = "Self Registration Form";

                                            _NewUserRecord.iCreatedByID = -6;
                                            _NewUserRecord.sCreatedByID = "Self Registration Form";

                                            _NewUserRecord.iGenderTypeID = 0;
                                            _NewUserRecord.sGenderTypeID = "undefined";

                                            _NewUserRecord.iParentID = 1;
                                            _NewUserRecord.sParentID = "";

                                            //Set roles specific to the registration here
                                            // 1- Admin
                                            // 2 - Author
                                            // 3 - Contributor - Default
                                            // 4 - Editor
                                            // 5 - Subscriber

                                            _NewUserRecord.iPrimaryRole = 3;
                                            _NewUserRecord.sPrimaryRole = "Contributor";

                                            _NewUserRecord.iReputationLevel = 0;

                                            _NewUserRecord.sAvitarImgURL = "";

                                            _NewUserRecord.sAddress1 = _oNewUser.AddressInfo.AddressLine1;
                                            _NewUserRecord.sAddress2 = _oNewUser.AddressInfo.AddressLine2;
                                            _NewUserRecord.sAddress3 = _oNewUser.AddressInfo.AddressLine3;
                                            _NewUserRecord.sCity = _oNewUser.AddressInfo.City;
                                            _NewUserRecord.iStateID = _oNewUser.AddressInfo.StateID;
                                            _NewUserRecord.sStateID = _oNewUser.AddressInfo.State;
                                            _NewUserRecord.sPostalCode = _oNewUser.AddressInfo.PostalCode;
                                            _NewUserRecord.iCountryID = _oNewUser.AddressInfo.CountryID;
                                            _NewUserRecord.sCountryID = _oNewUser.AddressInfo.Country;


                                            //If we are registering and recording billing info use the View Model NewUserRegistrationWithBilling which has billing properties
                                            //_NewUserRecord.sBillAddress1 = "";
                                            //_NewUserRecord.sBillAddress2 = "";
                                            //_NewUserRecord.sBillAddress3 = "";
                                            //_NewUserRecord.sBillCity = "";
                                            //_NewUserRecord.sBillCity = "";
                                            //_NewUserRecord.sBillPostalCode = "";
                                            //_NewUserRecord.iBillStateID = 0;
                                            //_NewUserRecord.sBillStateID = "";
                                            //_NewUserRecord.iBillCountryID = 0;
                                            //_NewUserRecord.sBillCountryID = "";

                                            _NewUserRecord.sUserName = _oNewUser.UserName;
                                            _NewUserRecord.sPassword = oSystem.rsGlobalVeriables.oEncryption.Encrypt(_oNewUser.Password);

                                            if (!String.IsNullOrEmpty(_oNewUser.EMail))
                                            {
                                                _NewUserRecord.sPrimaryEMail = _oNewUser.EMail;
                                            }
                                            else
                                            {
                                                _NewUserRecord.sPrimaryEMail = _oNewUser.UserName;
                                            }


                                            _NewUserRecord.sPrefix = "";
                                            _NewUserRecord.sFName = _oNewUser.FirstName;
                                            _NewUserRecord.sMName = _oNewUser.MiddleName;
                                            _NewUserRecord.sLName = _oNewUser.LastName;
                                            _NewUserRecord.sPrimaryPhone = _oNewUser.Phone;
                                            _NewUserRecord.sProfileDiscription = "";
                                            _NewUserRecord.sScreenName = _oNewUser.UserName;
                                            _NewUserRecord.sKeyWords = "";
                                            _NewUserRecord.IPAddressess = oSystem.VisitorHTTPValues.VisitorIPAddress();
                                            #endregion

                                            dbInteraction.Insert_SQL(_NewUserRecord);

                                            //now we need to find the ID of this new user and add the appropriat role
                                            oSystem.CurrentUser = new ACMSUser.UserSecurity(oSystem.cnCon);
                                            ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                                            oUserAuth.UserName = _oNewUser.UserName;
                                            oUserAuth.Password = _oNewUser.Password;


                                            if (oSystem.CurrentUser.LogIn(oUserAuth, oSystem.rsGlobalVeriables))
                                            {
                                                oSystem.SetCurrentUser();
                                                oSystem.BuildUserExtendedData();
                                                oUserAuth.AccessGranted = true;


                                                int iRowsAffected = 0;
                                                string sExeSQLError = "";
                                                DINT_Users dbSitEvent = new DINT_Users(oSystem.cnCon);
                                                string sSQL = "Update WebSiteEvents Set iCreatedByID = '" + oSystem.CurrentUser.UserView.User.ID + "', sCreatedByID = '" + oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName + "', iUpdatedByID = '" + oSystem.CurrentUser.UserView.User.ID + "',  sUpdatedByID = '" + oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName + "' Where sCookieID = '" + oSystem.UserCookie.CookieID + "'";

                                                oSystem.cnCon.ExecQuery(sSQL, out iRowsAffected, out sExeSQLError);

                                                _oNewUser.UserNameError = false;

                                                SendUserValidationMessage(_oNewUser.FirstName + " " + _oNewUser.LastName, _oNewUser.UserName, _NewUserRecord.sAccessKey);

                                                //add panels as a custom property
                                                DINT_UsersProperties oUsersProperties = new DINT_UsersProperties(oSystem.cnCon);
                                                DEF_UsersProperties.RecordObject rec_Property = null;
                                                #region Creat New Property
                                                try
                                                {
                                                    rec_Property = new DEF_UsersProperties.RecordObject();
                                                    #region Set Default values
                                                    rec_Property.sControl = Guid.NewGuid().ToString();
                                                    rec_Property.dtDateCreated = DateTime.Now;
                                                    rec_Property.dtLastUpdated = DateTime.Now;
                                                    rec_Property.iUpdatedByID = 1;
                                                    rec_Property.sUpdatedByID = "System";
                                                    rec_Property.iCreatedByID = 1;
                                                    rec_Property.sCreatedByID = "System";
                                                    rec_Property.iParentID = oSystem.CurrentUser.UserView.User.ID;
                                                    rec_Property.sParentID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;
                                                    #endregion

                                                    rec_Property.sFieldName = "TESTEST";
                                                    rec_Property.sValue = "TESTVALUE";
                                                    oUsersProperties.Insert_SQL(rec_Property);
                                                }
                                                catch
                                                {
                                                }
                                                #endregion


                                                Set_ViewBag_UserInfo();

                                                sRESPONSE = "true";
                                                sRESPONSEMESSAGE = "Welcome, your are now a registered user!";


                                            }
                                            else
                                            {
                                                sRESPONSEMESSAGE = "After registration, an error occured and I could not match your log in credentials!";
                                                oSystem.SetValue_FormFunction("client_FormValidationError", "Sorry I could not match your credentials!");
                                                oSystem.SetValue_FormFunction("client_oFormError", "true");
                                                sRESPONSE = "false";
                                            }
                                            #endregion


                                        }
                                        else if (iDupCheck < 0)
                                        {
                                            //Error occured
                                            sRESPONSE = "false";
                                            sRESPONSEMESSAGE = "Duplicate Error: " + _oNewUser.ErrorMessage;
                                            oSystem.SetValue_FormFunction("client_FormValidationError", _oNewUser.ErrorMessage);
                                            oSystem.SetValue_FormFunction("client_oFormError", "true");
                                            oSystem.SetValue_FormFunction("sErrorMessage", "Sorry a system error occured!");
                                            oSystem.SetValue_FormFunction("bRegistrationCompleted", "false");
                                        }
                                        else
                                        {
                                            //Duplicate user found
                                            sRESPONSE = "false";
                                            sRESPONSEMESSAGE = "Duplicate User Found: " + _oNewUser.ErrorMessage;
                                            oSystem.SetValue_FormFunction("client_FormValidationError", _oNewUser.ErrorMessage);
                                            oSystem.SetValue_FormFunction("client_oFormError", "true");
                                            oSystem.SetValue_FormFunction("sErrorMessage", "Sorry it looks like your credentials are in use!");
                                            oSystem.SetValue_FormFunction("bRegistrationCompleted", "false");
                                        }
                                        #endregion
                                    }
                                    else
                                    {
                                        sRESPONSE = "false";
                                        sRESPONSEMESSAGE = "Validation Error: " + sReponse;
                                    }
                                }
                                else
                                {
                                    sRESPONSE = "false";
                                    sRESPONSEMESSAGE = "data connection error!";
                                }
                            }
                            else
                            {
                                sRESPONSE = "false";
                                sRESPONSEMESSAGE = "error: last name is blank!";
                            }
                        }
                        else
                        {
                            sRESPONSE = "false";
                            sRESPONSEMESSAGE = "error: first name is blank!";
                        }
                    }
                    else
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "error: password confirmation is blank!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "error: password is blank!";
                }
            }
            else
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = "error: user name is blank!";
            }

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }


        [HttpPost]
        public JsonResult UpdateProfile(string _ID, string _FirstName, string _LastName, string _Email, string _Password)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            #region
            try
            {
                if (!String.IsNullOrEmpty(_ID))
                {
                    int iUserID = System.Convert.ToInt32(_ID);

                    if (oSystem.OpenDataConnection())
                    {
                        DINT_Users dbInteraction = new DINT_Users(oSystem.cnCon);
                        List<DEF_Users.RecordObject> dbSearch = null;
                        List<DataParameter> lstParameters = new List<DataParameter>();

                        DEF_Users.RecordObject oFoundRec = null;

                        DataParameter pParameter = new DataParameter("ID", "'" + _ID + "'", "string", 0, "ID", " = ", "");
                        lstParameters.Add(pParameter);

                        int iTotalRows = dbInteraction.GetRowCount(lstParameters);
                        if (iTotalRows > 0)
                        {
                            dbSearch = dbInteraction.Get(lstParameters);
                            foreach(DEF_Users.RecordObject oRec in dbSearch)
                            {
                                if(oRec.ID == iUserID)
                                {
                                    oFoundRec = oRec;
                                }
                            }

                            if(oFoundRec != null)
                            {
                                if (!String.IsNullOrEmpty(_FirstName))
                                {
                                    oFoundRec.sFName = _FirstName;
                                }

                                if (!String.IsNullOrEmpty(_LastName))
                                {
                                    oFoundRec.sLName = _LastName;
                                }

                                if (!String.IsNullOrEmpty(_Email))
                                {
                                    oFoundRec.sPrimaryEMail = _Email;
                                }

                                oFoundRec.sPassword = oSystem.rsGlobalVeriables.oEncryption.Encrypt(_Password);
                                dbInteraction.Update_SQL(oFoundRec);
                            }
                        }
                    }
                }
            }
            catch
            {
            }
            #endregion

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }

        [HttpPost]
        public JsonResult Check_DuplicateUser(string _UserName, string _FirstName, string _LastName, string _Email, string _Phone)
        {
            //for this process true represents that a duplicate user found
            string sRESPONSE = "true";
            string sRESPONSEMESSAGE = "Error";

            if (!String.IsNullOrEmpty(_UserName))
            {
                if (!String.IsNullOrEmpty(_FirstName))
                {
                    if (!String.IsNullOrEmpty(_LastName))
                    {
                        if (oSystem.OpenDataConnection())
                        {
                            AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();
                            AriesCMS.Models.NewUserRegistration _oNewUser = new Models.NewUserRegistration();
                            _oNewUser.UserName = _UserName;
                            _oNewUser.Password = "";
                            _oNewUser.PasswordConfirm = "";
                            _oNewUser.FirstName = _FirstName;
                            _oNewUser.LastName = _LastName;
                            _oNewUser.EMail = _Email;
                            _oNewUser.Phone = _Phone;

                            int iDupCheck = 0;
                            iDupCheck = oSystem.CurrentUser.CheckUserDupCheck_UserName(oSystem.cnCon, _oNewUser.UserName);
                            if (iDupCheck == 0)
                            {
                                sRESPONSE = "false";
                                sRESPONSEMESSAGE = "No duplicate found!";
                            }
                            else if (iDupCheck < 0)
                            {
                                //Error occured
                                sRESPONSE = "true";
                                sRESPONSEMESSAGE = _oNewUser.ErrorMessage;
                            }
                            else
                            {
                                //Duplicate user found
                                sRESPONSE = "true";
                                sRESPONSEMESSAGE = _oNewUser.ErrorMessage;
                            }
                        }
                        else
                        {
                            sRESPONSE = "true";
                            sRESPONSEMESSAGE = "data connection error!";
                        }
                    }
                    else
                    {
                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "error: last name is blank!";
                    }
                }
                else
                {
                    sRESPONSE = "true";
                    sRESPONSEMESSAGE = "error: first name is blank!";
                }
            }
            else
            {
                sRESPONSE = "true";
                sRESPONSEMESSAGE = "error: user name is blank!";
            }


            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }
        
        [HttpPost]
        public JsonResult NaviItems(int _ParentID = 0)
        {
            string sRESPONSE = "true";
            string sRESPONSEMESSAGE = "Error";

            if (oSystem.OpenDataConnection())
            {
                DINT_WebSiteNavigation dbInteraction = new DINT_WebSiteNavigation(oSystem.cnCon);
                int iTotalRows = 0;

                List<DEF_WebSiteNavigation.RecordObject> dbSearch = null;
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = null;
                if (_ParentID > 0)
                {
                    pParameter = new DataParameter("iParentNavID", "'" + _ParentID + "'", "int", 1, "iParentID", " = ", "");
                    lstParameters.Add(pParameter);
                }
                else
                {
                    pParameter = new DataParameter("iParentNavID", "'" + "0" + "'", "int", 1, "iParentID", " = ", "");
                    lstParameters.Add(pParameter);
                }


                dbSearch = dbInteraction.Get(lstParameters);
                

            }

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }
        
        [HttpPost]
        public JsonResult JFileUpload(string Id)
        {
            string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
            string sRootPath = Request.PhysicalApplicationPath.ToString();
            string sRefURL = Request.UrlReferrer.AbsoluteUri.ToString();

            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";
            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        int oItemCount = System.Convert.ToInt32(Request.Files.Count.ToString());

                        if (oItemCount > 0)
                        {
                            string sSavedFileURL = "";
                            string _Base = "";
                            #region get form field Base
                            try
                            {
                                _Base = Request.Form["hlblCurrentFolderPath"];
                            }
                            catch
                            {

                            }
                            #endregion
                            string sFileName = "";
                            try
                            {

                                sFileName = System.IO.Path.GetFileName(Request.Files[0].FileName);
                                sFileName = sFileName.ToLower();
                                string sUploadDirectory = HttpContext.Server.MapPath("~/Themes/");
                                sFileName = sFileName.Replace("/", "").Replace("-", "_").Replace(" ", "_").Replace("#", "").Replace("!", "").Replace("@", "").Replace("$", "").Replace("%", "").Replace("^", "").Replace("&", "").Replace("*", "").Replace(",", "").Replace("(", "").Replace(")", "").Replace("+", "").Replace("=", "").Replace(":", "");
                                sSavedFileURL = sBaseULR + "/Themes/" + sFileName;

                                FileInfo oFLCheck = new FileInfo(sSavedFileURL);
                                if (!oFLCheck.Exists)
                                {
                                    if (!String.IsNullOrEmpty(_Base))
                                    {
                                        HttpContext.Request.Files[0].SaveAs(_Base + "\\" + sFileName);
                                        sRESPONSEMESSAGE = "File Uploaded! - " + _Base + "\\" + sFileName;
                                    }
                                    else
                                    {
                                        HttpContext.Request.Files[0].SaveAs(sRootPath + "Themes\\" + sFileName);
                                        sRESPONSEMESSAGE = "File Uploaded! - " + "Themes\\" + sFileName;
                                    }
                                    sRESPONSE = "true";
                                }
                                else
                                {
                                    sRESPONSE = "false";
                                    sRESPONSEMESSAGE = "Sorry there is already a file with the same name present!";
                                }
                            }
                            catch
                            {
                            }

                        }
                        else
                        {
                            //No files made it to server
                            sRESPONSEMESSAGE = "No files made it to server";
                        }
                    }
                    else
                    {
                        //System User Identity
                        sRESPONSEMESSAGE = "System User Identity";
                    }
                }
                else
                {
                    //Server Error
                    sRESPONSEMESSAGE = "Server Error";
                }
            }
            catch (Exception s)
            {
                sRESPONSEMESSAGE = "System Error: " + s.ToString();
            }

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }


        [HttpPost]
        public JsonResult SignUpForNewsLetters(string _EMail, string _FullName, string _FirstName, string _LastName, string _OptingInMail)
        {
            string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
            string sRootPath = Request.PhysicalApplicationPath.ToString();
            string sRefURL = Request.UrlReferrer.AbsoluteUri.ToString();

            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            oSystem.SetValue_FormFunction("bFromMessageSent", "false");
            oSystem.SetValue_FormFunction("bFromError", "true");
            oSystem.SetValue_FormFunction("bLogInFormPostBack", "true");

            if (oSystem.OpenDataConnection())
            {
                oSystem.WebSite_Details(1);

                oSystem.Ini_WebSite_Messaging();
                //oSystem.WebSite_Messaging_List("");

                bool bFormValidated = true;
                sRESPONSEMESSAGE = "";

                #region Split Full name into first and last if first and last are empty
                if (!String.IsNullOrEmpty(_FullName))
                {
                    if (String.IsNullOrEmpty(_FirstName))
                    {
                        if (String.IsNullOrEmpty(_LastName))
                        {
                            try
                            {
                                string[] oSplit = _FullName.Split(' ');
                                _FirstName = oSplit[0];
                                _LastName = oSplit[1];
                            }
                            catch
                            {
                                _LastName = _FirstName;
                            }
                        }
                    }
                }
                #endregion

                #region Validation
                if (String.IsNullOrEmpty(_EMail))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide a proper Email. <br />";
                }

                if (String.IsNullOrEmpty(_FirstName))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide your First Name. <br />";
                }

                if (String.IsNullOrEmpty(_LastName))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide your Last Name. <br />";
                }

                if (String.IsNullOrEmpty(_OptingInMail))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please Opt into our news letter. <br />";
                }
                #endregion

                if (bFormValidated == true)
                {
                    #region Main Form Process
                    //string _EMail, string _FullName, string _FirstName, string _LastName, string _OptingInMail
                    AriesCMS.Models.NewNewsLetter _rec = new Models.NewNewsLetter();
                    _rec.FirstName = _FirstName;
                    _rec.LastName = _LastName;
                    _rec.EMail = _EMail;
                    _rec.HTTPLog = "";
                    try
                    {
                        _rec.HTTPLog = oSystem.VisitorHTTPValues.ToString();
                    }
                    catch
                    {

                    }
                    _rec.OptingInMail = true;
                    _rec.TrackingCode = "";

                    #region Create New Lead Record
                    DINT_WebSite_Leads odbWebSite_Leads = new DINT_WebSite_Leads(oSystem.cnCon);
                    AriesCMSDefinition.DEF_WebSite_Leads.RecordObject rec_WebSite_Leads = new DEF_WebSite_Leads.RecordObject();
                    rec_WebSite_Leads.iParentID = 1;
                    rec_WebSite_Leads.sParentID = "Default";
                    rec_WebSite_Leads.sControl = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.dtDateCreated = DateTime.Now;
                    rec_WebSite_Leads.dtLastUpdated = DateTime.Now;
                    rec_WebSite_Leads.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sCreatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                    rec_WebSite_Leads.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sUpdatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                    rec_WebSite_Leads.sAccessKey = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.sPrefix = "";
                    rec_WebSite_Leads.sFName = _rec.FirstName;
                    rec_WebSite_Leads.sMName = "";
                    rec_WebSite_Leads.sLName = _rec.LastName;
                    rec_WebSite_Leads.bAccLocked = false;
                    rec_WebSite_Leads.iPrimaryRole = 0;
                    rec_WebSite_Leads.sPrimaryRole = "";
                    rec_WebSite_Leads.sAvitarImgURL = "";
                    rec_WebSite_Leads.bCurrentlyLoggedIn = false;
                    rec_WebSite_Leads.iReputationLevel = 0;
                    rec_WebSite_Leads.sKeyWords = "";
                    rec_WebSite_Leads.sScreenName = "";
                    rec_WebSite_Leads.sProfileDiscription = "";
                    rec_WebSite_Leads.iGenderTypeID = 0;
                    rec_WebSite_Leads.sGenderTypeID = "";
                    rec_WebSite_Leads.bPrivateProfile = false;
                    rec_WebSite_Leads.dtDateOfBirth = DateTime.Parse("01/01/1901");
                    rec_WebSite_Leads.sActivationKey = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.dtLastLoggedIn = "";
                    rec_WebSite_Leads.bAccountActivated = false;

                    rec_WebSite_Leads.sAddress1 = "";
                    rec_WebSite_Leads.sAddress2 = "";
                    rec_WebSite_Leads.sAddress3 = "";
                    rec_WebSite_Leads.sCity = "";
                    rec_WebSite_Leads.iStateID = 0;
                    rec_WebSite_Leads.sStateID = "";
                    rec_WebSite_Leads.sPostalCode = "";
                    rec_WebSite_Leads.iCountryID = 0;
                    rec_WebSite_Leads.sCountryID = "";

                    rec_WebSite_Leads.sPrimaryEMail = _rec.EMail;
                    rec_WebSite_Leads.sPrimaryPhone = "";
                    rec_WebSite_Leads.bOptInMarketing = false;

                    rec_WebSite_Leads.sBillAddress1 = "";
                    rec_WebSite_Leads.sBillAddress2 = "";
                    rec_WebSite_Leads.sBillAddress3 = "";
                    rec_WebSite_Leads.sBillCity = "";
                    rec_WebSite_Leads.iBillStateID = 0;
                    rec_WebSite_Leads.sBillStateID = "";
                    rec_WebSite_Leads.sBillPostalCode = "";
                    rec_WebSite_Leads.iBillCountryID = 0;
                    rec_WebSite_Leads.sBillCountryID = "";

                    rec_WebSite_Leads.IPAddressess = oSystem.VisitorHTTPValues.VisitorIPAddress();
                    rec_WebSite_Leads.bForceLogOut = false;
                    rec_WebSite_Leads.sCurrentSession = "";

                    rec_WebSite_Leads.sCompanyName = "";
                    rec_WebSite_Leads.sCompanyURL = "";
                    rec_WebSite_Leads.sCompanyTitle = "";

                    try
                    {
                        rec_WebSite_Leads.sEventLog = oSystem.VisitorHTTPValues.ToString();
                    }
                    catch
                    {

                    }
                    rec_WebSite_Leads.sNotes = "";


                    rec_WebSite_Leads.sCookieID = oSystem.UserCookie.CookieID;
                    rec_WebSite_Leads.sIP = oSystem.VisitorHTTPValues.VisitorIPAddress();
                    rec_WebSite_Leads.iRefferedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sRefferedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;
                    rec_WebSite_Leads.sRefferealCode1 = _rec.TrackingCode;
                    rec_WebSite_Leads.sRefferealCode2 = "";
                    rec_WebSite_Leads.sRefferealCode3 = "";
                    rec_WebSite_Leads.iUserID = 0;
                    rec_WebSite_Leads.sUserID = "";

                    odbWebSite_Leads.Insert_SQL(rec_WebSite_Leads);
                    #endregion

                    string sSubject = "";
                    string sMessage = "";
                    //Send Internal Alert Of News Letter Registration
                    #region Send out Internal Alert of news letter registration
                    sSubject = "Site Visitor Would Like to Register to receive our news letter";
                    sMessage = "";
                    sMessage += "News Letter Registration: " + "<br/>";
                    sMessage += "Name " + ":" + _FirstName + " " + _LastName + "\r\n" + "<br/>";
                    sMessage += "EMail " + ":" + _EMail + "\r\n" + "<br/>";

                    oSystem.SendMessage("site@yourdomain.com", "Site News Letter", "sales@yourdomain.com", "Sales Team", sSubject, sMessage);
                    #endregion

                    #region Send Out Email To User
                    //sSubject = "Thanks, your registerd for Our News Letter";
                    sMessage = "";
                    #region Message Style Sheet
                    //sMessage += "	<style type=" + "\"" + "text/css" + "\"" + ">";
                    //sMessage += "		.a_white";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white:hover";
                    //sMessage += "		{";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  color:#000 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white:focus";
                    //sMessage += "		{";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  color:#000 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_white1";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FFFFFF;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white1:hover";
                    //sMessage += "		{";
                    //sMessage += "		  color:#00BF03;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white1:focus";
                    //sMessage += "		{";
                    //sMessage += "		  color:#00BF03 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_white2";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		  margin-right: 15px !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white2:hover";
                    //sMessage += "		{";
                    //sMessage += "		  text-decoration:underline;";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  /*color:#000 !important;*/";
                    //sMessage += "		}";
                    //sMessage += "		.a_white2:focus";
                    //sMessage += "		{";
                    //sMessage += "		  text-decoration:underline;";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  /*color:#000 !important;*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_dark";
                    //sMessage += "		{";
                    //sMessage += "		  color:#391B1C !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_dark:hover";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FF080D !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_dark:focus";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FF080D !important;";
                    //sMessage += "		}";
                    //sMessage += "		";
                    //sMessage += "		";
                    //sMessage += "";
                    //sMessage += "		.whitetype";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.blacktype";
                    //sMessage += "		{";
                    //sMessage += "		  color: rgba(0,0,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.text-bold";
                    //sMessage += "		{";
                    //sMessage += "			font-weight:bold;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.text-italics";
                    //sMessage += "		{";
                    //sMessage += "			font-style:italic;";
                    //sMessage += "		}";
                    //sMessage += "		.text-smaller_1{";
                    //sMessage += "			font-size:0.60em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-smaller_2{";
                    //sMessage += "			font-size:0.80em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_1{";
                    //sMessage += "			font-size:1.20em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_2{";
                    //sMessage += "			font-size:1.30em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_3{";
                    //sMessage += "			font-size:2.30em;";
                    //sMessage += "		}";
                    //sMessage += "		.fnav-next";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.text-red";
                    //sMessage += "		{";
                    //sMessage += "			/*color:#FF0004;*/";
                    //sMessage += "			color:#b42121;";
                    //sMessage += "		}";
                    //sMessage += "		.text-gray";
                    //sMessage += "		{";
                    //sMessage += "			color:#D5D4D4;";
                    //sMessage += "		}";
                    //sMessage += "		.text-underline";
                    //sMessage += "		{";
                    //sMessage += "			text-decoration: underline;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.sidedark_left";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.64);";
                    //sMessage += "			border-left:groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.sidedrak_right";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.64);";
                    //sMessage += "			border-right:groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.panle_rounded_border";
                    //sMessage += "		{";
                    //sMessage += "			border:solid 2px rgba(0,0,0,1.00);";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "		.panle_rounded_border1";
                    //sMessage += "		{";
                    //sMessage += "			border:solid 7px rgba(0,0,0,1.00);";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded";
                    //sMessage += "		{";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded2";
                    //sMessage += "		{";
                    //sMessage += "			-moz-border-radius: 20px;";
                    //sMessage += "			border-radius: 20px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded_Top";
                    //sMessage += "		{";
                    //sMessage += "			border-top-left-radius: 15px;";
                    //sMessage += "			border-top-right-radius: 15px;	";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded_Bottom";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom-left-radius: 15px;";
                    //sMessage += "			border-bottom-right-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panel_border2";
                    //sMessage += "		{";
                    //sMessage += "			border: groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.base_panelHeight";
                    //sMessage += "		{";
                    //sMessage += "		  margin: 0 auto;";
                    //sMessage += "		  min-height:1000px;";
                    //sMessage += "		  height:100%;";
                    //sMessage += "		}";
                    //sMessage += "		.base_panelHeight2";
                    //sMessage += "		{";
                    //sMessage += "		  min-height:90px;";
                    //sMessage += "		}";
                    //sMessage += "		.base_panelHeight3";
                    //sMessage += "		{";
                    //sMessage += "		  min-height:200px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderbottom_orange";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom:solid 3px #EC6701;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.Largerfont";
                    //sMessage += "		{";
                    //sMessage += "			font-size:1.9em;";
                    //sMessage += "			font-weight:bold;";
                    //sMessage += "		}";
                    //sMessage += "		";
                    //sMessage += "";
                    //sMessage += "		.border_solid_1x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_bottom_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-bottom: solid #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_bottom_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: solid #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_bottom_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: solid #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_solid_1x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_bottom_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-bottom: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_bottom_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_bottom_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_top_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-top: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_top_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_top_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_top_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-top: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_top_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_top_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.border_left_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-left: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_left_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_left_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_left_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-left: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_left_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_left_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.border_right_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-right: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_right_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_right_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_right_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-right: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_right_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_right_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.white_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(255,255,255,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.black_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(0,0,0,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.lightgray_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(237,237,237,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.orange_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.80);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.70);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.60);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.50);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.40);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.30);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.20);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.10);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.red_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.80);";
                    //sMessage += "			border-color:transparent !important;";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.70);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.blue_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.blue_background1";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.purple_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.80);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.70);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.60);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.50);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.lightblue_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.green_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.60);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.50);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.40);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.30);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.20);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.10);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.gray_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.darkgray_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-red";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FF0004;";
                    //sMessage += "		  border-color: #7C0002;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:focus, .btn-red.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:active, .btn-red.active,";
                    //sMessage += "		.open > .btn-red.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(0, 69%, 22%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#b42121" + "\"" + ", endColorstr=" + "\"" + "#5e1111" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#b42121), to(#5e1111));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #b42121), color-stop(100%, #5e1111));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: linear-gradient(#b42121, #5e1111);";
                    //sMessage += "		  border-color: #5e1111 #5e1111 hsl(0, 69%, 17%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:focus, .btn-maroon.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:active, .btn-maroon.active,";
                    //sMessage += "		.open > .btn-maroon.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-orang";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FF5F00;";
                    //sMessage += "		  border-color: #FF5F00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:focus, .btn-orang.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:active, .btn-orang.active,";
                    //sMessage += "		.open > .btn-orang.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-green";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #098000;";
                    //sMessage += "		  border-color: #416700;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:focus, .btn-green.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:active, .btn-green.active,";
                    //sMessage += "		.open > .btn-green.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-blue";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: rgba(19,28,68,1.00);";
                    //sMessage += "		  border-color: rgba(19,28,63,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: rgba(255,245,0,1.00);";
                    //sMessage += "		  border-color: rgba(255,206,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: rgba(255,245,0,1.00);";
                    //sMessage += "		  border-color: rgba(255,206,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.brown_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "	</style>";
                    #endregion
                    //sMessage += "<table width=" + "\"" + "100%" + "\"" + " border=" + "\"" + "0" + "\"" + " cellspacing=" + "\"" + "0" + "\"" + ">";
                    //sMessage += " <thead >";
                    //sMessage += "   <tr>";
                    //sMessage += "	   <th width=" + "\"" + "10%" + "\"" + ">";
                    //sMessage += "      	<img src=" + "\"" + "https://www.ariestco.com/themes/aries5/images/logos/AriesLogo_ForLightBackground_v8_135H.png" + "\"" + " width=" + "\"" + "100%" + "\"" + " alt=" + "\"" + "Aries TCO Logo" + "\"" + " />";
                    //sMessage += "       </th>";
                    //sMessage += "	   <th width=" + "\"" + "80%" + "\"" + ">&nbsp;</th>";
                    //sMessage += "	   <th width=" + "\"" + "10%" + "\"" + ">";
                    //sMessage += "		  <span style=" + "\"" + "font-weight: bold; color: rgba(204,199,199,1.00); text-align: center;" + "\"" + ">SENT ON:<br/>" + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + "</span>";
                    //sMessage += "	   </th>";
                    //sMessage += "   </tr>";
                    //sMessage += "  </thead>";
                    //sMessage += "  <tbody>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + " style=" + "\"" + "text-align: left;" + "\"" + ">";
                    //sMessage += "		  <h2> <span style=" + "\"" + "font-weight: bold;" + "\"" + ">" + _FirstName + "</span>  	</h2>";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + " style=" + "\"" + "text-align: center;" + "\"" + ">";
                    //sMessage += "      	<h2 class=" + "\"" + "border_bottom_solid_1x" + "\"" + ">Welcome Friend</h2>  	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">";
                    //sMessage += "      	<p class=" + "\"" + "text-larger_2" + "\"" + ">";
                    //sMessage += "				Welcome to our little family.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				This email is to confirm you have been added to our News Letter.  We try not to send out stuff unless it's something worth reading about.  So please add " + "\"" + "newsletter@ariestco.com" + "\"" + " to your safe list to avoid it going into your " + "\"" + "junk" + "\"" + " mail.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				Here's looking forward to a long and lasting relationship.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				Let us know if we can help in any way.";
                    //sMessage += "				<br/>";
                    //sMessage += "				";
                    //sMessage += "				Aries Sales &amp; Marketing Team";
                    //sMessage += "				<a href=" + "\"" + "mailto:sales@ariestco.com" + "\"" + ">sales@ariestco.com</a>";
                    //sMessage += "			</p>    ";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "		<td width=" + "\"" + "80%" + "\"" + "><p>&nbsp;</p></td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">";
                    //sMessage += "      	<p class=" + "\"" + "text-larger_2" + "\"" + ">		";
                    //sMessage += "				If you need us for any reason don't hesitate in reaching out.  <a href=" + "\"" + "mailto:sales@ariestco.com" + "\"" + ">sales@ariestco.com</a>";
                    //sMessage += "		</p>    ";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">&nbsp;";
                    //sMessage += "      	   	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td colspan=" + "\"" + "3" + "\"" + " class=" + "\"" + "brown_background whitetype" + "\"" + ">      ";
                    //sMessage += "		<table width=" + "\"" + "100%" + "\"" + " border=" + "\"" + "0" + "\"" + " cellspacing=" + "\"" + "9" + "\"" + ">";
                    //sMessage += "		 <thead>";
                    //sMessage += "		   <tr>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariescms.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">Aries CMS</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">A unique .NET C# CMS designed for software developers to build on.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariesace.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">Aries ACE</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">ACE - Automated Coding Engine. Automate Software Programming.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.sierambas.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">SIERA MBAS</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">The first of its kind, complete business management. Centralize data, process  &amp; automate key processes. </p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/blog" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">OUR BLOG</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Look through a series of frequently asked questions, and our answers.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/#signup" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">DOWNLOAD</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Download Free Launch Wizard</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/portal" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">SIGN IN</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Customer portal.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "		   </tr>";
                    //sMessage += "		  </thead>";
                    //sMessage += "		  <tbody>";
                    //sMessage += "			<tr>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			</tr>";
                    //sMessage += "			<tr>";
                    //sMessage += "			  <td colspan=" + "\"" + "6" + "\"" + "><span style=" + "\"" + "font-weight:bold; font-size:0.95em;" + "\"" + " class=" + "\"" + "text-white" + "\"" + ">&copy; 2017-2018 Aries TCO, Inc.</span></td>";
                    //sMessage += "			</tr>";
                    //sMessage += "		  </tbody>";
                    //sMessage += "		</table>";
                    //sMessage += "      </td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;";
                    //sMessage += "      	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">&nbsp;";
                    //sMessage += "      	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;";
                    //sMessage += "		 ";
                    //sMessage += "      </td>";
                    //sMessage += "    </tr>";
                    //sMessage += "  </tbody>";
                    //sMessage += "</table>";

                    //oSystem.SendMessage("sales@ariestco.com", "Aries TCO News Letter", _EMail, _FirstName + " " + _LastName, sSubject, sMessage);
                    #endregion


                    if (oSystem.recWebSite != null)
                    {
                        if (oSystem.recWebSite.ID > 0)
                        {
                            if (oSystem.recWebSite.iContactConfMessageID > 0)
                            {
                                oSystem.WebSite_Messaging_Details(oSystem.recWebSite.iNewsLetrRegMessageID, "", false, false, false);
                                if (oSystem.recWebSite_Messaging != null)
                                {
                                    if (oSystem.recWebSite_Messaging.ID > 0)
                                    {
                                        //sSubject = "Aries TCO - Your Contact Request";
                                        sSubject = oSystem.recWebSite_Messaging.sSubject;
                                        sMessage = "";
                                        sMessage = oSystem.Parse_WebSite_Messaging_Template_NewNewsLetterValues(oSystem.recWebSite_Messaging.sMessageBody, _rec);

                                        oSystem.SendMessage(oSystem.recWebSite_Messaging.sFromEmail, oSystem.recWebSite_Messaging.sFromName, _EMail, _FirstName, sSubject, sMessage);


                                    }
                                }
                            }
                        }
                    }
                    #endregion


                    sRESPONSE = "true";
                    sRESPONSEMESSAGE = "";


                    oSystem.SetValue_FormFunction("bFromMessageSent", "true");
                    oSystem.SetValue_FormFunction("bFromError", "false");
                    sRESPONSE = "true";
                }
            }
            else
            {
                sRESPONSEMESSAGE += " Could not send message system is currently unavailable!";
            }


            oSystem.SetValue_FormFunction("sErrorMessage", sRESPONSEMESSAGE);
            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }

        [HttpPost]
        public JsonResult SendContactUs(string _Name, string _Email, string _Subject, string _Message)
        {
            string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
            string sRootPath = Request.PhysicalApplicationPath.ToString();
            string sRefURL = Request.UrlReferrer.AbsoluteUri.ToString();

            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            oSystem.SetValue_FormFunction("bFromMessageSent", "false");
            oSystem.SetValue_FormFunction("bFromError", "true");
            oSystem.SetValue_FormFunction("bFromMessageSent", "false");
            oSystem.SetValue_FormFunction("bContactUsFormPostBack", "true");

            oSystem.SetValue_FormFunction("otxtName", _Name);
            oSystem.SetValue_FormFunction("otxtEmail", _Email);
            oSystem.SetValue_FormFunction("otxtSubject", _Subject);
            oSystem.SetValue_FormFunction("otxtMessage", _Message);


            if (oSystem.OpenDataConnection())
            {
                bool bFormValidated = true;
                #region Validation
                if (String.IsNullOrEmpty(_Email))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide a proper Email. <br />";
                }

                if (String.IsNullOrEmpty(_Name))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide your full Name. <br />";
                }
                #endregion

                if (bFormValidated == true)
                {
                    oSystem.WebSite_Details(1);

                    oSystem.Ini_WebSite_Messaging();
                    //oSystem.WebSite_Messaging_List("");

                    string _FirstName = "";
                    string _LastName = "";
                    #region Split Full name into first and last if first and last are empty
                    if (!String.IsNullOrEmpty(_Name))
                    {
                        if (String.IsNullOrEmpty(_Name))
                        {
                            if (String.IsNullOrEmpty(_Name))
                            {
                                try
                                {
                                    string[] oSplit = _Name.Split(' ');
                                    _FirstName = oSplit[0];
                                    _LastName = oSplit[1];
                                }
                                catch
                                {
                                    _LastName = _FirstName;
                                }
                            }
                        }
                    }
                    #endregion

                    AriesCMS.Models.ContactLeadView _rec = new Models.ContactLeadView();
                    _rec.FirstName = _FirstName;
                    _rec.LastName = _LastName;
                    _rec.Email = _Email;
                    _rec.Phone = "";
                    _rec.PhoneExt = "";
                    _rec.CompanyName = "";
                    _rec.CompanyURL = "";
                    _rec.GrossAnnualRevenues = "";
                    _rec.HowManyEmployees = "";
                    _rec.IsCMSForm = "";
                    _rec.Notes = _Name + " Said: " + _Message;
                    _rec.RefferalCode = "";
                    _rec.Title = "";


                    #region Create New Lead Record
                    DINT_WebSite_Leads odbWebSite_Leads = new DINT_WebSite_Leads(oSystem.cnCon);
                    AriesCMSDefinition.DEF_WebSite_Leads.RecordObject rec_WebSite_Leads = new DEF_WebSite_Leads.RecordObject();
                    rec_WebSite_Leads.iParentID = 1;
                    rec_WebSite_Leads.sParentID = "Default";
                    rec_WebSite_Leads.sControl = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.dtDateCreated = DateTime.Now;
                    rec_WebSite_Leads.dtLastUpdated = DateTime.Now;
                    rec_WebSite_Leads.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sCreatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                    rec_WebSite_Leads.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sUpdatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                    rec_WebSite_Leads.sAccessKey = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.sPrefix = "";
                    rec_WebSite_Leads.sFName = _rec.FirstName;
                    rec_WebSite_Leads.sMName = "";
                    rec_WebSite_Leads.sLName = _rec.LastName;
                    rec_WebSite_Leads.bAccLocked = false;
                    rec_WebSite_Leads.iPrimaryRole = 0;
                    rec_WebSite_Leads.sPrimaryRole = "";
                    rec_WebSite_Leads.sAvitarImgURL = "";
                    rec_WebSite_Leads.bCurrentlyLoggedIn = false;
                    rec_WebSite_Leads.iReputationLevel = 0;
                    rec_WebSite_Leads.sKeyWords = "";
                    rec_WebSite_Leads.sScreenName = "";
                    rec_WebSite_Leads.sProfileDiscription = "";
                    rec_WebSite_Leads.iGenderTypeID = 0;
                    rec_WebSite_Leads.sGenderTypeID = "";
                    rec_WebSite_Leads.bPrivateProfile = false;
                    rec_WebSite_Leads.dtDateOfBirth = DateTime.Parse("01/01/1901");
                    rec_WebSite_Leads.sActivationKey = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.dtLastLoggedIn = "";
                    rec_WebSite_Leads.bAccountActivated = false;

                    rec_WebSite_Leads.sAddress1 = "";
                    rec_WebSite_Leads.sAddress2 = "";
                    rec_WebSite_Leads.sAddress3 = "";
                    rec_WebSite_Leads.sCity = "";
                    rec_WebSite_Leads.iStateID = 0;
                    rec_WebSite_Leads.sStateID = "";
                    rec_WebSite_Leads.sPostalCode = "";
                    rec_WebSite_Leads.iCountryID = 0;
                    rec_WebSite_Leads.sCountryID = "";

                    rec_WebSite_Leads.sPrimaryEMail = _rec.Email;
                    rec_WebSite_Leads.sPrimaryPhone = "";
                    rec_WebSite_Leads.bOptInMarketing = false;

                    rec_WebSite_Leads.sBillAddress1 = "";
                    rec_WebSite_Leads.sBillAddress2 = "";
                    rec_WebSite_Leads.sBillAddress3 = "";
                    rec_WebSite_Leads.sBillCity = "";
                    rec_WebSite_Leads.iBillStateID = 0;
                    rec_WebSite_Leads.sBillStateID = "";
                    rec_WebSite_Leads.sBillPostalCode = "";
                    rec_WebSite_Leads.iBillCountryID = 0;
                    rec_WebSite_Leads.sBillCountryID = "";

                    rec_WebSite_Leads.IPAddressess = oSystem.VisitorHTTPValues.VisitorIPAddress();
                    rec_WebSite_Leads.bForceLogOut = false;
                    rec_WebSite_Leads.sCurrentSession = "";

                    rec_WebSite_Leads.sCompanyName = "";
                    rec_WebSite_Leads.sCompanyURL = "";
                    rec_WebSite_Leads.sCompanyTitle = "";


                    try
                    {
                        rec_WebSite_Leads.sEventLog = oSystem.VisitorHTTPValues.ToString();
                    }
                    catch
                    {

                    }
                    rec_WebSite_Leads.sNotes = _rec.Notes;


                    rec_WebSite_Leads.sCookieID = oSystem.UserCookie.CookieID;
                    rec_WebSite_Leads.sIP = oSystem.VisitorHTTPValues.VisitorIPAddress();
                    rec_WebSite_Leads.iRefferedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sRefferedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;
                    rec_WebSite_Leads.sRefferealCode1 = "";
                    rec_WebSite_Leads.sRefferealCode2 = "";
                    rec_WebSite_Leads.sRefferealCode3 = "";
                    rec_WebSite_Leads.iUserID = 0;
                    rec_WebSite_Leads.sUserID = "";

                    odbWebSite_Leads.Insert_SQL(rec_WebSite_Leads);
                    #endregion

                    string sSubject = "";
                    string sMessage = "";

                    #region Send Email for internal use
                    sSubject = "Aries Web Site Contact Request";
                    sMessage = "";
                    sMessage += "Contact requesting from Aries Web Site: " + "<br/>";
                    sMessage += "Name: " + _Name + "\r\n" + "<br/>";
                    sMessage += "EMail: " + _Email + "\r\n" + "<br/>";
                    sMessage += "Subject: " + _Subject + "\r\n" + "<br/>";
                    sMessage += "Message: " + _Message + "\r\n" + "<br/>";

                    oSystem.SendMessage("site@ariestco.com", "Aries Contact Us", "sales@ariestco.com", "Aries", sSubject, sMessage);
                    #endregion

                    #region Send Out Email To User
                    #region Example Message
                    //sSubject = "Aries TCO - Your Contact Request";
                    //sMessage = "";
                    #region Message Style Sheet
                    //sMessage += "	<style type=" + "\"" + "text/css" + "\"" + ">";
                    //sMessage += "		.a_white";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white:hover";
                    //sMessage += "		{";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  color:#000 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white:focus";
                    //sMessage += "		{";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  color:#000 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_white1";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FFFFFF;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white1:hover";
                    //sMessage += "		{";
                    //sMessage += "		  color:#00BF03;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white1:focus";
                    //sMessage += "		{";
                    //sMessage += "		  color:#00BF03 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_white2";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		  margin-right: 15px !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white2:hover";
                    //sMessage += "		{";
                    //sMessage += "		  text-decoration:underline;";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  /*color:#000 !important;*/";
                    //sMessage += "		}";
                    //sMessage += "		.a_white2:focus";
                    //sMessage += "		{";
                    //sMessage += "		  text-decoration:underline;";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  /*color:#000 !important;*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_dark";
                    //sMessage += "		{";
                    //sMessage += "		  color:#391B1C !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_dark:hover";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FF080D !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_dark:focus";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FF080D !important;";
                    //sMessage += "		}";
                    //sMessage += "		";
                    //sMessage += "		";
                    //sMessage += "";
                    //sMessage += "		.whitetype";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.blacktype";
                    //sMessage += "		{";
                    //sMessage += "		  color: rgba(0,0,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.text-bold";
                    //sMessage += "		{";
                    //sMessage += "			font-weight:bold;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.text-italics";
                    //sMessage += "		{";
                    //sMessage += "			font-style:italic;";
                    //sMessage += "		}";
                    //sMessage += "		.text-smaller_1{";
                    //sMessage += "			font-size:0.60em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-smaller_2{";
                    //sMessage += "			font-size:0.80em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_1{";
                    //sMessage += "			font-size:1.20em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_2{";
                    //sMessage += "			font-size:1.30em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_3{";
                    //sMessage += "			font-size:2.30em;";
                    //sMessage += "		}";
                    //sMessage += "		.fnav-next";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.text-red";
                    //sMessage += "		{";
                    //sMessage += "			/*color:#FF0004;*/";
                    //sMessage += "			color:#b42121;";
                    //sMessage += "		}";
                    //sMessage += "		.text-gray";
                    //sMessage += "		{";
                    //sMessage += "			color:#D5D4D4;";
                    //sMessage += "		}";
                    //sMessage += "		.text-underline";
                    //sMessage += "		{";
                    //sMessage += "			text-decoration: underline;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.sidedark_left";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.64);";
                    //sMessage += "			border-left:groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.sidedrak_right";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.64);";
                    //sMessage += "			border-right:groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.panle_rounded_border";
                    //sMessage += "		{";
                    //sMessage += "			border:solid 2px rgba(0,0,0,1.00);";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "		.panle_rounded_border1";
                    //sMessage += "		{";
                    //sMessage += "			border:solid 7px rgba(0,0,0,1.00);";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded";
                    //sMessage += "		{";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded2";
                    //sMessage += "		{";
                    //sMessage += "			-moz-border-radius: 20px;";
                    //sMessage += "			border-radius: 20px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded_Top";
                    //sMessage += "		{";
                    //sMessage += "			border-top-left-radius: 15px;";
                    //sMessage += "			border-top-right-radius: 15px;	";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded_Bottom";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom-left-radius: 15px;";
                    //sMessage += "			border-bottom-right-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panel_border2";
                    //sMessage += "		{";
                    //sMessage += "			border: groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.base_panelHeight";
                    //sMessage += "		{";
                    //sMessage += "		  margin: 0 auto;";
                    //sMessage += "		  min-height:1000px;";
                    //sMessage += "		  height:100%;";
                    //sMessage += "		}";
                    //sMessage += "		.base_panelHeight2";
                    //sMessage += "		{";
                    //sMessage += "		  min-height:90px;";
                    //sMessage += "		}";
                    //sMessage += "		.base_panelHeight3";
                    //sMessage += "		{";
                    //sMessage += "		  min-height:200px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderbottom_orange";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom:solid 3px #EC6701;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.Largerfont";
                    //sMessage += "		{";
                    //sMessage += "			font-size:1.9em;";
                    //sMessage += "			font-weight:bold;";
                    //sMessage += "		}";
                    //sMessage += "		";
                    //sMessage += "";
                    //sMessage += "		.border_solid_1x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_bottom_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-bottom: solid #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_bottom_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: solid #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_bottom_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: solid #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_solid_1x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_bottom_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-bottom: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_bottom_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_bottom_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_top_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-top: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_top_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_top_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_top_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-top: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_top_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_top_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.border_left_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-left: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_left_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_left_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_left_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-left: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_left_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_left_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.border_right_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-right: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_right_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_right_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_right_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-right: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_right_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_right_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.white_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(255,255,255,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.black_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(0,0,0,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.lightgray_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(237,237,237,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.orange_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.80);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.70);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.60);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.50);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.40);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.30);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.20);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.10);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.red_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.80);";
                    //sMessage += "			border-color:transparent !important;";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.70);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.blue_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.blue_background1";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.purple_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.80);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.70);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.60);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.50);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.lightblue_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.green_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.60);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.50);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.40);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.30);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.20);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.10);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.gray_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.darkgray_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-red";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FF0004;";
                    //sMessage += "		  border-color: #7C0002;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:focus, .btn-red.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:active, .btn-red.active,";
                    //sMessage += "		.open > .btn-red.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(0, 69%, 22%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#b42121" + "\"" + ", endColorstr=" + "\"" + "#5e1111" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#b42121), to(#5e1111));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #b42121), color-stop(100%, #5e1111));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: linear-gradient(#b42121, #5e1111);";
                    //sMessage += "		  border-color: #5e1111 #5e1111 hsl(0, 69%, 17%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:focus, .btn-maroon.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:active, .btn-maroon.active,";
                    //sMessage += "		.open > .btn-maroon.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-orang";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FF5F00;";
                    //sMessage += "		  border-color: #FF5F00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:focus, .btn-orang.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:active, .btn-orang.active,";
                    //sMessage += "		.open > .btn-orang.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-green";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #098000;";
                    //sMessage += "		  border-color: #416700;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:focus, .btn-green.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:active, .btn-green.active,";
                    //sMessage += "		.open > .btn-green.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-blue";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: rgba(19,28,68,1.00);";
                    //sMessage += "		  border-color: rgba(19,28,63,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: rgba(255,245,0,1.00);";
                    //sMessage += "		  border-color: rgba(255,206,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: rgba(255,245,0,1.00);";
                    //sMessage += "		  border-color: rgba(255,206,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.brown_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "	</style>";
                    #endregion
                    //sMessage += "<table width=" + "\"" + "100%" + "\"" + " border=" + "\"" + "0" + "\"" + " cellspacing=" + "\"" + "0" + "\"" + ">";
                    //sMessage += " <thead >";
                    //sMessage += "   <tr>";
                    //sMessage += "	   <th width=" + "\"" + "10%" + "\"" + ">";
                    //sMessage += "      	<img src=" + "\"" + "https://www.ariestco.com/themes/aries5/images/logos/AriesLogo_ForLightBackground_v8_135H.png" + "\"" + " width=" + "\"" + "100%" + "\"" + " alt=" + "\"" + "Aries TCO Logo" + "\"" + " />";
                    //sMessage += "       </th>";
                    //sMessage += "	   <th width=" + "\"" + "80%" + "\"" + ">&nbsp;</th>";
                    //sMessage += "	   <th width=" + "\"" + "10%" + "\"" + ">";
                    //sMessage += "		  <span style=" + "\"" + "font-weight: bold; color: rgba(204,199,199,1.00); text-align: center;" + "\"" + ">SENT ON:<br/>" + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + "</span>";
                    //sMessage += "	   </th>";
                    //sMessage += "   </tr>";
                    //sMessage += "  </thead>";
                    //sMessage += "  <tbody>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + " style=" + "\"" + "text-align: left;" + "\"" + ">";
                    //sMessage += "		  <h2> <span style=" + "\"" + "font-weight: bold;" + "\"" + ">" + _Name + "</span>  	</h2>";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + " style=" + "\"" + "text-align: center;" + "\"" + ">";
                    //sMessage += "      	<h2 class=" + "\"" + "border_bottom_solid_1x" + "\"" + ">Contact Request Processing</h2>  	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">";
                    //sMessage += "      	<p class=" + "\"" + "text-larger_2" + "\"" + ">";
                    //sMessage += "				We are processing your request.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				Within the next 24 hours one of our representatives will reach out to you.  So please add " + "\"" + "support@ariestco.com" + "\"" + " to your safe list to avoid it going into your " + "\"" + "junk" + "\"" + " mail.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				We look forward to helping you out in anyway we can.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				";
                    //sMessage += "				Aries Sales &amp; Marketing Team";
                    //sMessage += "				<a href=" + "\"" + "mailto:sales@ariestco.com" + "\"" + ">sales@ariestco.com</a>";
                    //sMessage += "			</p>    ";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "		<td width=" + "\"" + "80%" + "\"" + "><p>&nbsp;</p></td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">";
                    //sMessage += "      	<p class=" + "\"" + "text-larger_2" + "\"" + ">		";
                    //sMessage += "				If you need us for any reason don't hesitate in reaching out.  <a href=" + "\"" + "mailto:sales@ariestco.com" + "\"" + ">sales@ariestco.com</a>";
                    //sMessage += "		</p>    ";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">&nbsp;";
                    //sMessage += "      	   	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td colspan=" + "\"" + "3" + "\"" + " class=" + "\"" + "brown_background whitetype" + "\"" + ">      ";
                    //sMessage += "		<table width=" + "\"" + "100%" + "\"" + " border=" + "\"" + "0" + "\"" + " cellspacing=" + "\"" + "9" + "\"" + ">";
                    //sMessage += "		 <thead>";
                    //sMessage += "		   <tr>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariescms.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">Aries CMS</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">A unique .NET C# CMS designed for software developers to build on.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariesace.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">Aries ACE</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">ACE - Automated Coding Engine. Automate Software Programming.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.sierambas.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">SIERA MBAS</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">The first of its kind, complete business management. Centralize data, process  &amp; automate key processes. </p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/blog" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">OUR BLOG</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Look through a series of frequently asked questions, and our answers.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/#signup" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">DOWNLOAD</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Download Free Launch Wizard</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/portal" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">SIGN IN</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Customer portal.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "		   </tr>";
                    //sMessage += "		  </thead>";
                    //sMessage += "		  <tbody>";
                    //sMessage += "			<tr>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			</tr>";
                    //sMessage += "			<tr>";
                    //sMessage += "			  <td colspan=" + "\"" + "6" + "\"" + "><span style=" + "\"" + "font-weight:bold; font-size:0.95em;" + "\"" + " class=" + "\"" + "text-white" + "\"" + ">&copy; 2017-2018 Aries TCO, Inc.</span></td>";
                    //sMessage += "			</tr>";
                    //sMessage += "		  </tbody>";
                    //sMessage += "		</table>";
                    //sMessage += "      </td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;";
                    //sMessage += "      	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">&nbsp;";
                    //sMessage += "      	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;";
                    //sMessage += "		 ";
                    //sMessage += "      </td>";
                    //sMessage += "    </tr>";
                    //sMessage += "  </tbody>";
                    //sMessage += "</table>";
                    //oSystem.SendMessage("sales@ariestco.com", "Aries TCO Sales", _Email, _Name, sSubject, sMessage);
                    #endregion

                    if (oSystem.recWebSite != null)
                    {
                        if (oSystem.recWebSite.ID > 0)
                        {
                            if (oSystem.recWebSite.iContactConfMessageID > 0)
                            {
                                oSystem.WebSite_Messaging_Details(oSystem.recWebSite.iContactConfMessageID, "", false, false, false);
                                if (oSystem.recWebSite_Messaging != null)
                                {
                                    if (oSystem.recWebSite_Messaging.ID > 0)
                                    {
                                        //sSubject = "Aries TCO - Your Contact Request";
                                        sSubject = oSystem.recWebSite_Messaging.sSubject;
                                        sMessage = "";
                                        sMessage = oSystem.Parse_WebSite_Messaging_Template_ContactLeadValues(oSystem.recWebSite_Messaging.sMessageBody, _rec);

                                        oSystem.SendMessage(oSystem.recWebSite_Messaging.sFromEmail, oSystem.recWebSite_Messaging.sFromName, _Email, _FirstName, sSubject, sMessage);
                                    }
                                }                               
                            }
                        }
                    }
                    #endregion

                    sRESPONSE = "true";
                    sRESPONSEMESSAGE = "";


                    oSystem.SetValue_FormFunction("bFromMessageSent", "true");
                    oSystem.SetValue_FormFunction("bFromError", "false");
                    sRESPONSE = "true";
                }
                else
                {
                    oSystem.SetValue_FormFunction("bFromMessageSent", "false");
                    oSystem.SetValue_FormFunction("bFromError", "true");
                    sRESPONSEMESSAGE += " Could not send message system is currently unavailable!";
                }
            }
            else
            {
                sRESPONSEMESSAGE += " Could not send message system is currently unavailable!";
            }


            oSystem.SetValue_FormFunction("sErrorMessage", sRESPONSEMESSAGE);
            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }

        [HttpPost]
        public JsonResult SendLeadRequest(string _FirstName, string _LastName, string _Email, string _CompanyName, string _Title, string _Phone,
            string _PhoneExt, string _CompanyURL, string _GrossAnnualRevenues, string _HowManyEmployees, string _RefferalCode, string _Notes)
        {
            string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
            string sRootPath = Request.PhysicalApplicationPath.ToString();
            string sRefURL = Request.UrlReferrer.AbsoluteUri.ToString();

            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            oSystem.SetValue_FormFunction("bFromMessageSent", "false");
            oSystem.SetValue_FormFunction("bFromError", "true");
            oSystem.SetValue_FormFunction("bLogInFormPostBack", "true");



            if (oSystem.OpenDataConnection())
            {
                oSystem.WebSite_Details(1);

                oSystem.Ini_WebSite_Messaging();
                //oSystem.WebSite_Messaging_List("");
                
                bool bFormValidated = true;
                if (!String.IsNullOrEmpty(_FirstName))
                {
                    string[] _FullName = _FirstName.Split(' ');
                    if (_FullName != null)
                    {
                        if (_FullName.Length > 0)
                        {
                            _FirstName = _FullName[0];
                            _LastName = _FullName[1];
                            try
                            {
                                if (_FullName.Length > 1)
                                {
                                    _LastName += " " + _FullName[2];
                                }
                            }
                            catch { }
                        }
                    }
                    else
                    {
                        _LastName = _FirstName;
                    }


                }

                #region Validation
                if (String.IsNullOrEmpty(_FirstName))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide a proper First Name. <br />";
                }

                if (String.IsNullOrEmpty(_LastName))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide your Last Name. <br />";
                }

                if (String.IsNullOrEmpty(_Email))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please provide a proper EMail. <br />";
                }

                //if (String.IsNullOrEmpty(_CompanyName))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please provide Company Name. <br />";
                //}

                //if (String.IsNullOrEmpty(_Title))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a Title. <br />";
                //}

                if (String.IsNullOrEmpty(_Phone))
                {
                    bFormValidated = false;
                    sRESPONSEMESSAGE += " Please enter a Phone. <br />";
                }

                //if (String.IsNullOrEmpty(_PhoneExt))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a Phone Ext. <br />";
                //}

                //if (String.IsNullOrEmpty(_CompanyURL))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a Company URL. <br />";
                //}

                //if (String.IsNullOrEmpty(_GrossAnnualRevenues))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a Gross Annual Revenues. <br />";
                //}

                //if (String.IsNullOrEmpty(_HowManyEmployees))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a How Many Employees. <br />";
                //}

                //if (String.IsNullOrEmpty(_RefferalCode))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a Refferal Code. <br />";
                //}

                //if (String.IsNullOrEmpty(_Notes))
                //{
                //    bFormValidated = false;
                //    sRESPONSEMESSAGE += " Please enter a Notes. <br />";
                //}
                #endregion

                if (bFormValidated == true)
                {
                    AriesCMS.Models.ContactLeadView _rec = new Models.ContactLeadView();
                    _rec.FirstName = _FirstName;
                    _rec.LastName = _LastName;
                    _rec.Email = _Email;
                    _rec.Phone = _Phone;
                    _rec.PhoneExt = _PhoneExt;
                    _rec.CompanyName = _CompanyName;
                    _rec.CompanyURL = _CompanyURL;
                    _rec.GrossAnnualRevenues = _GrossAnnualRevenues;
                    _rec.HowManyEmployees = _HowManyEmployees;
                    _rec.IsCMSForm = "";
                    _rec.Notes = _Notes;
                    _rec.RefferalCode = _RefferalCode;
                    _rec.Title = _Title;


                    #region Create New Lead Record
                    DINT_WebSite_Leads odbWebSite_Leads = new DINT_WebSite_Leads(oSystem.cnCon);
                    AriesCMSDefinition.DEF_WebSite_Leads.RecordObject rec_WebSite_Leads = new DEF_WebSite_Leads.RecordObject();
                    rec_WebSite_Leads.iParentID = 1;
                    rec_WebSite_Leads.sParentID = "Default";
                    rec_WebSite_Leads.sControl = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.dtDateCreated = DateTime.Now;
                    rec_WebSite_Leads.dtLastUpdated = DateTime.Now;
                    rec_WebSite_Leads.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sCreatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                    rec_WebSite_Leads.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sUpdatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                    rec_WebSite_Leads.sAccessKey = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.sPrefix = "";
                    rec_WebSite_Leads.sFName = _rec.FirstName;
                    rec_WebSite_Leads.sMName = "";
                    rec_WebSite_Leads.sLName = _rec.LastName;
                    rec_WebSite_Leads.bAccLocked = false;
                    rec_WebSite_Leads.iPrimaryRole = 0;
                    rec_WebSite_Leads.sPrimaryRole = "";
                    rec_WebSite_Leads.sAvitarImgURL = "";
                    rec_WebSite_Leads.bCurrentlyLoggedIn = false;
                    rec_WebSite_Leads.iReputationLevel = 0;
                    rec_WebSite_Leads.sKeyWords = "";
                    rec_WebSite_Leads.sScreenName = "";
                    rec_WebSite_Leads.sProfileDiscription = "";
                    rec_WebSite_Leads.iGenderTypeID = 0;
                    rec_WebSite_Leads.sGenderTypeID = "";
                    rec_WebSite_Leads.bPrivateProfile = false;
                    rec_WebSite_Leads.dtDateOfBirth = DateTime.Parse("01/01/1901");
                    rec_WebSite_Leads.sActivationKey = Guid.NewGuid().ToString();
                    rec_WebSite_Leads.dtLastLoggedIn = "";
                    rec_WebSite_Leads.bAccountActivated = false;

                    rec_WebSite_Leads.sAddress1 = "";
                    rec_WebSite_Leads.sAddress2 = "";
                    rec_WebSite_Leads.sAddress3 = "";
                    rec_WebSite_Leads.sCity = "";
                    rec_WebSite_Leads.iStateID = 0;
                    rec_WebSite_Leads.sStateID = "";
                    rec_WebSite_Leads.sPostalCode = "";
                    rec_WebSite_Leads.iCountryID = 0;
                    rec_WebSite_Leads.sCountryID = "";

                    rec_WebSite_Leads.sPrimaryEMail = _rec.Email;
                    rec_WebSite_Leads.sPrimaryPhone = _rec.Phone + " Ext.:" + _rec.PhoneExt;
                    rec_WebSite_Leads.bOptInMarketing = false;

                    rec_WebSite_Leads.sBillAddress1 = "";
                    rec_WebSite_Leads.sBillAddress2 = "";
                    rec_WebSite_Leads.sBillAddress3 = "";
                    rec_WebSite_Leads.sBillCity = "";
                    rec_WebSite_Leads.iBillStateID = 0;
                    rec_WebSite_Leads.sBillStateID = "";
                    rec_WebSite_Leads.sBillPostalCode = "";
                    rec_WebSite_Leads.iBillCountryID = 0;
                    rec_WebSite_Leads.sBillCountryID = "";

                    rec_WebSite_Leads.IPAddressess = oSystem.VisitorHTTPValues.VisitorIPAddress();
                    rec_WebSite_Leads.bForceLogOut = false;
                    rec_WebSite_Leads.sCurrentSession = "";

                    rec_WebSite_Leads.sCompanyName = _rec.CompanyName;
                    rec_WebSite_Leads.sCompanyURL = _rec.CompanyURL;
                    rec_WebSite_Leads.sCompanyTitle = _rec.Title;



                    try
                    {
                        rec_WebSite_Leads.sEventLog = oSystem.VisitorHTTPValues.ToString();
                    }
                    catch
                    {

                    }
                    rec_WebSite_Leads.sNotes = _rec.Notes + " | GrossAnnualRevenues: " + _rec.GrossAnnualRevenues + " | HowManyEmployees: " + _rec.HowManyEmployees;


                    rec_WebSite_Leads.sCookieID = oSystem.UserCookie.CookieID;
                    rec_WebSite_Leads.sIP = oSystem.VisitorHTTPValues.VisitorIPAddress();
                    rec_WebSite_Leads.iRefferedByID = oSystem.CurrentUser.UserView.User.ID;
                    rec_WebSite_Leads.sRefferedByID = oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName;
                    rec_WebSite_Leads.sRefferealCode1 = _rec.RefferalCode;
                    rec_WebSite_Leads.sRefferealCode2 = "";
                    rec_WebSite_Leads.sRefferealCode3 = "";
                    rec_WebSite_Leads.iUserID = 0;
                    rec_WebSite_Leads.sUserID = "";

                    odbWebSite_Leads.Insert_SQL(rec_WebSite_Leads);
                    #endregion


                    string sSubject = "";
                    string sMessage = "";

                    #region Send Internal Message
                    sSubject = "New Lead Submitted via web";
                    sMessage = "";
                    sMessage += "New Sales Lead: " + "<br/>";
                    sMessage += "Firs name: " + _FirstName + "\r\n" + "<br/>";
                    sMessage += "Last name: " + _LastName + "\r\n" + "<br/>";
                    sMessage += "Email : " + _Email + "\r\n" + "<br/>";
                    sMessage += "Company name: " + _CompanyName + "\r\n" + "<br/>";
                    sMessage += "Title : " + _Title + "\r\n" + "<br/>";
                    sMessage += "Company URL : " + _CompanyURL + "\r\n" + "<br/>";
                    sMessage += "Phone : " + _Phone + "\r\n" + "<br/>";
                    sMessage += "Phone ext. : " + _PhoneExt + "\r\n" + "<br/>";
                    sMessage += "Gross annual revenue : " + _GrossAnnualRevenues + "\r\n" + "<br/>";
                    sMessage += "Num. Employees : " + _HowManyEmployees + "\r\n" + "<br/>";
                    sMessage += "Refferal code : " + _RefferalCode + "\r\n" + "<br/>";
                    sMessage += "\r\n" + "<br/>";
                    sMessage += "Notes : " + _Notes + "\r\n" + "<br/>";

                    oSystem.SendMessage("sales@ariestco.com", "Sales Lead", "sales@ariestco.com", "Aries", sSubject, sMessage);
                    #endregion

                    #region Send Out Email To User

                    if (oSystem.recWebSite != null)
                    {
                        if(oSystem.recWebSite.ID > 0)
                        {
                            if(oSystem.recWebSite.iContactConfMessageID > 0)
                            {
                                oSystem.WebSite_Messaging_Details(oSystem.recWebSite.iContactConfMessageID, "", false, false, false);

                                if (oSystem.recWebSite_Messaging != null)
                                {
                                    if (oSystem.recWebSite_Messaging.ID > 0)
                                    {
                                        //sSubject = "Aries TCO - Your Contact Request";
                                        sSubject = oSystem.recWebSite_Messaging.sSubject;
                                        sMessage = "";
                                        sMessage = oSystem.Parse_WebSite_Messaging_Template_ContactLeadValues(oSystem.recWebSite_Messaging.sMessageBody, _rec);

                                        oSystem.SendMessage(oSystem.recWebSite_Messaging.sFromEmail, oSystem.recWebSite_Messaging.sFromName, _Email, _FirstName, sSubject, sMessage);
                                    }
                                }
                            }
                        }
                    }

                    #region Message
                    #region Message Style Sheet
                    //sMessage += "	<style type=" + "\"" + "text/css" + "\"" + ">";
                    //sMessage += "		.a_white";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white:hover";
                    //sMessage += "		{";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  color:#000 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white:focus";
                    //sMessage += "		{";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  color:#000 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_white1";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FFFFFF;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white1:hover";
                    //sMessage += "		{";
                    //sMessage += "		  color:#00BF03;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white1:focus";
                    //sMessage += "		{";
                    //sMessage += "		  color:#00BF03 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_white2";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		  margin-right: 15px !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_white2:hover";
                    //sMessage += "		{";
                    //sMessage += "		  text-decoration:underline;";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  /*color:#000 !important;*/";
                    //sMessage += "		}";
                    //sMessage += "		.a_white2:focus";
                    //sMessage += "		{";
                    //sMessage += "		  text-decoration:underline;";
                    //sMessage += "		  /*color:#FF080D !important;*/";
                    //sMessage += "		  /*color:#000 !important;*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.a_dark";
                    //sMessage += "		{";
                    //sMessage += "		  color:#391B1C !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_dark:hover";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FF080D !important;";
                    //sMessage += "		}";
                    //sMessage += "		.a_dark:focus";
                    //sMessage += "		{";
                    //sMessage += "		  color:#FF080D !important;";
                    //sMessage += "		}";
                    //sMessage += "		";
                    //sMessage += "		";
                    //sMessage += "";
                    //sMessage += "		.whitetype";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "		.blacktype";
                    //sMessage += "		{";
                    //sMessage += "		  color: rgba(0,0,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.text-bold";
                    //sMessage += "		{";
                    //sMessage += "			font-weight:bold;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.text-italics";
                    //sMessage += "		{";
                    //sMessage += "			font-style:italic;";
                    //sMessage += "		}";
                    //sMessage += "		.text-smaller_1{";
                    //sMessage += "			font-size:0.60em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-smaller_2{";
                    //sMessage += "			font-size:0.80em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_1{";
                    //sMessage += "			font-size:1.20em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_2{";
                    //sMessage += "			font-size:1.30em;";
                    //sMessage += "		}";
                    //sMessage += "		.text-larger_3{";
                    //sMessage += "			font-size:2.30em;";
                    //sMessage += "		}";
                    //sMessage += "		.fnav-next";
                    //sMessage += "		{";
                    //sMessage += "		  color:#F9F2F2 !important;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.text-red";
                    //sMessage += "		{";
                    //sMessage += "			/*color:#FF0004;*/";
                    //sMessage += "			color:#b42121;";
                    //sMessage += "		}";
                    //sMessage += "		.text-gray";
                    //sMessage += "		{";
                    //sMessage += "			color:#D5D4D4;";
                    //sMessage += "		}";
                    //sMessage += "		.text-underline";
                    //sMessage += "		{";
                    //sMessage += "			text-decoration: underline;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.sidedark_left";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.64);";
                    //sMessage += "			border-left:groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.sidedrak_right";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.64);";
                    //sMessage += "			border-right:groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.panle_rounded_border";
                    //sMessage += "		{";
                    //sMessage += "			border:solid 2px rgba(0,0,0,1.00);";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "		.panle_rounded_border1";
                    //sMessage += "		{";
                    //sMessage += "			border:solid 7px rgba(0,0,0,1.00);";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded";
                    //sMessage += "		{";
                    //sMessage += "			-moz-border-radius: 15px;";
                    //sMessage += "			border-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded2";
                    //sMessage += "		{";
                    //sMessage += "			-moz-border-radius: 20px;";
                    //sMessage += "			border-radius: 20px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded_Top";
                    //sMessage += "		{";
                    //sMessage += "			border-top-left-radius: 15px;";
                    //sMessage += "			border-top-right-radius: 15px;	";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.panle_rounded_Bottom";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom-left-radius: 15px;";
                    //sMessage += "			border-bottom-right-radius: 15px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.panel_border2";
                    //sMessage += "		{";
                    //sMessage += "			border: groove 2px rgba(9,19,77,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.base_panelHeight";
                    //sMessage += "		{";
                    //sMessage += "		  margin: 0 auto;";
                    //sMessage += "		  min-height:1000px;";
                    //sMessage += "		  height:100%;";
                    //sMessage += "		}";
                    //sMessage += "		.base_panelHeight2";
                    //sMessage += "		{";
                    //sMessage += "		  min-height:90px;";
                    //sMessage += "		}";
                    //sMessage += "		.base_panelHeight3";
                    //sMessage += "		{";
                    //sMessage += "		  min-height:200px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderbottom_orange";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom:solid 3px #EC6701;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.Largerfont";
                    //sMessage += "		{";
                    //sMessage += "			font-size:1.9em;";
                    //sMessage += "			font-weight:bold;";
                    //sMessage += "		}";
                    //sMessage += "		";
                    //sMessage += "";
                    //sMessage += "		.border_solid_1x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border: solid #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_bottom_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-bottom: solid #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_bottom_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: solid #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_bottom_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: solid #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_solid_1x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 1px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border: groove #BE2C17 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_bottom_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-bottom: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_bottom_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_bottom_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-bottom: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.border_top_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-top: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_top_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_top_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_top_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-top: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_top_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_top_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-top: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.border_left_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-left: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_left_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_left_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_left_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-left: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_left_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_left_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-left: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.border_right_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-right: solid #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_right_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: solid #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.border_right_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: solid #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.borderGroved_right_solid_1x";
                    //sMessage += "		{	 ";
                    //sMessage += "			border-right: groove #8D8D8D 1px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_right_solid_2x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: groove #8D8D8D 2px;";
                    //sMessage += "		}";
                    //sMessage += "		.borderGroved_right_solid_3x";
                    //sMessage += "		{";
                    //sMessage += "			border-right: groove #8D8D8D 3px;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.white_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(255,255,255,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.white_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,255,255,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.black_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(0,0,0,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.black_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(0,0,0,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.lightgray_background";
                    //sMessage += "		{";
                    //sMessage += "			/*background-color:rgba(38,118,170,0.80); */";
                    //sMessage += "			background-color:rgba(237,237,237,1.00); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.90); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.80); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.70); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.60); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.50); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.40); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.30); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.20); ";
                    //sMessage += "		}";
                    //sMessage += "		.lightgray_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(237,237,237,0.10); ";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.orange_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.80);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.70);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.60);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.50);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.40);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.30);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.20);";
                    //sMessage += "		}";
                    //sMessage += "		.orange_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(227,84,10,0.10);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.red_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.80);";
                    //sMessage += "			border-color:transparent !important;";
                    //sMessage += "		}";
                    //sMessage += "		.red_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(255,0,4,0.70);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.blue_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(19,28,68,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.blue_background1";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.blue_background1_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(38,118,170,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.purple_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,1.00);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.90);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.80);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.70);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.60);";
                    //sMessage += "		}";
                    //sMessage += "		.purple_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(29,16,187,0.50);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.lightblue_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.lightblue_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(125,151,231,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.green_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op60";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.60);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op50";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.50);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op40";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.40);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op30";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.30);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op20";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.20);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.green_background_op10";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(114,191,68,0.10);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.gray_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.gray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(242,242,243,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.darkgray_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,1.00);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.90);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.80);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "		.darkgray_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(188,183,183,0.70);";
                    //sMessage += "";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-red";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FF0004;";
                    //sMessage += "		  border-color: #7C0002;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:focus, .btn-red.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-red:active, .btn-red.active,";
                    //sMessage += "		.open > .btn-red.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(0, 69%, 22%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#b42121" + "\"" + ", endColorstr=" + "\"" + "#5e1111" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#b42121), to(#5e1111));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #b42121), color-stop(100%, #5e1111));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #b42121, #5e1111);";
                    //sMessage += "		  background-image: linear-gradient(#b42121, #5e1111);";
                    //sMessage += "		  border-color: #5e1111 #5e1111 hsl(0, 69%, 17%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:focus, .btn-maroon.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-maroon:active, .btn-maroon.active,";
                    //sMessage += "		.open > .btn-maroon.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: hsl(110, 56%, 16%) !important;";
                    //sMessage += "		  background-repeat: repeat-x;";
                    //sMessage += "		  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=" + "\"" + "#398f28" + "\"" + ", endColorstr=" + "\"" + "#193f11" + "\"" + ");";
                    //sMessage += "		  background-image: -khtml-gradient(linear, left top, left bottom, from(#398f28), to(#193f11));";
                    //sMessage += "		  background-image: -moz-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -ms-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #398f28), color-stop(100%, #193f11));";
                    //sMessage += "		  background-image: -webkit-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: -o-linear-gradient(top, #398f28, #193f11);";
                    //sMessage += "		  background-image: linear-gradient(#398f28, #193f11);";
                    //sMessage += "		  border-color: #193f11 #193f11 hsl(110, 56%, 11%);";
                    //sMessage += "		  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);";
                    //sMessage += "		  -webkit-font-smoothing: antialiased;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-orang";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FF5F00;";
                    //sMessage += "		  border-color: #FF5F00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:focus, .btn-orang.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-orang:active, .btn-orang.active,";
                    //sMessage += "		.open > .btn-orang.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-green";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #098000;";
                    //sMessage += "		  border-color: #416700;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:focus, .btn-green.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-green:active, .btn-green.active,";
                    //sMessage += "		.open > .btn-green.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn-blue";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: rgba(19,28,68,1.00);";
                    //sMessage += "		  border-color: rgba(19,28,63,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn-blue:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #449d44;";
                    //sMessage += "		  border-color: #419641;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: rgba(255,245,0,1.00);";
                    //sMessage += "		  border-color: rgba(255,206,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn99-yellow:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #fff;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow";
                    //sMessage += "		{";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: rgba(255,245,0,1.00);";
                    //sMessage += "		  border-color: rgba(255,206,0,1.00);";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:hover {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:focus, .btn-blue.focus {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "		.btn101-yellow:active, .btn-blue.active,";
                    //sMessage += "		.open > .btn-blue.dropdown-toggle {";
                    //sMessage += "		  font-size: 1.0em;";
                    //sMessage += "		  color: #FD0004;";
                    //sMessage += "		  background-color: #FFC600;";
                    //sMessage += "		  border-color: #FF7E00;";
                    //sMessage += "		  background-image: none;";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "		.brown_background";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,1.00);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op70";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.7);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op80";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.8);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "		.brown_background_op90";
                    //sMessage += "		{";
                    //sMessage += "			background-color:rgba(88,54,30,0.9);";
                    //sMessage += "			/*background-color:rgba(255,255,255,1.00);*/";
                    //sMessage += "		}";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "";
                    //sMessage += "	</style>";
                    #endregion
                    //sMessage += "<table width=" + "\"" + "100%" + "\"" + " border=" + "\"" + "0" + "\"" + " cellspacing=" + "\"" + "0" + "\"" + ">";
                    //sMessage += " <thead >";
                    //sMessage += "   <tr>";
                    //sMessage += "	   <th width=" + "\"" + "10%" + "\"" + ">";
                    //sMessage += "      	<img src=" + "\"" + "https://www.ariestco.com/themes/aries5/images/logos/AriesLogo_ForLightBackground_v8_135H.png" + "\"" + " width=" + "\"" + "100%" + "\"" + " alt=" + "\"" + "Aries TCO Logo" + "\"" + " />";
                    //sMessage += "       </th>";
                    //sMessage += "	   <th width=" + "\"" + "80%" + "\"" + ">&nbsp;</th>";
                    //sMessage += "	   <th width=" + "\"" + "10%" + "\"" + ">";
                    //sMessage += "		  <span style=" + "\"" + "font-weight: bold; color: rgba(204,199,199,1.00); text-align: center;" + "\"" + ">SENT ON:<br/>" + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + "</span>";
                    //sMessage += "	   </th>";
                    //sMessage += "   </tr>";
                    //sMessage += "  </thead>";
                    //sMessage += "  <tbody>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + " style=" + "\"" + "text-align: left;" + "\"" + ">";
                    //sMessage += "		  <h2> <span style=" + "\"" + "font-weight: bold;" + "\"" + ">" + _FirstName + "</span>  	</h2>";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + " style=" + "\"" + "text-align: center;" + "\"" + ">";
                    //sMessage += "      	<h2 class=" + "\"" + "border_bottom_solid_1x" + "\"" + ">Contact Request Processing</h2>  	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">";
                    //sMessage += "      	<p class=" + "\"" + "text-larger_2" + "\"" + ">";
                    //sMessage += "				We are processing your request.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				Within the next 24 hours one of our representatives will reach out to you.  So please add " + "\"" + "support@ariestco.com" + "\"" + " to your safe list to avoid it going into your " + "\"" + "junk" + "\"" + " mail.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				We look forward to helping you out in anyway we can.<br/>";
                    //sMessage += "				<br/>";
                    //sMessage += "				";
                    //sMessage += "				Aries Sales &amp; Marketing Team";
                    //sMessage += "				<a href=" + "\"" + "mailto:sales@ariestco.com" + "\"" + ">sales@ariestco.com</a>";
                    //sMessage += "			</p>    ";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "		<td width=" + "\"" + "80%" + "\"" + "><p>&nbsp;</p></td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">";
                    //sMessage += "      	<p class=" + "\"" + "text-larger_2" + "\"" + ">		";
                    //sMessage += "				If you need us for any reason don't hesitate in reaching out.  <a href=" + "\"" + "mailto:sales@ariestco.com" + "\"" + ">sales@ariestco.com</a>";
                    //sMessage += "		</p>    ";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">&nbsp;";
                    //sMessage += "      	   	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;</td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td colspan=" + "\"" + "3" + "\"" + " class=" + "\"" + "brown_background whitetype" + "\"" + ">      ";
                    //sMessage += "		<table width=" + "\"" + "100%" + "\"" + " border=" + "\"" + "0" + "\"" + " cellspacing=" + "\"" + "9" + "\"" + ">";
                    //sMessage += "		 <thead>";
                    //sMessage += "		   <tr>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariescms.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">Aries CMS</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">A unique .NET C# CMS designed for software developers to build on.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariesace.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">Aries ACE</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">ACE - Automated Coding Engine. Automate Software Programming.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.sierambas.com" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">SIERA MBAS</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">The first of its kind, complete business management. Centralize data, process  &amp; automate key processes. </p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/blog" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">OUR BLOG</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Look through a series of frequently asked questions, and our answers.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/#signup" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">DOWNLOAD</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Download Free Launch Wizard</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "			   <th>";
                    //sMessage += "			   		<a href=" + "\"" + "http://www.ariestco.com/portal" + "\"" + " target=" + "\"" + "_blank" + "\"" + " class=" + "\"" + "a_white" + "\"" + ">SIGN IN</a>";
                    //sMessage += "					<p style=" + "\"" + "font-style: italic;" + "\"" + ">Customer portal.</p>";
                    //sMessage += "			   </th>";
                    //sMessage += "		   </tr>";
                    //sMessage += "		  </thead>";
                    //sMessage += "		  <tbody>";
                    //sMessage += "			<tr>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			  <td>&nbsp;</td>";
                    //sMessage += "			</tr>";
                    //sMessage += "			<tr>";
                    //sMessage += "			  <td colspan=" + "\"" + "6" + "\"" + "><span style=" + "\"" + "font-weight:bold; font-size:0.95em;" + "\"" + " class=" + "\"" + "text-white" + "\"" + ">&copy; 2017-2018 Aries TCO, Inc.</span></td>";
                    //sMessage += "			</tr>";
                    //sMessage += "		  </tbody>";
                    //sMessage += "		</table>";
                    //sMessage += "      </td>";
                    //sMessage += "    </tr>";
                    //sMessage += "    <tr>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;";
                    //sMessage += "      	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "80%" + "\"" + ">&nbsp;";
                    //sMessage += "      	";
                    //sMessage += "      </td>";
                    //sMessage += "      <td width=" + "\"" + "10%" + "\"" + ">&nbsp;";
                    //sMessage += "		 ";
                    //sMessage += "      </td>";
                    //sMessage += "    </tr>";
                    //sMessage += "  </tbody>";
                    //sMessage += "</table>";
                    #endregion

                    //oSystem.SendMessage("sales@ariestco.com", "Aries TCO News Letter", _Email, _FirstName, sSubject, sMessage);
                    #endregion

                    sRESPONSE = "true";
                    sRESPONSEMESSAGE = "";

                    oSystem.SetValue_FormFunction("bFromMessageSent", "true");
                    oSystem.SetValue_FormFunction("bFromError", "false");
                }
            }
            else
            {
                sRESPONSEMESSAGE += " Could not send message system is currently unavailable!";
            }


            oSystem.SetValue_FormFunction("sErrorMessage", sRESPONSEMESSAGE);

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }


        [HttpPost]
        public JsonResult Sessionsss()
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sAutoLogOff = "false";
            string sRESPONSEMESSAGE = "Error";

            if (oSystem.OpenDataConnection())
            {
                #region
                if (oSystem.GetCurrentUser())
                {
                    string _AccessKey = Session["_LogInSessionID"].ToString();
                    if (oSystem.CurrentUser.UserView.User.sCurrentSession == _AccessKey)
                    {
                        sAutoLogOff = "false";
                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "Success!";
                    }
                    else
                    {
                        Session["_iUserID"] = "";
                        Session["_sUserAccessKey"] = "";
                        sAutoLogOff = "true";
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "Auto Log Off!";
                    }
                }
                else
                {
                    Session["_iUserID"] = "";
                    Session["_sUserAccessKey"] = "";
                    sAutoLogOff = "true";
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "Auto Log Off!";
                }
                #endregion
            }
            else
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = "System error occured please contact system administrator!";
            }

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, AUTOLOGOFF = sAutoLogOff, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }
        
        [HttpPost]
        public JsonResult CheckStillLoggedIn()
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sAutoLogOff = "false";
            string sRESPONSEMESSAGE = "Error";

            if (oSystem.OpenDataConnection())
            {
                #region
                if (oSystem.GetCurrentUser())
                {
                    string _AccessKey = Session["_LogInSessionID"].ToString();
                    if (oSystem.CurrentUser.UserView.User.sCurrentSession == _AccessKey)
                    {
                        sAutoLogOff = "false";
                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "Success!";
                    }
                    else
                    {
                        Session["_iUserID"] = "";
                        Session["_sUserAccessKey"] = "";
                        sAutoLogOff = "true";
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "Auto Log Off!";
                    }
                }
                else
                {
                    Session["_iUserID"] = "";
                    Session["_sUserAccessKey"] = "";
                    sAutoLogOff = "true";
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "Auto Log Off!";
                }
                #endregion
            }
            else
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = "System error occured please contact system administrator!";
            }

            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, AUTOLOGOFF = sAutoLogOff, MESSAGE = sRESPONSEMESSAGE });
            return oResponse;
        }





        [HttpPost]
        public JsonResult Get_Countries()
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            List<DEF_Countries.RecordObject> lstSearch_Results = null;
            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        #region
                        List<DataParameter> lstParameters = new List<DataParameter>();
                        DataParameter pParameter = null;

                        DINT_Countries dbCountries = new DINT_Countries(oSystem.cnCon);


                        lstSearch_Results = dbCountries.Get(lstParameters);

                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "Data Loaded!";
                        #endregion
                    }
                    else
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                }
            }
            catch (Exception s)
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = s.ToString();
            }
            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, DATA = lstSearch_Results });
            return oResponse;
        }

        [HttpPost]
        public JsonResult Get_CountryStates(string _CountryID)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            if (String.IsNullOrEmpty(_CountryID))
            {
                _CountryID = "213";//Default to US
            }

            List<DEF_States.RecordObject> lstSearch_Results = null;
            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        #region
                        List<DataParameter> lstParameters = new List<DataParameter>();
                        DataParameter pParameter = null;

                        DINT_States dbStates = new DINT_States(oSystem.cnCon);

                        pParameter = new DataParameter("iCountryID", "'" + _CountryID + "'", "int", 9, "iCountryID", " = ", "");
                        lstParameters.Add(pParameter);

                        lstSearch_Results = dbStates.Get(lstParameters);

                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "Data Loaded!";
                        #endregion
                    }
                    else
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                }
            }
            catch (Exception s)
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = s.ToString();
            }
            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, DATA = lstSearch_Results });
            return oResponse;
        }

        [HttpPost]
        public JsonResult Get_CountriesLanguages(string _CountryID)
        {
            Set_ViewBag_UserInfo_Defaults();
            string sRESPONSE = "false";
            string sRESPONSEMESSAGE = "Error";

            if (String.IsNullOrEmpty(_CountryID))
            {
                _CountryID = "213";//Default to US
            }

            List<DEF_CountryLanguages.RecordObject> lstSearch_Results = null;
            try
            {
                if (oSystem.OpenDataConnection())
                {
                    if (oSystem.GetCurrentUser())
                    {
                        #region
                        List<DataParameter> lstParameters = new List<DataParameter>();
                        DataParameter pParameter = null;

                        DINT_CountryLanguages dbCountryLanguages = new DINT_CountryLanguages(oSystem.cnCon);

                        pParameter = new DataParameter("iCountryID", "'" + _CountryID + "'", "int", 6, "iCountryID", " = ", "");
                        lstParameters.Add(pParameter);

                        lstSearch_Results = dbCountryLanguages.Get(lstParameters);

                        sRESPONSE = "true";
                        sRESPONSEMESSAGE = "Data Loaded!";
                        #endregion
                    }
                    else
                    {
                        sRESPONSE = "false";
                        sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                    }
                }
                else
                {
                    sRESPONSE = "false";
                    sRESPONSEMESSAGE = "System error occured please contact system administrator!";
                }
            }
            catch (Exception s)
            {
                sRESPONSE = "false";
                sRESPONSEMESSAGE = s.ToString();
            }
            oSystem.CloseDataConnection();
            var oResponse = Json(new { RESPONSE = sRESPONSE, MESSAGE = sRESPONSEMESSAGE, DATA = lstSearch_Results });
            return oResponse;
        }




    }

    public partial class UnsubscribeController : Controller
    {
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //Data View sent to Page for rendering
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();

        string sModuleBase = "~/";
        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };

        string _sViewToLoad = "~/Views/SharedForms/Unsubscribe.cshtml";
        public ActionResult Index(string Id)
        {
            try
            {
                if (!String.IsNullOrEmpty(Id))
                {
                    #region Send out email to admin to remove this email
                    //new Thread(() =>
                    //{
                    //    try
                    //    {
                    //        #region Send process
                    //        string sSMTPUserName = "";
                    //        string sSMTPPassword = "";
                    //        string sSMTPPort = "";
                    //        string sSMTPUseSSL = "";
                    //        string sSMTPServer = "";
                    //        string sBcc = "";
                    //        string sFromEmail = "site@ariestco.com";
                    //        string sFromName = "User Request";

                    //        #region Get Settings
                    //        try
                    //        {
                    //            if (WebConfigurationManager.AppSettings["SMTPUserName"] != null)
                    //            {
                    //                sSMTPUserName = WebConfigurationManager.AppSettings["SMTPUserName"].ToString();
                    //            }
                    //        }
                    //        catch
                    //        {
                    //        }

                    //        try
                    //        {
                    //            if (WebConfigurationManager.AppSettings["SMTPPassword"] != null)
                    //            {
                    //                sSMTPPassword = WebConfigurationManager.AppSettings["SMTPPassword"].ToString();
                    //            }
                    //        }
                    //        catch
                    //        {
                    //        }

                    //        try
                    //        {
                    //            if (WebConfigurationManager.AppSettings["SMTPPort"] != null)
                    //            {
                    //                sSMTPPort = WebConfigurationManager.AppSettings["SMTPPort"].ToString();
                    //            }
                    //        }
                    //        catch
                    //        {
                    //        }

                    //        try
                    //        {
                    //            if (WebConfigurationManager.AppSettings["SMTPUseSSL"] != null)
                    //            {
                    //                sSMTPUseSSL = WebConfigurationManager.AppSettings["SMTPUseSSL"].ToString();
                    //            }
                    //        }
                    //        catch
                    //        {
                    //        }

                    //        try
                    //        {
                    //            if (WebConfigurationManager.AppSettings["SMTPServer"] != null)
                    //            {
                    //                sSMTPServer = WebConfigurationManager.AppSettings["SMTPServer"].ToString();
                    //            }
                    //        }
                    //        catch
                    //        {
                    //        }

                    //        try
                    //        {
                    //            if (WebConfigurationManager.AppSettings["Bcc"] != null)
                    //            {
                    //                sBcc = WebConfigurationManager.AppSettings["Bcc"].ToString();
                    //            }
                    //        }
                    //        catch
                    //        {
                    //        }
                    //        #endregion
                    //        sFromEmail = "site@ariestco.com";
                    //        sFromName = "Aries User Request";

                    //        bool bIsHtml = true;
                    //        int iPort = 25;
                    //        try
                    //        {
                    //            iPort = System.Convert.ToInt32(sSMTPPort);
                    //        }
                    //        catch
                    //        {
                    //            iPort = 25;
                    //        }

                    //        bool bSSL = false;
                    //        try
                    //        {
                    //            bSSL = System.Convert.ToBoolean(sSMTPUseSSL);
                    //        }
                    //        catch
                    //        {
                    //        }
                    //        string sMessage = "";
                    //        string sSubject = "Email Subscriber requested to be removed";
                    //        string sTo = "info@ariestco.com";
                    //        sMessage += "Contact requesting to be removed from email list: " + "<br/>";
                    //        sMessage += "EMail: " + Id + "\r\n" + "<br/>";


                    //        MailMessage mail = new MailMessage();
                    //        SmtpClient SmtpMail = new SmtpClient(sSMTPServer);
                    //        SmtpMail.Credentials = new NetworkCredential(sSMTPUserName, sSMTPPassword);
                    //        SmtpMail.Port = iPort;
                    //        SmtpMail.EnableSsl = bSSL;

                    //        MailAddress MailFrom = new MailAddress(sFromEmail, sFromName);
                    //        mail.From = MailFrom;

                    //        mail.Body = sMessage;

                    //        mail.To.Add("support@ariestco.com");
                    //        mail.Subject = sSubject;
                    //        mail.IsBodyHtml = true;


                    //        SmtpMail.Send(mail);
                    //        #endregion
                    //    }
                    //    catch { }
                    //}).Start();
                    #endregion
                    return View(_sViewToLoad);
                }
                else
                {
                    oSystem.CloseDataConnection();
                    return Redirect("/ErrorPage");
                }
            }
            catch
            {
                oSystem.CloseDataConnection();
                return Redirect("/ErrorPage");
            }
        }
    }

}