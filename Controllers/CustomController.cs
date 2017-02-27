
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

        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };


        string _ViewFile_ContactUs = "~/views/localview/inc_ContactUs.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult ContactUs()
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

                    oSystem.ContactFormData = new Models.ContactUsView();

                    oSystem.ContactFormData.ErrorMessage = "";
                    oSystem.ContactFormData.ErrorPageURL = "";
                    oSystem.ContactFormData.SuccessPageURL = "";
                    oSystem.ContactFormData.SourceForm = _ViewFile_ContactUs;
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


        string _ViewFile_SignUp = "~/views/localview/inc_SignUp.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult SignUp()
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

                string sPageTitle = "Sign Up";
                string sPageName = "Sign Up";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Sign Up";
                string sKeyWords = "Sign Up Form - Sign Up For Account";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_SignUp, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.NewUserFormData = new Models.NewUserRegistration();
                    oSystem.NewUserFormData.Coupons = new List<Models.CouponsPromos>();
                    oSystem.NewUserFormData.CartItems = new List<Models.BillingItems>();
                    oSystem.NewUserFormData.Promos = new List<Models.CouponsPromos>();
                    oSystem.NewUserFormData.AddressInfo = new Models.UserAddressInfo();
                    oSystem.NewUserFormData.AddressInfo.Country = "United States";
                    oSystem.NewUserFormData.AddressInfo.CountryID = 213;
                    oSystem.NewUserFormData.BillingInfo = new Models.UserBillingInfo();
                    oSystem.NewUserFormData.Company = new Models.UserCompanyInfo();
                    oSystem.NewUserFormData.Company.AddressInfo = new Models.UserAddressInfo();
                    oSystem.NewUserFormData.Company.AddressInfo.Country = "United States";
                    oSystem.NewUserFormData.Company.AddressInfo.CountryID = 213;
                    oSystem.NewUserFormData.BillingInfo = new Models.UserBillingInfo();
                    oSystem.NewUserFormData.BillingInfo.AddressInfo = new Models.UserAddressInfo();
                    oSystem.NewUserFormData.BillingInfo.AddressInfo.Country = "United States";
                    oSystem.NewUserFormData.BillingInfo.AddressInfo.CountryID = 213;

                    //Using the Core User View's list of states and countries allows you to use them in address fields
                    oSystem.CurrentUser.UserView.Get_Countries(oSystem.cnCon);
                    //Get US States, the parameter _iCountryID set to id 213 designates US States, 
                    oSystem.CurrentUser.UserView.Get_States(oSystem.cnCon);

                    oSystem.NewUserFormData.ErrorMessage = "";
                    oSystem.NewUserFormData.ErrorPageURL = "";
                    oSystem.NewUserFormData.SuccessPageURL = "";
                    oSystem.NewUserFormData.SourceForm = _ViewFile_SignUp;
                    oSystem.NewUserFormData.IsCMSForm = "false";

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


        string _ViewFile_Lead = "~/views/localview/inc_Lead.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult Lead()
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

                string sPageTitle = "Lead Registration";
                string sPageName = "Lead Registration";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Lead Registration";
                string sKeyWords = "Lead Registration Form - Lead Registration Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_Lead, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ContactLeadFormData = new Models.ContactLeadView();

                    oSystem.ContactLeadFormData.ErrorMessage = "";
                    oSystem.ContactLeadFormData.ErrorPageURL = "";
                    oSystem.ContactLeadFormData.SuccessPageURL = "";
                    oSystem.ContactLeadFormData.SourceForm = _ViewFile_Lead;
                    oSystem.ContactLeadFormData.IsCMSForm = "false";

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


        string _ViewFile_LogIn = "~/views/localview/inc_LogIn.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult LogIn()
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

                string sPageTitle = "Log In";
                string sPageName = "Log In";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Log In";
                string sKeyWords = "Log In Form - Access your portal";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_LogIn, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    //Because this has a pre-defined authentication model, we don't use a model that exists as part of the standard data models in the local project
                    //So for this reason we need to initiallize a local page view data model that contains all the routing info that the local page actions would need
                    oSystem.UserAuthenticationFormData = new UserAuthentication();

                    oSystem.LocalPageViewFormData = new Models.LocalPageView();
                    oSystem.LocalPageViewFormData.ErrorMessage = "";
                    oSystem.LocalPageViewFormData.ErrorPageURL = "";
                    oSystem.LocalPageViewFormData.SuccessPageURL = "";
                    oSystem.LocalPageViewFormData.SourceForm = _ViewFile_LogIn;
                    oSystem.LocalPageViewFormData.IsCMSForm = "false";

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


        string _ViewFile_RecoverProfile = "~/views/localview/inc_RecoverProfile.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult RecoverProfile()
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

                string sPageTitle = "Recover User Profile";
                string sPageName = "Recover User Profile";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Recover User Profile";
                string sKeyWords = "Recover User Profile Form - Recover User Profile Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_RecoverProfile, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ProfileRecoveryFormData = new Models.ProfileRecovery();

                    oSystem.ProfileRecoveryFormData.ErrorMessage = "";
                    oSystem.ProfileRecoveryFormData.ErrorPageURL = "";
                    oSystem.ProfileRecoveryFormData.SuccessPageURL = "";
                    oSystem.ProfileRecoveryFormData.SourceForm = _ViewFile_RecoverProfile;
                    oSystem.ProfileRecoveryFormData.IsCMSForm = "false";

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


        string _ViewFile_SharePage = "~/views/localview/inc_SharePage.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult SharePage(string _sURL)
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

                string sPageTitle = "Share A Page";
                string sPageName = "Share A Page";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Share A Page";
                string sKeyWords = "Share A Page Form - Share A Page Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_SharePage, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ShareContentFormData = new Models.ShareContent();

                    //You can modify this content to create a standar message combination a user can use to share a link on your site
                    oSystem.ShareContentFormData.sSubject = "Sharing a link from this site with you!";
                    oSystem.ShareContentFormData.sMessage = "I wanted to share this link with you " + _sURL;


                    oSystem.ShareContentFormData.ErrorMessage = "";
                    oSystem.ShareContentFormData.ErrorPageURL = "";
                    oSystem.ShareContentFormData.SuccessPageURL = "";
                    oSystem.ShareContentFormData.SourceForm = _ViewFile_SharePage;
                    oSystem.ShareContentFormData.IsCMSForm = "false";

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


        string _ViewFile_NewsLetterSignUpPage = "~/views/localview/inc_NewsLetterRegistraition.cshtml";
        /// <summary>
        /// This action needs to be enabled or uncommented if you are going to use the local action controller
        /// </summary>
        /// <returns></returns>
        public ActionResult SignUpForNewsLetter()
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

                string sPageTitle = "Sign Up For Our News Letter";
                string sPageName = "Sign Up For Our News Letter";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Sign Up For Our News Letter";
                string sKeyWords = "Sign Up For Our News Letter Form - Sign Up For Our News Letter Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_NewsLetterSignUpPage, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.NewNewsLetterFormData = new Models.NewNewsLetter();

                    oSystem.NewNewsLetterFormData.ErrorMessage = "";
                    oSystem.NewNewsLetterFormData.ErrorPageURL = "";
                    oSystem.NewNewsLetterFormData.SuccessPageURL = "";
                    oSystem.NewNewsLetterFormData.SourceForm = _ViewFile_NewsLetterSignUpPage;
                    oSystem.NewNewsLetterFormData.IsCMSForm = "false";

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
        //string _sViewToLoad = "";
        ////
        //// GET: /Blogg/


        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };

        string _ViewFile_Index = "~/views/localview/inc_Blog.cshtml";
        public ActionResult Index(string _BloggName = "", int _iBlogID = 0)
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

                bool bFoundBlog = false;
                //Load Blog Data Based On Parameters -  
                if (_iBlogID > 0)
                {
                    if (oSystem.WebSiteBlog_Details(_iBlogID, "", false, false, false))
                    {
                        bFoundBlog = true;
                    }
                }
                else if (!String.IsNullOrEmpty(_BloggName))
                {
                    if (oSystem.WebSiteBlog_FindBlog_ByName(_BloggName))
                    {
                        bFoundBlog = true;
                    }
                }
                else
                {
                    if (oSystem.WebSiteBlog_List("", 1, "", 1))
                    {
                        oSystem.recWebSiteBlog = oSystem.lstWebSiteBlog[0];
                        if (oSystem.recWebSiteBlog != null)
                        {
                            bFoundBlog = true;
                        }
                    }
                }


                //If blog was found then continue to load the page or else go to error page
                if (bFoundBlog)
                {
                    oSystem.WebSiteBlogEntry_List("", oSystem.recWebSiteBlog.ID, oSystem.recWebSiteBlog.sTitle, 1);

                    //load blog comments
                    oSystem.WebSiteBlogComments_List("", oSystem.recWebSiteBlog.ID, oSystem.recWebSiteBlog.sTitle, 1);


                    AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                    string sPageTitle = oSystem.recWebSiteBlog.sTitle;
                    string sPageName = oSystem.recWebSiteBlog.sTitle;
                    string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                    string sClassification = "";
                    string sPageDescription = oSystem.recWebSiteBlog.sDescription;
                    string sKeyWords = oSystem.recWebSiteBlog.sKeyWords;



                    oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                        _igBaseTemplatePageZoneID, _ViewFile_Index, "", oResponse);

                    if (oPageBuilder.ProcessErrorResult == false)
                    {
                        //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                        if (oPage.WebSitePageTemplates != null)
                        {
                            ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                        }

                        oSystem.LocalPageViewFormData = new Models.LocalPageView();

                        oSystem.LocalPageViewFormData.ErrorMessage = "";
                        oSystem.LocalPageViewFormData.ErrorPageURL = "";
                        oSystem.LocalPageViewFormData.SuccessPageURL = "";
                        oSystem.LocalPageViewFormData.SourceForm = _ViewFile_Index;
                        oSystem.LocalPageViewFormData.IsCMSForm = "false";

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
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }

        string _ViewFile_PostDetails = "~/views/localview/inc_BlogDetails.cshtml";
        public ActionResult PostDetails(int _iPostID)
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


                bool bBlogPostFound = false;
                //Load Blog Data Based On Parameters -  
                if (_iPostID > 0)
                {
                    if (oSystem.WebSiteBlogEntry_Details(_iPostID, "", false, false, false))
                    {
                        bBlogPostFound = true;
                    }
                }


                if (bBlogPostFound)
                {
                    bool bFoundBlog = false;
                    //Load Blog Data Based On Parameters -  
                    if (oSystem.recWebSiteBlogEntry.iParentID > 0)
                    {
                        if (oSystem.WebSiteBlog_Details(oSystem.recWebSiteBlogEntry.iParentID, "", false, false, false))
                        {
                            bFoundBlog = true;
                        }
                    }


                    //If blog was found then continue to load the page or else go to error page
                    if (bFoundBlog)
                    {
                        if (oSystem.WebSiteBlogEntry_List("", oSystem.recWebSiteBlog.ID, oSystem.recWebSiteBlog.sTitle, 1))
                        {
                            //load blog comments
                            oSystem.WebSiteBlogComments_List("", oSystem.recWebSiteBlog.ID, oSystem.recWebSiteBlog.sTitle, 1);


                            AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                            string sPageTitle = oSystem.recWebSiteBlogEntry.sTitle;
                            string sPageName = oSystem.recWebSiteBlogEntry.sTitle;
                            string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                            string sClassification = "";
                            string sPageDescription = oSystem.recWebSiteBlogEntry.sSubject;
                            string sKeyWords = oSystem.recWebSiteBlogEntry.sKeyWords;



                            oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                                _igBaseTemplatePageZoneID, _ViewFile_PostDetails, "", oResponse);

                            if (oPageBuilder.ProcessErrorResult == false)
                            {
                                //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                                if (oPage.WebSitePageTemplates != null)
                                {
                                    ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                                }

                                oSystem.LocalPageViewFormData = new Models.LocalPageView();

                                oSystem.LocalPageViewFormData.ErrorMessage = "";
                                oSystem.LocalPageViewFormData.ErrorPageURL = "";
                                oSystem.LocalPageViewFormData.SuccessPageURL = "";
                                oSystem.LocalPageViewFormData.SourceForm = _ViewFile_PostDetails;
                                oSystem.LocalPageViewFormData.IsCMSForm = "false";

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
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }



    }

    public partial class CommunityController : Controller
    {

        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };

        string _ViewFile_Index = "~/views/localview/inc_Community.cshtml";
        public ActionResult Index(int Id)
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

                bool bCommunityFound = false;
                //Load Blog Data Based On Parameters -  
                if (Id > 0)
                {
                    if (oSystem.WebSiteForum_Details(Id, "", false, false, false))
                    {
                        bCommunityFound = true;
                    }
                }
                else
                {
                    if (oSystem.WebSiteForum_List("", 1, "", 1))
                    {
                        oSystem.recWebSiteForum = oSystem.lstWebSiteForum[0];
                        if (oSystem.recWebSiteForum != null)
                        {
                            bCommunityFound = true;
                        }
                    }
                }


                //If blog was found then continue to load the page or else go to error page
                if (bCommunityFound)
                {
                    oSystem.WebSiteForumTopics_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);
                    //load Community Announcements
                    oSystem.WebSiteForumiAnnouncements_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);

                    oSystem.lstWebSiteForumTopiAnnouncements = new List<DEF_WebSiteForumTopiAnnouncements.RecordObject>();
                    oSystem.lstWebSiteForumTopics = new List<DEF_WebSiteForumTopics.RecordObject>();


                    //load Community Topics
                    oSystem.WebSiteForumTopics_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);

                    oSystem.lstWebSiteForumTopicPosts = new List<DEF_WebSiteForumTopicPosts.RecordObject>();
                    if (oSystem.lstWebSiteForumTopics != null)
                    {
                        if (oSystem.lstWebSiteForumTopics.Count > 0)
                        {
                            //load Community Topic Posts
                            oSystem.WebSiteForumTopicPosts_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);
                        }
                    }

                    AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                    string sPageTitle = oSystem.recWebSiteForum.sName;
                    string sPageName = oSystem.recWebSiteForum.sName;
                    string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                    string sClassification = "";
                    string sPageDescription = oSystem.recWebSiteForum.sDescription;
                    string sKeyWords = oSystem.recWebSiteForum.sKeyWords;



                    oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                        _igBaseTemplatePageZoneID, _ViewFile_Index, "", oResponse);

                    if (oPageBuilder.ProcessErrorResult == false)
                    {
                        //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                        if (oPage.WebSitePageTemplates != null)
                        {
                            ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                        }

                        oSystem.LocalPageViewFormData = new Models.LocalPageView();

                        oSystem.LocalPageViewFormData.ErrorMessage = "";
                        oSystem.LocalPageViewFormData.ErrorPageURL = "";
                        oSystem.LocalPageViewFormData.SuccessPageURL = "";
                        oSystem.LocalPageViewFormData.SourceForm = _ViewFile_Index;
                        oSystem.LocalPageViewFormData.IsCMSForm = "false";

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
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }

        string _ViewFile_TopicPosts = "~/views/localview/inc_TopicPosts.cshtml";
        public ActionResult TopicPosts(int Id)
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


                bool bTopicFound = false;
                //Load Blog Data Based On Parameters -  
                if (Id > 0)
                {
                    if (oSystem.WebSiteForumTopics_Details(Id, "", false, false, false))
                    {
                        bTopicFound = true;
                    }
                }

                if (bTopicFound)
                {
                    bool bCommunityFound = false;
                    //Load Blog Data Based On Parameters -  
                    if (Id > 0)
                    {
                        if (oSystem.WebSiteForum_Details(oSystem.recWebSiteForumTopics.iParentID, "", false, false, false))
                        {
                            bCommunityFound = true;
                        }
                    }

                    //If blog was found then continue to load the page or else go to error page
                    if (bCommunityFound)
                    {
                        //load Community Announcements
                        oSystem.lstWebSiteForumTopiAnnouncements = new List<DEF_WebSiteForumTopiAnnouncements.RecordObject>();
                        oSystem.WebSiteForumiAnnouncements_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);

                        //load Community Topics
                        oSystem.WebSiteForumTopics_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);

                        //load Topic Posts
                        oSystem.lstWebSiteForumTopicPosts = new List<DEF_WebSiteForumTopicPosts.RecordObject>();
                        oSystem.WebSiteForumTopicPosts_List("", oSystem.recWebSiteForumTopics.ID, oSystem.recWebSiteForumTopics.sName, 1);

                        //load Topic Announcements
                        oSystem.lstWebSiteForumTopiAnnouncements = new List<DEF_WebSiteForumTopiAnnouncements.RecordObject>();
                        oSystem.WebSiteForumTopiAnnouncements_List("", oSystem.recWebSiteForumTopics.ID, oSystem.recWebSiteForumTopics.sName, 1);




                        AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                        string sPageTitle = oSystem.recWebSiteForumTopics.sName;
                        string sPageName = oSystem.recWebSiteForumTopics.sName;
                        string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                        string sClassification = "";
                        string sPageDescription = oSystem.recWebSiteForumTopics.sDescription;
                        string sKeyWords = oSystem.recWebSiteForumTopics.sKeyWords;



                        oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                            _igBaseTemplatePageZoneID, _ViewFile_TopicPosts, "", oResponse);

                        if (oPageBuilder.ProcessErrorResult == false)
                        {
                            //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                            if (oPage.WebSitePageTemplates != null)
                            {
                                ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                            }

                            oSystem.LocalPageViewFormData = new Models.LocalPageView();

                            oSystem.LocalPageViewFormData.ErrorMessage = "";
                            oSystem.LocalPageViewFormData.ErrorPageURL = "";
                            oSystem.LocalPageViewFormData.SuccessPageURL = "";
                            oSystem.LocalPageViewFormData.SourceForm = _ViewFile_TopicPosts;
                            oSystem.LocalPageViewFormData.IsCMSForm = "false";

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

        string _ViewFile_TopicPostsDetails = "~/views/localview/inc_TopicPostsDetails.cshtml";
        public ActionResult TopicPostsDetails(int Id)
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

                bool bTopicPostFound = false;
                //Load Blog Data Based On Parameters -  
                if (Id > 0)
                {
                    if (oSystem.WebSiteForumTopicPosts_Details(Id, "", false, false, false))
                    {
                        bTopicPostFound = true;
                    }
                }

                if (bTopicPostFound)
                {
                    bool bTopicFound = false;
                    //Load Blog Data Based On Parameters -  
                    if (oSystem.recWebSiteForumTopicPosts.iParentID > 0)
                    {
                        if (oSystem.WebSiteForumTopics_Details(oSystem.recWebSiteForumTopicPosts.iParentID, "", false, false, false))
                        {
                            bTopicFound = true;
                        }
                    }

                    if (bTopicFound)
                    {
                        bool bCommunityFound = false;
                        //Load Blog Data Based On Parameters -  
                        if (Id > 0)
                        {
                            if (oSystem.WebSiteForum_Details(oSystem.recWebSiteForumTopics.iParentID, "", false, false, false))
                            {
                                bCommunityFound = true;
                            }
                        }

                        //If blog was found then continue to load the page or else go to error page
                        if (bCommunityFound)
                        {
                            //load Community Announcements
                            oSystem.lstWebSiteForumTopiAnnouncements = new List<DEF_WebSiteForumTopiAnnouncements.RecordObject>();
                            oSystem.WebSiteForumiAnnouncements_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);

                            //load Community Topics
                            oSystem.WebSiteForumTopics_List("", oSystem.recWebSiteForum.ID, oSystem.recWebSiteForum.sName, 1);

                            //load Topic Posts
                            oSystem.lstWebSiteForumTopicPosts = new List<DEF_WebSiteForumTopicPosts.RecordObject>();
                            oSystem.WebSiteForumTopicPosts_List("", oSystem.recWebSiteForumTopics.ID, oSystem.recWebSiteForumTopics.sName, 1);

                            //load Topic Announcements
                            oSystem.lstWebSiteForumTopiAnnouncements = new List<DEF_WebSiteForumTopiAnnouncements.RecordObject>();
                            oSystem.WebSiteForumTopiAnnouncements_List("", oSystem.recWebSiteForumTopics.ID, oSystem.recWebSiteForumTopics.sName, 1);



                            //load Topic Responses
                            oSystem.lstWebSiteForumTopicPostsResponses = new List<DEF_WebSiteForumTopicPostsResponses.RecordObject>();
                            oSystem.WebSiteForumTopicPostsResponses_List("", oSystem.recWebSiteForumTopicPosts.ID, oSystem.recWebSiteForumTopicPosts.sName, 1);


                            AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                            string sPageTitle = oSystem.recWebSiteForumTopicPosts.sName;
                            string sPageName = oSystem.recWebSiteForumTopicPosts.sName;
                            string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                            string sClassification = "";
                            string sPageDescription = oSystem.recWebSiteForumTopicPosts.sDescription;
                            string sKeyWords = oSystem.recWebSiteForumTopicPosts.sKeyWords;



                            oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                                _igBaseTemplatePageZoneID, _ViewFile_TopicPostsDetails, "", oResponse);

                            if (oPageBuilder.ProcessErrorResult == false)
                            {
                                //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                                if (oPage.WebSitePageTemplates != null)
                                {
                                    ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                                }

                                oSystem.LocalPageViewFormData = new Models.LocalPageView();

                                oSystem.LocalPageViewFormData.ErrorMessage = "";
                                oSystem.LocalPageViewFormData.ErrorPageURL = "";
                                oSystem.LocalPageViewFormData.SuccessPageURL = "";
                                oSystem.LocalPageViewFormData.SourceForm = _ViewFile_TopicPostsDetails;
                                oSystem.LocalPageViewFormData.IsCMSForm = "false";

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
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }
    }


    public partial class JobsController : Controller
    {
        
        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };

        string _ViewFile_Index = "~/views/localview/inc_Jobs.cshtml";
        public ActionResult Index()
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



                //load Jobs
                oSystem.lstWebSiteJobs = new List<DEF_WebSiteJobs.RecordObject>();
                oSystem.WebSiteJobs_List("", 0, "", 1);


                AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                string sPageTitle = "Site Jobs";
                string sPageName = oSystem.recWebSiteBlog.sTitle;
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Site Jobs";
                string sKeyWords = "open positions";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_Index, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.LocalPageViewFormData = new Models.LocalPageView();

                    oSystem.LocalPageViewFormData.ErrorMessage = "";
                    oSystem.LocalPageViewFormData.ErrorPageURL = "";
                    oSystem.LocalPageViewFormData.SuccessPageURL = "";
                    oSystem.LocalPageViewFormData.SourceForm = _ViewFile_Index;
                    oSystem.LocalPageViewFormData.IsCMSForm = "false";

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

        string _ViewFile_JobDetails = "~/views/localview/inc_JobDetails.cshtml";
        public ActionResult JobDetails(int Id)
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


                bool bJobFound = false;
                //Load Blog Data Based On Parameters -  
                if (Id > 0)
                {
                    if (oSystem.WebSiteJobs_Details(Id, "", false, false, false))
                    {
                        bJobFound = true;
                    }
                }


                if (bJobFound)
                {

                    AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                    string sPageTitle = oSystem.recWebSiteJobs.sTitle;
                    string sPageName = oSystem.recWebSiteJobs.sTitle;
                    string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                    string sClassification = "";
                    string sPageDescription = oSystem.recWebSiteJobs.sJobDescription;
                    string sKeyWords = oSystem.recWebSiteJobs.sSkillRequirements;



                    oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                        _igBaseTemplatePageZoneID, _ViewFile_JobDetails, "", oResponse);

                    if (oPageBuilder.ProcessErrorResult == false)
                    {
                        //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                        if (oPage.WebSitePageTemplates != null)
                        {
                            ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                        }

                        oSystem.LocalPageViewFormData = new Models.LocalPageView();

                        oSystem.LocalPageViewFormData.ErrorMessage = "";
                        oSystem.LocalPageViewFormData.ErrorPageURL = "";
                        oSystem.LocalPageViewFormData.SuccessPageURL = "";
                        oSystem.LocalPageViewFormData.SourceForm = _ViewFile_JobDetails;
                        oSystem.LocalPageViewFormData.IsCMSForm = "false";

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
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }


        string _ViewFile_JobApplyFor = "~/views/localview/inc_JobApplyFor.cshtml";
        public ActionResult JobApplyFor(int Id)
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


                bool bJobFound = false;
                //Load Blog Data Based On Parameters -  
                if (Id > 0)
                {
                    if (oSystem.WebSiteJobs_Details(Id, "", false, false, false))
                    {
                        bJobFound = true;
                    }
                }


                if (bJobFound)
                {

                    AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                    string sPageTitle = oSystem.recWebSiteJobs.sTitle;
                    string sPageName = oSystem.recWebSiteJobs.sTitle;
                    string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                    string sClassification = "";
                    string sPageDescription = oSystem.recWebSiteJobs.sJobDescription;
                    string sKeyWords = oSystem.recWebSiteJobs.sSkillRequirements;



                    oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                        _igBaseTemplatePageZoneID, _ViewFile_JobApplyFor, "", oResponse);

                    if (oPageBuilder.ProcessErrorResult == false)
                    {
                        //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                        if (oPage.WebSitePageTemplates != null)
                        {
                            ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                        }

                        oSystem.LocalPageViewFormData = new Models.LocalPageView();

                        oSystem.LocalPageViewFormData.ErrorMessage = "";
                        oSystem.LocalPageViewFormData.ErrorPageURL = "";
                        oSystem.LocalPageViewFormData.SuccessPageURL = "";
                        oSystem.LocalPageViewFormData.SourceForm = _ViewFile_JobApplyFor;
                        oSystem.LocalPageViewFormData.IsCMSForm = "false";

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
            else
            {
                oSystem.CloseDataConnection();
                return Redirect("~/error");
            }
        }
    }

    public partial class ConfirmController : Controller
    {
        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };

        string _ViewFile_Index = "~/Views/SharedForms/UserConfirmation.cshtml";
        public ActionResult Index(string code)
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

                if (!String.IsNullOrEmpty(code))
                {
                    DINT_Users dbUsers = new DINT_Users(oSystem.cnCon);

                    List<DataParameter> lstParameters = new List<DataParameter>();

                    DataParameter pParameter = new DataParameter("sActivationKey", "'" + code + "'", "string", 30, "sActivationKey", " = ", "");
                    lstParameters.Add(pParameter);

                    List<DEF_Users.RecordObject> dbSearch = dbUsers.Get(lstParameters);
                    if (dbSearch != null)
                    {
                        if (dbSearch.Count > 0)
                        {
                            foreach (DEF_Users.RecordObject oUser in dbSearch)
                            {
                                if (oUser.sActivationKey == code)
                                {

                                    oUser.dtLastUpdated = DateTime.Now;
                                    oUser.bAccountActivated = true;

                                    dbUsers.Update_SQL(oUser);
                                    oSystem.CloseDataConnection();
                                    SendUserWelecomeMessage(oUser.sFName + " " + oUser.sLName, oUser.sUserName);
                                }
                            }
                        }
                        else
                        {
                            oSystem.CloseDataConnection();
                            return Redirect("/ErrorPage");
                        }
                    }
                    else
                    {
                        oSystem.CloseDataConnection();
                        return Redirect("/ErrorPage");
                    }
                }



                AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                string sPageTitle = "Confirm Your Identity";
                string sPageName = "Confirm Your Identity";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Confirm Your Identity";
                string sKeyWords = "Confirm Your Identity - Confirm Your Identity";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_Index, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.LocalPageViewFormData = new Models.LocalPageView();

                    oSystem.LocalPageViewFormData.ErrorMessage = "";
                    oSystem.LocalPageViewFormData.ErrorPageURL = "";
                    oSystem.LocalPageViewFormData.SuccessPageURL = "";
                    oSystem.LocalPageViewFormData.SourceForm = _ViewFile_Index;
                    oSystem.LocalPageViewFormData.IsCMSForm = "false";

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


        //string _sViewToLoad = "";
        //AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();


        public bool SendUserWelecomeMessage(string _sName, string _sEmail)
        {
            string _sErrorMessage = "";
            try
            {
                if (_sEmail != "")
                {
                    //WebConfigurationManager.AppSettings["PFUserName"].ToString()                
                    //<add key="SMTPUserName" value=""/>
                    //<add key="SMTPPassword" value=""/>
                    //<add key="SMTPPort" value="25"/>
                    //<add key="SMTPUseSSL" value="false"/>
                    //<add key="SMTPServer" value="localhost"/>
                    //<add key="Bcc" value="paiman.allage@ariestco.com"/>

                    string sSMTPUserName = "";
                    string sSMTPPassword = "";
                    string sSMTPPort = "";
                    string sSMTPUseSSL = "";
                    string sSMTPServer = "";
                    string sBcc = "";
                    string sFromEmail = "site@ariestco.com";
                    string sFromName = "Sales New Lead";

                    #region Get Settings
                    try
                    {
                        if (WebConfigurationManager.AppSettings["SMTPUserName"] != null)
                        {
                            sSMTPUserName = WebConfigurationManager.AppSettings["SMTPUserName"].ToString();
                        }
                    }
                    catch
                    {
                    }

                    try
                    {
                        if (WebConfigurationManager.AppSettings["SMTPPassword"] != null)
                        {
                            sSMTPPassword = WebConfigurationManager.AppSettings["SMTPPassword"].ToString();
                        }
                    }
                    catch
                    {
                    }

                    try
                    {
                        if (WebConfigurationManager.AppSettings["SMTPPort"] != null)
                        {
                            sSMTPPort = WebConfigurationManager.AppSettings["SMTPPort"].ToString();
                        }
                    }
                    catch
                    {
                    }

                    try
                    {
                        if (WebConfigurationManager.AppSettings["SMTPUseSSL"] != null)
                        {
                            sSMTPUseSSL = WebConfigurationManager.AppSettings["SMTPUseSSL"].ToString();
                        }
                    }
                    catch
                    {
                    }

                    try
                    {
                        if (WebConfigurationManager.AppSettings["SMTPServer"] != null)
                        {
                            sSMTPServer = WebConfigurationManager.AppSettings["SMTPServer"].ToString();
                        }
                    }
                    catch
                    {
                    }

                    try
                    {
                        if (WebConfigurationManager.AppSettings["Bcc"] != null)
                        {
                            sBcc = WebConfigurationManager.AppSettings["Bcc"].ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                    sFromEmail = "site@ariestco.com";
                    sFromName = "Aries Web Site";

                    bool bIsHtml = true;
                    int iPort = 25;
                    try
                    {
                        iPort = System.Convert.ToInt32(sSMTPPort);
                    }
                    catch
                    {
                        iPort = 25;
                    }

                    bool bSSL = false;
                    try
                    {
                        bSSL = System.Convert.ToBoolean(sSMTPUseSSL);
                    }
                    catch
                    {
                    }
                    string sMessage = "";
                    string sSubject = "Aries Web Site Contact Request";
                    string sTo = "info@ariestco.com";
                    sMessage += "Contact requesting from Aries Web Site: " + "<br/>";
                    sMessage += "Name: " + _sName + "\r\n" + "<br/>";
                    sMessage += "EMail: " + _sEmail + "\r\n" + "<br/>";
                    sMessage += "Thank you for joining!" + "\r\n" + "<br/>";


                    MailMessage mail = new MailMessage();
                    SmtpClient SmtpMail = new SmtpClient(sSMTPServer);
                    SmtpMail.Credentials = new NetworkCredential(sSMTPUserName, sSMTPPassword);
                    SmtpMail.Port = iPort;
                    SmtpMail.EnableSsl = bSSL;

                    MailAddress MailFrom = new MailAddress(sFromEmail, sFromName);
                    mail.From = MailFrom;

                    mail.Body = sMessage;

                    mail.To.Add(sTo);
                    mail.Subject = sSubject;
                    mail.IsBodyHtml = bIsHtml;

                    #region Add Bcc entries if applicable
                    try
                    {
                        if (sBcc != "")
                        {
                            string[] sBccs = sBcc.Split(',');
                            if (sBcc.Length > 0)
                            {
                                foreach (string bcc in sBccs)
                                {
                                    if (bcc != null)
                                    {
                                        mail.Bcc.Add(bcc);
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    SmtpMail.Send(mail);
                    //sReturnMessage = "Message succesfully sent on: " + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
                    return true;
                }
                else
                {
                    _sErrorMessage = "Email can not be blank!";
                    return false;
                }
            }
            catch (Exception s)
            {
                _sErrorMessage += s.ToString();
                return false;
            }
            return false;
        }
    }
    

    public partial class ErrorPageController : Controller
    {
        //
        // GET: /ErrorPage/


    }

    public partial class FRController : Controller
    {
        //string _sViewToLoad = "";
        //AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();


        int _igBaseTemplateID = 1;
        int _igBaseTemplatePageID = 1;
        int _igBaseTemplatePageZoneID = 2;
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };



        string _ViewFile_ContactUs = "~/views/localview/inc_ContactUs.cshtml";
        [HttpPost]
        public ActionResult SubmitContactUs(FormCollection fc, AriesCMS.Models.ContactUsView _rec)
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
                                if (Request.Form["ContactFormData_Name"] != null)
                                {
                                    _rec.Name = Request.Form["ContactFormData_Name"].ToString();
                                }
                                else if (Request.Form["ContactFormData.Name"] != null)
                                {
                                    _rec.Name = Request.Form["ContactFormData.Name"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_Subject"] != null)
                                {
                                    _rec.Subject = Request.Form["ContactFormData_Subject"].ToString();
                                }
                                else if (Request.Form["ContactFormData.Subject"] != null)
                                {
                                    _rec.Subject = Request.Form["ContactFormData.Subject"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_Message"] != null)
                                {
                                    _rec.Message = Request.Form["ContactFormData_Message"].ToString();
                                }
                                else if (Request.Form["ContactFormData.Message"] != null)
                                {
                                    _rec.Message = Request.Form["ContactFormData.Message"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_Email"] != null)
                                {
                                    _rec.Email = Request.Form["ContactFormData_Email"].ToString();
                                }
                                else if (Request.Form["ContactFormData.Email"] != null)
                                {
                                    _rec.Email = Request.Form["ContactFormData.Email"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_Phone"] != null)
                                {
                                    _rec.Phone = Request.Form["ContactFormData_Phone"].ToString();
                                }
                                else if (Request.Form["ContactFormData.Phone"] != null)
                                {
                                    _rec.Phone = Request.Form["ContactFormData.Phone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ContactFormData_ErrorMessage"].ToString();
                                }
                                else if (Request.Form["ContactFormData.ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ContactFormData.ErrorMessage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ContactFormData_ErrorPageURL"].ToString();
                                }
                                else if (Request.Form["ContactFormData.ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ContactFormData.ErrorPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ContactFormData_SuccessPageURL"].ToString();
                                }
                                else if (Request.Form["ContactFormData.SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ContactFormData.SuccessPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ContactFormData_SourceForm"].ToString();
                                }
                                else if (Request.Form["ContactFormData.SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ContactFormData.SourceForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactFormData_IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ContactFormData_IsCMSForm"].ToString();
                                }
                                else if (Request.Form["ContactFormData.IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ContactFormData.IsCMSForm"].ToString();
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
                    oSystem.SetValue_FormFunction("ContactFormData_Name", _rec.Name);
                    oSystem.SetValue_FormFunction("ContactFormData_Subject", _rec.Subject);
                    oSystem.SetValue_FormFunction("ContactFormData_Message", _rec.Message);
                    oSystem.SetValue_FormFunction("ContactFormData_Email", _rec.Email);
                    oSystem.SetValue_FormFunction("ContactFormData_Phone", _rec.Phone);

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
                        string sSubject = "Web Site Contact Request";
                        string sMessage = "";
                        sMessage += "Contact requesting from Web Site: " + "<br/>";
                        sMessage += "Name: " + _rec.Name + "\r\n" + "<br/>";
                        sMessage += "EMail: " + _rec.Email + "\r\n" + "<br/>";
                        sMessage += "Phone: " + _rec.Phone + "\r\n" + "<br/>";
                        sMessage += "Subject: " + _rec.Subject + "\r\n" + "<br/>";
                        sMessage += "Message: " + _rec.Message + "\r\n" + "<br/>";

                        oSystem.SendMessage("info@yourdomain.com", "Web Site", "info@yourdomain.com", "Web Site", sSubject, sMessage);
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


        string _ViewFile_SignUp = "~/views/localview/inc_SignUp.cshtml";
        [HttpPost]
        public ActionResult SubmitRegisterNewUser(FormCollection fc, AriesCMS.Models.NewUserRegistration _oNewUser)
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
                if (_oNewUser == null)
                {
                    bBuildModelViaFormObjects = true;
                }
                else if ((String.IsNullOrEmpty(_oNewUser.UserName)) && (String.IsNullOrEmpty(_oNewUser.EMail)))
                {
                    bBuildModelViaFormObjects = true;
                }

                if (bBuildModelViaFormObjects == true)
                {
                    if (fc != null)
                    {
                        _oNewUser = new Models.NewUserRegistration();
                        _oNewUser.Coupons = new List<Models.CouponsPromos>();
                        _oNewUser.CartItems = new List<Models.BillingItems>();
                        _oNewUser.Promos = new List<Models.CouponsPromos>();
                        _oNewUser.AddressInfo = new Models.UserAddressInfo();
                        _oNewUser.AddressInfo.Country = "United States";
                        _oNewUser.AddressInfo.CountryID = 213;
                        _oNewUser.BillingInfo = new Models.UserBillingInfo();
                        _oNewUser.Company = new Models.UserCompanyInfo();
                        _oNewUser.Company.AddressInfo = new Models.UserAddressInfo();
                        _oNewUser.Company.AddressInfo.Country = "United States";
                        _oNewUser.Company.AddressInfo.CountryID = 213;
                        _oNewUser.BillingInfo = new Models.UserBillingInfo();
                        _oNewUser.BillingInfo.AddressInfo = new Models.UserAddressInfo();
                        _oNewUser.BillingInfo.AddressInfo.Country = "United States";
                        _oNewUser.BillingInfo.AddressInfo.CountryID = 213;


                        if (fc.Count > 0)
                        {
                            #region Translate Form Objects To Data Model Objects
                            try
                            {
                                if (Request.Form["NewUserFormData_UserName"] != null)
                                {
                                    _oNewUser.UserName = Request.Form["NewUserFormData_UserName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.UserName"] != null)
                                {
                                    _oNewUser.UserName = Request.Form["NewUserFormData.UserName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Password"] != null)
                                {
                                    _oNewUser.Password = Request.Form["NewUserFormData_Password"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Password"] != null)
                                {
                                    _oNewUser.Password = Request.Form["NewUserFormData.Password"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_PasswordConfirm"] != null)
                                {
                                    _oNewUser.PasswordConfirm = Request.Form["NewUserFormData_PasswordConfirm"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.PasswordConfirm"] != null)
                                {
                                    _oNewUser.PasswordConfirm = Request.Form["NewUserFormData.PasswordConfirm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_FirstName"] != null)
                                {
                                    _oNewUser.FirstName = Request.Form["NewUserFormData_FirstName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.FirstName"] != null)
                                {
                                    _oNewUser.FirstName = Request.Form["NewUserFormData.FirstName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_LastName"] != null)
                                {
                                    _oNewUser.LastName = Request.Form["NewUserFormData_LastName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.LastName"] != null)
                                {
                                    _oNewUser.LastName = Request.Form["NewUserFormData.LastName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_MiddleName"] != null)
                                {
                                    _oNewUser.MiddleName = Request.Form["NewUserFormData_MiddleName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.MiddleName"] != null)
                                {
                                    _oNewUser.MiddleName = Request.Form["NewUserFormData.MiddleName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_EMail"] != null)
                                {
                                    _oNewUser.EMail = Request.Form["NewUserFormData_EMail"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.EMail"] != null)
                                {
                                    _oNewUser.EMail = Request.Form["NewUserFormData.EMail"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_OptingInMail"] != null)
                                {
                                    _oNewUser.OptingInMail = System.Convert.ToBoolean(Request.Form["NewUserFormData_OptingInMail"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.OptingInMail"] != null)
                                {
                                    _oNewUser.OptingInMail = System.Convert.ToBoolean(Request.Form["NewUserFormData.OptingInMail"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Phone"] != null)
                                {
                                    _oNewUser.Phone = Request.Form["NewUserFormData_Phone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Phone"] != null)
                                {
                                    _oNewUser.Phone = Request.Form["NewUserFormData.Phone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Fax"] != null)
                                {
                                    _oNewUser.Fax = Request.Form["NewUserFormData_Fax"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Fax"] != null)
                                {
                                    _oNewUser.Fax = Request.Form["NewUserFormData.Fax"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_CellPhone"] != null)
                                {
                                    _oNewUser.CellPhone = Request.Form["NewUserFormData_CellPhone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.CellPhone"] != null)
                                {
                                    _oNewUser.CellPhone = Request.Form["NewUserFormData.CellPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_DateOfBirth"] != null)
                                {
                                    _oNewUser.DateOfBirth = Request.Form["NewUserFormData_DateOfBirth"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.DateOfBirth"] != null)
                                {
                                    _oNewUser.DateOfBirth = Request.Form["NewUserFormData.DateOfBirth"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_DOBMonth"] != null)
                                {
                                    _oNewUser.DOBMonth = Request.Form["NewUserFormData_DOBMonth"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.DOBMonth"] != null)
                                {
                                    _oNewUser.DOBMonth = Request.Form["NewUserFormData.DOBMonth"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_DOBDay"] != null)
                                {
                                    _oNewUser.DOBDay = Request.Form["NewUserFormData_DOBDay"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.DOBDay"] != null)
                                {
                                    _oNewUser.DOBDay = Request.Form["NewUserFormData.DOBDay"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_DOBYear"] != null)
                                {
                                    _oNewUser.DOBYear = Request.Form["NewUserFormData_DOBYear"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.DOBYear"] != null)
                                {
                                    _oNewUser.DOBYear = Request.Form["NewUserFormData.DOBYear"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Sex"] != null)
                                {
                                    _oNewUser.Sex = Request.Form["NewUserFormData_Sex"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Sex"] != null)
                                {
                                    _oNewUser.Sex = Request.Form["NewUserFormData.Sex"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_ItemIDs"] != null)
                                {
                                    _oNewUser.ItemIDs = Request.Form["NewUserFormData_ItemIDs"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.ItemIDs"] != null)
                                {
                                    _oNewUser.ItemIDs = Request.Form["NewUserFormData.ItemIDs"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_CuponCodes"] != null)
                                {
                                    _oNewUser.CuponCodes = Request.Form["NewUserFormData_CuponCodes"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.CuponCodes"] != null)
                                {
                                    _oNewUser.CuponCodes = Request.Form["NewUserFormData.CuponCodes"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_PromoCodes"] != null)
                                {
                                    _oNewUser.PromoCodes = Request.Form["NewUserFormData_PromoCodes"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.PromoCodes"] != null)
                                {
                                    _oNewUser.PromoCodes = Request.Form["NewUserFormData.PromoCodes"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_CompanyName"] != null)
                                {
                                    _oNewUser.CompanyName = Request.Form["NewUserFormData_CompanyName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.CompanyName"] != null)
                                {
                                    _oNewUser.CompanyName = Request.Form["NewUserFormData.CompanyName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_TrackingCode"] != null)
                                {
                                    _oNewUser.TrackingCode = Request.Form["NewUserFormData_TrackingCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.TrackingCode"] != null)
                                {
                                    _oNewUser.TrackingCode = Request.Form["NewUserFormData.TrackingCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyName"] != null)
                                {
                                    _oNewUser.Company.CompanyName = Request.Form["NewUserFormData_Company_CompanyName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyName"] != null)
                                {
                                    _oNewUser.Company.CompanyName = Request.Form["NewUserFormData.Company.CompanyName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyPhone"] != null)
                                {
                                    _oNewUser.Company.CompanyPhone = Request.Form["NewUserFormData_Company_CompanyPhone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyPhone"] != null)
                                {
                                    _oNewUser.Company.CompanyPhone = Request.Form["NewUserFormData.Company.CompanyPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyPhoneExt"] != null)
                                {
                                    _oNewUser.Company.CompanyPhoneExt = Request.Form["NewUserFormData_Company_CompanyPhoneExt"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyPhoneExt"] != null)
                                {
                                    _oNewUser.Company.CompanyPhoneExt = Request.Form["NewUserFormData.Company.CompanyPhoneExt"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyFax"] != null)
                                {
                                    _oNewUser.Company.CompanyFax = Request.Form["NewUserFormData_Company_CompanyFax"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyFax"] != null)
                                {
                                    _oNewUser.Company.CompanyFax = Request.Form["NewUserFormData.Company.CompanyFax"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyCellPhone"] != null)
                                {
                                    _oNewUser.Company.CompanyCellPhone = Request.Form["NewUserFormData_Company_CompanyCellPhone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyCellPhone"] != null)
                                {
                                    _oNewUser.Company.CompanyCellPhone = Request.Form["NewUserFormData.Company.CompanyCellPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyAddressLine1"] != null)
                                {
                                    _oNewUser.Company.CompanyAddressLine1 = Request.Form["NewUserFormData_Company_CompanyAddressLine1"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyAddressLine1"] != null)
                                {
                                    _oNewUser.Company.CompanyAddressLine1 = Request.Form["NewUserFormData.Company.CompanyAddressLine1"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyAddressLine2"] != null)
                                {
                                    _oNewUser.Company.CompanyAddressLine2 = Request.Form["NewUserFormData_Company_CompanyAddressLine2"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyAddressLine2"] != null)
                                {
                                    _oNewUser.Company.CompanyAddressLine2 = Request.Form["NewUserFormData.Company.CompanyAddressLine2"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyAddressLine3"] != null)
                                {
                                    _oNewUser.Company.CompanyAddressLine3 = Request.Form["NewUserFormData_Company_CompanyAddressLine3"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyAddressLine3"] != null)
                                {
                                    _oNewUser.Company.CompanyAddressLine3 = Request.Form["NewUserFormData.Company.CompanyAddressLine3"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyCity"] != null)
                                {
                                    _oNewUser.Company.CompanyCity = Request.Form["NewUserFormData_Company_CompanyCity"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyCity"] != null)
                                {
                                    _oNewUser.Company.CompanyCity = Request.Form["NewUserFormData.Company.CompanyCity"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyState"] != null)
                                {
                                    _oNewUser.Company.CompanyState = Request.Form["NewUserFormData_Company_CompanyState"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyState"] != null)
                                {
                                    _oNewUser.Company.CompanyState = Request.Form["NewUserFormData.Company.CompanyState"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyStateID"] != null)
                                {
                                    _oNewUser.Company.CompanyStateID = System.Convert.ToInt32(Request.Form["NewUserFormData_Company_CompanyStateID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyStateID"] != null)
                                {
                                    _oNewUser.Company.CompanyStateID = System.Convert.ToInt32(Request.Form["NewUserFormData.Company.CompanyStateID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyCountry"] != null)
                                {
                                    _oNewUser.Company.CompanyCountry = Request.Form["NewUserFormData_Company_CompanyCountry"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyCountry"] != null)
                                {
                                    _oNewUser.Company.CompanyCountry = Request.Form["NewUserFormData.Company.CompanyCountry"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyCountryID"] != null)
                                {
                                    _oNewUser.Company.CompanyCountryID = System.Convert.ToInt32(Request.Form["NewUserFormData_Company_CompanyCountryID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyCountryID"] != null)
                                {
                                    _oNewUser.Company.CompanyCountryID = System.Convert.ToInt32(Request.Form["NewUserFormData.Company.CompanyCountryID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CompanyPostalCode"] != null)
                                {
                                    _oNewUser.Company.CompanyPostalCode = Request.Form["NewUserFormData_Company_CompanyPostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CompanyPostalCode"] != null)
                                {
                                    _oNewUser.Company.CompanyPostalCode = Request.Form["NewUserFormData.Company.CompanyPostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_EMail"] != null)
                                {
                                    _oNewUser.Company.EMail = Request.Form["NewUserFormData_Company_EMail"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.EMail"] != null)
                                {
                                    _oNewUser.Company.EMail = Request.Form["NewUserFormData.Company.EMail"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_OptingInMail"] != null)
                                {
                                    _oNewUser.Company.OptingInMail = Request.Form["NewUserFormData_Company_OptingInMail"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.OptingInMail"] != null)
                                {
                                    _oNewUser.Company.OptingInMail = Request.Form["NewUserFormData.Company.OptingInMail"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_Phone"] != null)
                                {
                                    _oNewUser.Company.Phone = Request.Form["NewUserFormData_Company_Phone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.Phone"] != null)
                                {
                                    _oNewUser.Company.Phone = Request.Form["NewUserFormData.Company.Phone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_Fax"] != null)
                                {
                                    _oNewUser.Company.Fax = Request.Form["NewUserFormData_Company_Fax"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.Fax"] != null)
                                {
                                    _oNewUser.Company.Fax = Request.Form["NewUserFormData.Company.Fax"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_CellPhone"] != null)
                                {
                                    _oNewUser.Company.CellPhone = Request.Form["NewUserFormData_Company_CellPhone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.CellPhone"] != null)
                                {
                                    _oNewUser.Company.CellPhone = Request.Form["NewUserFormData.Company.CellPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AvailableTimes"] != null)
                                {
                                    _oNewUser.Company.AvailableTimes = Request.Form["NewUserFormData_Company_AvailableTimes"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AvailableTimes"] != null)
                                {
                                    _oNewUser.Company.AvailableTimes = Request.Form["NewUserFormData.Company.AvailableTimes"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_AddressLine1"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.AddressLine1 = Request.Form["NewUserFormData_Company_AddressInfo_AddressLine1"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.AddressLine1"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.AddressLine1 = Request.Form["NewUserFormData.Company.AddressInfo.AddressLine1"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_AddressLine2"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.AddressLine2 = Request.Form["NewUserFormData_Company_AddressInfo_AddressLine2"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.AddressLine2"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.AddressLine2 = Request.Form["NewUserFormData.Company.AddressInfo.AddressLine2"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_AddressLine3"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.AddressLine3 = Request.Form["NewUserFormData_Company_AddressInfo_AddressLine3"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.AddressLine3"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.AddressLine3 = Request.Form["NewUserFormData.Company.AddressInfo.AddressLine3"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_City"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.City = Request.Form["NewUserFormData_Company_AddressInfo_City"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.City"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.City = Request.Form["NewUserFormData.Company.AddressInfo.City"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_State"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.State = Request.Form["NewUserFormData_Company_AddressInfo_State"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.State"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.State = Request.Form["NewUserFormData.Company.AddressInfo.State"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_StateID"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.StateID = System.Convert.ToInt32(Request.Form["NewUserFormData_Company_AddressInfo_StateID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.StateID"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.StateID = System.Convert.ToInt32(Request.Form["NewUserFormData.Company.AddressInfo.StateID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_Country"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.Country = Request.Form["NewUserFormData_Company_AddressInfo_Country"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.Country"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.Country = Request.Form["NewUserFormData.Company.AddressInfo.Country"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_CountryID"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.CountryID = System.Convert.ToInt32(Request.Form["NewUserFormData_Company_AddressInfo_CountryID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.CountryID"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.CountryID = System.Convert.ToInt32(Request.Form["NewUserFormData.Company.AddressInfo.CountryID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_PostalCode"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.PostalCode = Request.Form["NewUserFormData_Company_AddressInfo_PostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.PostalCode"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.PostalCode = Request.Form["NewUserFormData.Company.AddressInfo.PostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_Company_AddressInfo_PostalCode"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.PostalCode = Request.Form["NewUserFormData_Company_AddressInfo_PostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.Company.AddressInfo.PostalCode"] != null)
                                {
                                    _oNewUser.Company.AddressInfo.PostalCode = Request.Form["NewUserFormData.Company.AddressInfo.PostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_AddressLine1"] != null)
                                {
                                    _oNewUser.AddressInfo.AddressLine1 = Request.Form["NewUserFormData_AddressInfo_AddressLine1"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.AddressLine1"] != null)
                                {
                                    _oNewUser.AddressInfo.AddressLine1 = Request.Form["NewUserFormData.AddressInfo.AddressLine1"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_AddressLine2"] != null)
                                {
                                    _oNewUser.AddressInfo.AddressLine2 = Request.Form["NewUserFormData_AddressInfo_AddressLine2"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.AddressLine2"] != null)
                                {
                                    _oNewUser.AddressInfo.AddressLine2 = Request.Form["NewUserFormData.AddressInfo.AddressLine2"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_AddressLine3"] != null)
                                {
                                    _oNewUser.AddressInfo.AddressLine3 = Request.Form["NewUserFormData_AddressInfo_AddressLine3"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.AddressLine3"] != null)
                                {
                                    _oNewUser.AddressInfo.AddressLine3 = Request.Form["NewUserFormData.AddressInfo.AddressLine3"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_City"] != null)
                                {
                                    _oNewUser.AddressInfo.City = Request.Form["NewUserFormData_AddressInfo_City"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.City"] != null)
                                {
                                    _oNewUser.AddressInfo.City = Request.Form["NewUserFormData.AddressInfo.City"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_State"] != null)
                                {
                                    _oNewUser.AddressInfo.State = Request.Form["NewUserFormData_AddressInfo_State"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.State"] != null)
                                {
                                    _oNewUser.AddressInfo.State = Request.Form["NewUserFormData.AddressInfo.State"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_StateID"] != null)
                                {
                                    _oNewUser.AddressInfo.StateID = System.Convert.ToInt32(Request.Form["NewUserFormData_AddressInfo_StateID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.StateID"] != null)
                                {
                                    _oNewUser.AddressInfo.StateID = System.Convert.ToInt32(Request.Form["NewUserFormData.AddressInfo.StateID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_Country"] != null)
                                {
                                    _oNewUser.AddressInfo.Country = Request.Form["NewUserFormData_AddressInfo_Country"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.Country"] != null)
                                {
                                    _oNewUser.AddressInfo.Country = Request.Form["NewUserFormData.AddressInfo.Country"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_CountryID"] != null)
                                {
                                    _oNewUser.AddressInfo.CountryID = System.Convert.ToInt32(Request.Form["NewUserFormData_AddressInfo_CountryID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.CountryID"] != null)
                                {
                                    _oNewUser.AddressInfo.CountryID = System.Convert.ToInt32(Request.Form["NewUserFormData.AddressInfo.CountryID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_PostalCode"] != null)
                                {
                                    _oNewUser.AddressInfo.PostalCode = Request.Form["NewUserFormData_AddressInfo_PostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.PostalCode"] != null)
                                {
                                    _oNewUser.AddressInfo.PostalCode = Request.Form["NewUserFormData.AddressInfo.PostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_AddressInfo_PostalCode"] != null)
                                {
                                    _oNewUser.AddressInfo.PostalCode = Request.Form["NewUserFormData_AddressInfo_PostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.AddressInfo.PostalCode"] != null)
                                {
                                    _oNewUser.AddressInfo.PostalCode = Request.Form["NewUserFormData.AddressInfo.PostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_FullName"] != null)
                                {
                                    _oNewUser.BillingInfo.FullName = Request.Form["NewUserFormData_BillingInfo_FullName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.FullName"] != null)
                                {
                                    _oNewUser.BillingInfo.FullName = Request.Form["NewUserFormData.BillingInfo.FullName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_FirstName"] != null)
                                {
                                    _oNewUser.BillingInfo.FirstName = Request.Form["NewUserFormData_BillingInfo_FirstName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.FirstName"] != null)
                                {
                                    _oNewUser.BillingInfo.FirstName = Request.Form["NewUserFormData.BillingInfo.FirstName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_LastName"] != null)
                                {
                                    _oNewUser.BillingInfo.LastName = Request.Form["NewUserFormData_BillingInfo_LastName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.LastName"] != null)
                                {
                                    _oNewUser.BillingInfo.LastName = Request.Form["NewUserFormData.BillingInfo.LastName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_MiddleName"] != null)
                                {
                                    _oNewUser.BillingInfo.MiddleName = Request.Form["NewUserFormData_BillingInfo_MiddleName"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.MiddleName"] != null)
                                {
                                    _oNewUser.BillingInfo.MiddleName = Request.Form["NewUserFormData.BillingInfo.MiddleName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CreditCardNumber"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardNumber = Request.Form["NewUserFormData_BillingInfo_CreditCardNumber"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CreditCardNumber"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardNumber = Request.Form["NewUserFormData.BillingInfo.CreditCardNumber"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CreditCardCVV"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardCVV = Request.Form["NewUserFormData_BillingInfo_CreditCardCVV"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CreditCardCVV"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardCVV = Request.Form["NewUserFormData.BillingInfo.CreditCardCVV"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CreditCardExpDate"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardExpDate = Request.Form["NewUserFormData_BillingInfo_CreditCardExpDate"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CreditCardExpDate"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardExpDate = Request.Form["NewUserFormData.BillingInfo.CreditCardExpDate"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CreditCardExpDateMonth"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardExpDateMonth = Request.Form["NewUserFormData_BillingInfo_CreditCardExpDateMonth"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CreditCardExpDateMonth"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardExpDateMonth = Request.Form["NewUserFormData.BillingInfo.CreditCardExpDateMonth"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CreditCardExpDateYear"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardExpDateYear = Request.Form["NewUserFormData_BillingInfo_CreditCardExpDateYear"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CreditCardExpDateYear"] != null)
                                {
                                    _oNewUser.BillingInfo.CreditCardExpDateYear = Request.Form["NewUserFormData.BillingInfo.CreditCardExpDateYear"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_EMail"] != null)
                                {
                                    _oNewUser.BillingInfo.EMail = Request.Form["NewUserFormData_BillingInfo_EMail"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.EMail"] != null)
                                {
                                    _oNewUser.BillingInfo.EMail = Request.Form["NewUserFormData.BillingInfo.EMail"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_OptingInMail"] != null)
                                {
                                    _oNewUser.BillingInfo.OptingInMail = System.Convert.ToBoolean(Request.Form["NewUserFormData_BillingInfo_OptingInMail"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.OptingInMail"] != null)
                                {
                                    _oNewUser.BillingInfo.OptingInMail = System.Convert.ToBoolean(Request.Form["NewUserFormData.BillingInfo.OptingInMail"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_Phone"] != null)
                                {
                                    _oNewUser.BillingInfo.Phone = Request.Form["NewUserFormData_BillingInfo_Phone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.Phone"] != null)
                                {
                                    _oNewUser.BillingInfo.Phone = Request.Form["NewUserFormData.BillingInfo.Phone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_Fax"] != null)
                                {
                                    _oNewUser.BillingInfo.Fax = Request.Form["NewUserFormData_BillingInfo_Fax"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.Fax"] != null)
                                {
                                    _oNewUser.BillingInfo.Fax = Request.Form["NewUserFormData.BillingInfo.Fax"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CellPhone"] != null)
                                {
                                    _oNewUser.BillingInfo.CellPhone = Request.Form["NewUserFormData_BillingInfo_CellPhone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CellPhone"] != null)
                                {
                                    _oNewUser.BillingInfo.CellPhone = Request.Form["NewUserFormData.BillingInfo.CellPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_CellPhone"] != null)
                                {
                                    _oNewUser.BillingInfo.CellPhone = Request.Form["NewUserFormData_BillingInfo_CellPhone"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.CellPhone"] != null)
                                {
                                    _oNewUser.BillingInfo.CellPhone = Request.Form["NewUserFormData.BillingInfo.CellPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_AddressLine1"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.AddressLine1 = Request.Form["NewUserFormData_BillingInfo_AddressInfo_AddressLine1"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.AddressLine1"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.AddressLine1 = Request.Form["NewUserFormData.BillingInfo.AddressInfo.AddressLine1"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_AddressLine2"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.AddressLine2 = Request.Form["NewUserFormData_BillingInfo_AddressInfo_AddressLine2"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.AddressLine2"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.AddressLine2 = Request.Form["NewUserFormData.BillingInfo.AddressInfo.AddressLine2"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_AddressLine3"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.AddressLine3 = Request.Form["NewUserFormData_BillingInfo_AddressInfo_AddressLine3"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.AddressLine3"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.AddressLine3 = Request.Form["NewUserFormData.BillingInfo.AddressInfo.AddressLine3"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_City"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.City = Request.Form["NewUserFormData_BillingInfo_AddressInfo_City"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.City"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.City = Request.Form["NewUserFormData.BillingInfo.AddressInfo.City"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_State"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.State = Request.Form["NewUserFormData_BillingInfo_AddressInfo_State"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.State"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.State = Request.Form["NewUserFormData.BillingInfo.AddressInfo.State"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_StateID"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.StateID = System.Convert.ToInt32(Request.Form["NewUserFormData_BillingInfo_AddressInfo_StateID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.StateID"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.StateID = System.Convert.ToInt32(Request.Form["NewUserFormData.BillingInfo.AddressInfo.StateID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_Country"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.Country = Request.Form["NewUserFormData_BillingInfo_AddressInfo_Country"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.Country"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.Country = Request.Form["NewUserFormData.BillingInfo.AddressInfo.Country"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_CountryID"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.CountryID = System.Convert.ToInt32(Request.Form["NewUserFormData_BillingInfo_AddressInfo_CountryID"].ToString());
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.CountryID"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.CountryID = System.Convert.ToInt32(Request.Form["NewUserFormData.BillingInfo.AddressInfo.CountryID"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_PostalCode"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.PostalCode = Request.Form["NewUserFormData_BillingInfo_AddressInfo_PostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.PostalCode"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.PostalCode = Request.Form["NewUserFormData.BillingInfo.AddressInfo.PostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewUserFormData_BillingInfo_AddressInfo_PostalCode"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.PostalCode = Request.Form["NewUserFormData_BillingInfo_AddressInfo_PostalCode"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.BillingInfo.AddressInfo.PostalCode"] != null)
                                {
                                    _oNewUser.BillingInfo.AddressInfo.PostalCode = Request.Form["NewUserFormData.BillingInfo.AddressInfo.PostalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["NewUserFormData_ErrorPageURL"] != null)
                                {
                                    _oNewUser.ErrorPageURL = Request.Form["NewUserFormData_ErrorPageURL"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.ErrorPageURLe"] != null)
                                {
                                    _oNewUser.ErrorPageURL = Request.Form["NewUserFormData.ErrorPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["NewUserFormData_SuccessPageURL"] != null)
                                {
                                    _oNewUser.SuccessPageURL = Request.Form["NewUserFormData_SuccessPageURL"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.SuccessPageURL"] != null)
                                {
                                    _oNewUser.SuccessPageURL = Request.Form["NewUserFormData.SuccessPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["NewUserFormData_SourceForm"] != null)
                                {
                                    _oNewUser.SourceForm = Request.Form["NewUserFormData_SourceForm"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.SourceForm"] != null)
                                {
                                    _oNewUser.SourceForm = Request.Form["NewUserFormData.SourceForm"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["NewUserFormData_IsCMSForm"] != null)
                                {
                                    _oNewUser.IsCMSForm = Request.Form["NewUserFormData_IsCMSForm"].ToString();
                                }
                                else if (Request.Form["NewUserFormData.IsCMSForm"] != null)
                                {
                                    _oNewUser.IsCMSForm = Request.Form["NewUserFormData.IsCMSForm"].ToString();
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


                if (_oNewUser.IsCMSForm == "true")
                {
                    bIsRedirect = true;
                }
                #endregion

                if (_oNewUser != null)
                {
                    #region Process Form
                    #region Set Veriables to Form Processor
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_UserName", _oNewUser.UserName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Password", _oNewUser.Password);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_PasswordConfirm", _oNewUser.PasswordConfirm);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_FirstName", _oNewUser.FirstName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_LastName", _oNewUser.LastName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_MiddleName", _oNewUser.MiddleName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_EMail", _oNewUser.EMail);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_OptingInMail", _oNewUser.OptingInMail.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Phone", _oNewUser.Phone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Fax", _oNewUser.Fax);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_CellPhone", _oNewUser.CellPhone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_DateOfBirth", _oNewUser.DateOfBirth);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_DOBMonth", _oNewUser.DOBMonth);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_DOBDay", _oNewUser.DOBDay);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_DOBYear", _oNewUser.DOBYear);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Sex", _oNewUser.Sex);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_ItemIDs", _oNewUser.ItemIDs);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_CuponCodes", _oNewUser.CuponCodes);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_PromoCodes", _oNewUser.PromoCodes);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_CompanyName", _oNewUser.CompanyName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_TrackingCode", _oNewUser.TrackingCode);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyName", _oNewUser.Company.CompanyName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyPhone", _oNewUser.Company.CompanyPhone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyPhoneExt", _oNewUser.Company.CompanyPhoneExt);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyFax", _oNewUser.Company.CompanyFax);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyCellPhone", _oNewUser.Company.CompanyCellPhone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyAddressLine1", _oNewUser.Company.CompanyAddressLine1);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyAddressLine2", _oNewUser.Company.CompanyAddressLine2);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyAddressLine3", _oNewUser.Company.CompanyAddressLine3);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyCity", _oNewUser.Company.CompanyCity);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyState", _oNewUser.Company.CompanyState);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyStateID", _oNewUser.Company.CompanyStateID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyCountry", _oNewUser.Company.CompanyCountry);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyCountryID", _oNewUser.Company.CompanyCountryID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CompanyPostalCode", _oNewUser.Company.CompanyPostalCode);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_EMail", _oNewUser.Company.EMail);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_OptingInMail", _oNewUser.Company.OptingInMail);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_Phone", _oNewUser.Company.Phone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_Fax", _oNewUser.Company.Fax);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_CellPhone", _oNewUser.Company.CellPhone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AvailableTimes", _oNewUser.Company.AvailableTimes);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_AddressLine1", _oNewUser.Company.AddressInfo.AddressLine1);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_AddressLine2", _oNewUser.Company.AddressInfo.AddressLine2);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_AddressLine3", _oNewUser.Company.AddressInfo.AddressLine3);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_City", _oNewUser.Company.AddressInfo.City);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_State", _oNewUser.Company.AddressInfo.State);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_StateID", _oNewUser.Company.AddressInfo.StateID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_Country", _oNewUser.Company.AddressInfo.Country);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_CountryID", _oNewUser.Company.AddressInfo.CountryID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_PostalCode", _oNewUser.Company.AddressInfo.PostalCode);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_Company_AddressInfo_PostalCode", _oNewUser.Company.AddressInfo.PostalCode);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_AddressLine1", _oNewUser.AddressInfo.AddressLine1);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_AddressLine2", _oNewUser.AddressInfo.AddressLine2);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_AddressLine3", _oNewUser.AddressInfo.AddressLine3);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_City", _oNewUser.AddressInfo.City);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_State", _oNewUser.AddressInfo.State);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_StateID", _oNewUser.AddressInfo.StateID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_Country", _oNewUser.AddressInfo.Country);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_CountryID", _oNewUser.AddressInfo.CountryID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_AddressInfo_PostalCode", _oNewUser.AddressInfo.PostalCode);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_FullName", _oNewUser.BillingInfo.FullName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_FirstName", _oNewUser.BillingInfo.FirstName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_LastName", _oNewUser.BillingInfo.LastName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_MiddleName", _oNewUser.BillingInfo.MiddleName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CreditCardNumber", _oNewUser.BillingInfo.CreditCardNumber);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CreditCardCVV", _oNewUser.BillingInfo.CreditCardCVV);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CreditCardExpDate", _oNewUser.BillingInfo.CreditCardExpDate);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CreditCardExpDateMonth", _oNewUser.BillingInfo.CreditCardExpDateMonth);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CreditCardExpDateYear", _oNewUser.BillingInfo.CreditCardExpDateYear);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_EMail", _oNewUser.BillingInfo.EMail);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_OptingInMail", _oNewUser.BillingInfo.OptingInMail.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_Phone", _oNewUser.BillingInfo.Phone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_Fax", _oNewUser.BillingInfo.Fax);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CellPhone", _oNewUser.BillingInfo.CellPhone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_CellPhone", _oNewUser.BillingInfo.CellPhone);
                    }
                    catch
                    {
                    }

                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_AddressLine1", _oNewUser.BillingInfo.AddressInfo.AddressLine1);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_AddressLine2", _oNewUser.BillingInfo.AddressInfo.AddressLine2);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_AddressLine3", _oNewUser.BillingInfo.AddressInfo.AddressLine3);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_City", _oNewUser.BillingInfo.AddressInfo.City);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_State", _oNewUser.BillingInfo.AddressInfo.State);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_StateID", _oNewUser.BillingInfo.AddressInfo.StateID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_Country", _oNewUser.BillingInfo.AddressInfo.Country);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_CountryID", _oNewUser.BillingInfo.AddressInfo.CountryID.ToString());
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("NewUserFormData_BillingInfo_AddressInfo_PostalCode", _oNewUser.BillingInfo.AddressInfo.PostalCode);
                    }
                    catch
                    {
                    }
                    #endregion

                    bool bValidationError = false;
                    #region Validation
                    AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();

                    if (String.IsNullOrEmpty(_oNewUser.EMail))
                    {
                        _oNewUser.EMail = _oNewUser.UserName;
                    }

                    bValidationError = oValidation.Validate_NewUserRegistration(_oNewUser, out sErrorMessage);
                    #endregion

                    if (bValidationError == false)
                    {
                        int iDupCheck = 0;
                        iDupCheck = oSystem.CurrentUser.CheckUserDupCheck_UserName(oSystem.cnCon, _oNewUser.UserName);
                        if (iDupCheck == 0)
                        {
                            #region Perform User Registration
                            DINT_Users dbInteraction = new DINT_Users(oSystem.cnCon);
                            DEF_Users.RecordObject _NewUserRecord = new DEF_Users.RecordObject();


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

                            dbInteraction.Insert_SQL(_NewUserRecord);


                            oSystem.SetCurrentUser();
                            oSystem.BuildUserExtendedData();


                            //now we need to find the ID of this new user and add the appropriat role
                            oSystem.CurrentUser = new ACMSUser.UserSecurity(oSystem.cnCon);
                            ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                            oUserAuth.UserName = _oNewUser.UserName;
                            oUserAuth.Password = _oNewUser.Password;
                            oUserAuth.AccessGranted = true;
                            ViewBag.bLoggedIn = true;
                            ViewBag.User_UserName = oSystem.CurrentUser.UserView.User.sUserName;

                            int iRowsAffected = 0;
                            string sExeSQLError = "";
                            DINT_Users dbSitEvent = new DINT_Users(oSystem.cnCon);
                            string sSQL = "Update WebSiteEvents Set iCreatedByID = '" + oSystem.CurrentUser.UserView.User.ID + "', sCreatedByID = '" + oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName + "', iUpdatedByID = '" + oSystem.CurrentUser.UserView.User.ID + "',  sUpdatedByID = '" + oSystem.CurrentUser.UserView.User.sFName + " " + oSystem.CurrentUser.UserView.User.sLName + "' Where sCookieID = '" + oSystem.UserCookie.CookieID + "'";

                            oSystem.cnCon.ExecQuery(sSQL, out iRowsAffected, out sExeSQLError);

                            ViewBag.bSaved = true;
                            ViewBag.bError = false;
                            ViewBag.sErrorMessage = "";
                            _oNewUser.UserNameError = false;
                            

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


                            SendUserValidationMessage(_oNewUser.FirstName + " " + _oNewUser.LastName, _oNewUser.UserName, _NewUserRecord.sAccessKey);


                            if (oSystem.CurrentUser.LogIn(oUserAuth, oSystem.rsGlobalVeriables))
                            {
                                bRedirectToError = false;
                                ViewBag.bError = false;
                                ViewBag.bCompleted = true;
                                ViewBag.ErrorMessage = "";
                                oSystem.SetValue_FormFunction("bError", "false");
                                oSystem.SetValue_FormFunction("bCompleted", "true");
                                oSystem.SetValue_FormFunction("sError_Message", "");

                                return Redirect("~/portal");
                            }
                            else
                            {
                                ViewBag.bError = true;
                                ViewBag.bCompleted = false;
                                ViewBag.ErrorMessage = "User Record Was Created but, log in attempt faild!";
                                oSystem.SetValue_FormFunction("bError", "true");
                                oSystem.SetValue_FormFunction("bCompleted", "false");
                                oSystem.SetValue_FormFunction("sError_Message", "User Record Was Created but, log in attempt faild!");
                                bRedirectToError = true;
                            }
                            #endregion
                        }
                        else
                        {
                            ViewBag.bError = true;
                            ViewBag.bCompleted = false;
                            ViewBag.ErrorMessage = "Duplicate Record Found!";
                            oSystem.SetValue_FormFunction("bError", "true");
                            oSystem.SetValue_FormFunction("bCompleted", "false");
                            oSystem.SetValue_FormFunction("sError_Message", "Duplicate Record Found!");
                            bRedirectToError = true;
                        }
                    }
                    else
                    {
                        ViewBag.bError = true;
                        ViewBag.bCompleted = false;
                        ViewBag.ErrorMessage = "Form Data Was Not Valid!";
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
                        if (_oNewUser != null)
                        {
                            if (!String.IsNullOrEmpty(_oNewUser.SuccessPageURL))
                            {
                                oSystem.CloseDataConnection();
                                return Redirect(_oNewUser.SuccessPageURL);
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
                        if (_oNewUser != null)
                        {
                            if (!String.IsNullOrEmpty(_oNewUser.ErrorPageURL))
                            {
                                oSystem.CloseDataConnection();
                                return Redirect(_oNewUser.ErrorPageURL);
                            }
                        }
                    }
                    #endregion
                }
                #endregion

                #region Now Perform Page Level Functions Based on Form Type

                AriesCMS.Helpers.PageBuilder oPageBuilder = new Helpers.PageBuilder();

                string sPageTitle = "Sign Up";
                string sPageName = "Sign Up";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Sign Up";
                string sKeyWords = "Sign Up Form - Sign Up For Account";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_SignUp, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.NewUserFormData = _oNewUser;

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


        string _ViewFile_Lead = "~/views/localview/inc_Lead.cshtml";
        [HttpPost]
        public ActionResult SubmitSendLeadRequest(FormCollection fc, AriesCMS.Models.ContactLeadView _rec)
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
                else if ((String.IsNullOrEmpty(_rec.LastName)) && (String.IsNullOrEmpty(_rec.Email)))
                {
                    bBuildModelViaFormObjects = true;
                }

                if (bBuildModelViaFormObjects == true)
                {
                    if (fc != null)
                    {
                        _rec = new Models.ContactLeadView();
                        if (fc.Count > 0)
                        {
                            #region Translate Form Objects To Data Model Objects
                            try
                            {
                                if (Request.Form["ContactLeadFormData_FirstName"] != null)
                                {
                                    _rec.FirstName = Request.Form["ContactLeadFormData_FirstName"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.FirstName"] != null)
                                {
                                    _rec.FirstName = Request.Form["ContactLeadFormData.FirstName"].ToString();
                                }
                            }
                            catch
                            {
                            }


                            try
                            {
                                if (Request.Form["ContactLeadFormData_LastName"] != null)
                                {
                                    _rec.LastName = Request.Form["ContactLeadFormData_LastName"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.LastName"] != null)
                                {
                                    _rec.LastName = Request.Form["ContactLeadFormData.LastName"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["ContactLeadFormData_CompanyName"] != null)
                                {
                                    _rec.CompanyName = Request.Form["ContactLeadFormData_CompanyName"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.CompanyName"] != null)
                                {
                                    _rec.CompanyName = Request.Form["ContactLeadFormData.CompanyName"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["ContactLeadFormData_Title"] != null)
                                {
                                    _rec.Title = Request.Form["ContactLeadFormData_Title"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.Title"] != null)
                                {
                                    _rec.Title = Request.Form["ContactLeadFormData.Title"].ToString();
                                }
                            }
                            catch
                            {
                            }

                            try
                            {
                                if (Request.Form["ContactLeadFormData_CompanyURL"] != null)
                                {
                                    _rec.CompanyURL = Request.Form["ContactLeadFormData_CompanyURL"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.CompanyURL"] != null)
                                {
                                    _rec.CompanyURL = Request.Form["ContactLeadFormData.CompanyURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_Phone"] != null)
                                {
                                    _rec.Phone = Request.Form["ContactLeadFormData_Phone"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.Phone"] != null)
                                {
                                    _rec.Phone = Request.Form["ContactLeadFormData.Phone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_PhoneExt"] != null)
                                {
                                    _rec.PhoneExt = Request.Form["ContactLeadFormData_PhoneExt"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.PhoneExt"] != null)
                                {
                                    _rec.PhoneExt = Request.Form["ContactLeadFormData.PhoneExt"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_Email"] != null)
                                {
                                    _rec.Email = Request.Form["ContactLeadFormData_Email"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.Email"] != null)
                                {
                                    _rec.Email = Request.Form["ContactLeadFormData.Email"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_Notes"] != null)
                                {
                                    _rec.Notes = Request.Form["ContactLeadFormData_Notes"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.Notes"] != null)
                                {
                                    _rec.Notes = Request.Form["ContactLeadFormData.Notes"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_GrossAnnualRevenues"] != null)
                                {
                                    _rec.GrossAnnualRevenues = Request.Form["ContactLeadFormData_GrossAnnualRevenues"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.GrossAnnualRevenues"] != null)
                                {
                                    _rec.GrossAnnualRevenues = Request.Form["ContactLeadFormData.GrossAnnualRevenues"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_HowManyEmployees"] != null)
                                {
                                    _rec.HowManyEmployees = Request.Form["ContactLeadFormData_HowManyEmployees"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.HowManyEmployees"] != null)
                                {
                                    _rec.HowManyEmployees = Request.Form["ContactLeadFormData.HowManyEmployees"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_RefferalCode"] != null)
                                {
                                    _rec.RefferalCode = Request.Form["ContactLeadFormData_RefferalCode"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.RefferalCode"] != null)
                                {
                                    _rec.RefferalCode = Request.Form["ContactLeadFormData.RefferalCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ContactLeadFormData_ErrorMessage"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ContactLeadFormData.ErrorMessage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ContactLeadFormData_ErrorPageURL"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ContactLeadFormData.ErrorPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ContactLeadFormData_SuccessPageURL"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ContactLeadFormData.SuccessPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ContactLeadFormData_SourceForm"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ContactLeadFormData.SourceForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ContactLeadFormData_IsCMSForm"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ContactLeadFormData.IsCMSForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ContactLeadFormData_DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["ContactLeadFormData_DebugFormResponseMessage"].ToString();
                                }
                                else if (Request.Form["ContactLeadFormData.DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["ContactLeadFormData.DebugFormResponseMessage"].ToString();
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
                    #region Set Veriables to Form Processor
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_FirstName", _rec.FirstName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_LastName", _rec.LastName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_CompanyName", _rec.CompanyName);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_Title", _rec.Title);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_CompanyURL", _rec.CompanyURL);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_Phone", _rec.Phone);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_PhoneExt", _rec.PhoneExt);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_Email", _rec.Email);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_Notes", _rec.Notes);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_GrossAnnualRevenues", _rec.GrossAnnualRevenues);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_HowManyEmployees", _rec.HowManyEmployees);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_RefferalCode", _rec.RefferalCode);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_ErrorMessage", _rec.ErrorMessage);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_ErrorPageURL", _rec.ErrorPageURL);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_SuccessPageURL", _rec.SuccessPageURL);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_SourceForm", _rec.SourceForm);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_IsCMSForm", _rec.IsCMSForm);
                    }
                    catch
                    {
                    }
                    try
                    {
                        oSystem.SetValue_FormFunction("ContactLeadFormData_DebugFormResponseMessage", _rec.DebugFormResponseMessage);
                    }
                    catch
                    {
                    }
                    #endregion

                    bool bValidationError = false;
                    #region Validation
                    AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();
                    if (oValidation.IsValidEmail(_rec.Email))
                    {
                        bValidationError = false;
                    }
                    else
                    {
                        bValidationError = true;
                    }
                    #endregion

                    if (bValidationError == false)
                    {
                        #region Perform Form Processing

                        string sSubject = "Web Site Lead Entry";
                        string sMessage = "";
                        sMessage += "Lead entry from Web Site: " + "<br/>";
                        sMessage += "First Name: " + _rec.FirstName + "\r\n" + "<br/>";
                        sMessage += "Last Name: " + _rec.LastName + "\r\n" + "<br/>";
                        sMessage += "Company Name: " + _rec.CompanyName + "\r\n" + "<br/>";
                        sMessage += "Title: " + _rec.Title + "\r\n" + "<br/>";
                        sMessage += "Company URL: " + _rec.CompanyURL + "\r\n" + "<br/>";
                        sMessage += "Phone: " + _rec.Phone + "\r\n" + "<br/>";
                        sMessage += "Phone Ext: " + _rec.PhoneExt + "\r\n" + "<br/>";
                        sMessage += "Email: " + _rec.Email + "\r\n" + "<br/>";
                        sMessage += "Gross Annual Revenues: " + _rec.GrossAnnualRevenues + "\r\n" + "<br/>";
                        sMessage += "How Many Employees: " + _rec.HowManyEmployees + "\r\n" + "<br/>";
                        sMessage += "Refferal Code: " + _rec.RefferalCode + "\r\n" + "<br/>";
                        sMessage += "Notes: " + _rec.Notes + "\r\n" + "<br/>";

                        oSystem.SendMessage("info@yourdomain.com", "Web Site", "info@yourdomain.com", "Web Site", sSubject, sMessage);

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
                        rec_WebSite_Leads.sPrimaryPhone = _rec.Phone + " Ext." + _rec.PhoneExt;
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
                        rec_WebSite_Leads.sCompanyURL = _rec.Title;
                        rec_WebSite_Leads.sCompanyTitle = _rec.CompanyURL;

                        rec_WebSite_Leads.sEventLog = sMessage;
                        rec_WebSite_Leads.sNotes = _rec.Notes;


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



                        ViewBag.bError = false;
                        ViewBag.bCompleted = true;
                        ViewBag.ErrorMessage = "";
                        oSystem.SetValue_FormFunction("bError", "false");
                        oSystem.SetValue_FormFunction("bCompleted", "true");
                        oSystem.SetValue_FormFunction("sError_Message", "");
                        bRedirectToError = false;
                        #endregion

                    }
                    else
                    {
                        ViewBag.bError = true;
                        ViewBag.bCompleted = false;
                        ViewBag.ErrorMessage = "Form Data Was Not Valid!";
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

                string sPageTitle = "Lead Registration";
                string sPageName = "Lead Registration";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Lead Registration";
                string sKeyWords = "Lead Registration Form - Lead Registration Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_Lead, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ContactLeadFormData = _rec;


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


        string _ViewFile_RecoverProfile = "~/views/localview/inc_RecoverProfile.cshtml";
        [HttpPost]
        public ActionResult SubmitRecoverProfile(FormCollection fc, AriesCMS.Models.ProfileRecovery _rec)
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
                else if (String.IsNullOrEmpty(_rec.Username))
                {
                    bBuildModelViaFormObjects = true;
                }

                if (bBuildModelViaFormObjects == true)
                {
                    if (fc != null)
                    {
                        _rec = new Models.ProfileRecovery();
                        if (fc.Count > 0)
                        {
                            #region Translate Form Objects To Data Model Objects
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_FullName"] != null)
                                {
                                    _rec.FullName = Request.Form["ProfileRecoveryFormData_FullName"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.FullName"] != null)
                                {
                                    _rec.FullName = Request.Form["ProfileRecoveryFormData.FullName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_FirstName"] != null)
                                {
                                    _rec.FirstName = Request.Form["ProfileRecoveryFormData_FirstName"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.FirstName"] != null)
                                {
                                    _rec.FirstName = Request.Form["ProfileRecoveryFormData.FirstName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_LastName"] != null)
                                {
                                    _rec.LastName = Request.Form["ProfileRecoveryFormData_LastName"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.LastName"] != null)
                                {
                                    _rec.LastName = Request.Form["ProfileRecoveryFormData.LastName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_Email"] != null)
                                {
                                    _rec.Email = Request.Form["ProfileRecoveryFormData_Email"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.Email"] != null)
                                {
                                    _rec.Email = Request.Form["ProfileRecoveryFormData.Email"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_Username"] != null)
                                {
                                    _rec.Username = Request.Form["ProfileRecoveryFormData_Username"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.Username"] != null)
                                {
                                    _rec.Username = Request.Form["ProfileRecoveryFormData.Username"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ProfileRecoveryFormData_ErrorMessage"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ProfileRecoveryFormData.ErrorMessage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ProfileRecoveryFormData_ErrorPageURL"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ProfileRecoveryFormData.ErrorPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ProfileRecoveryFormData_SuccessPageURL"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ProfileRecoveryFormData.SuccessPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ProfileRecoveryFormData_SourceForm"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ProfileRecoveryFormData.SourceForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ProfileRecoveryFormData_IsCMSForm"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ProfileRecoveryFormData.IsCMSForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ProfileRecoveryFormData_DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["ProfileRecoveryFormData_DebugFormResponseMessage"].ToString();
                                }
                                else if (Request.Form["ProfileRecoveryFormData.DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["ProfileRecoveryFormData.DebugFormResponseMessage"].ToString();
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
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_FullName", _rec.FullName);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_FirstName", _rec.FirstName);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_LastName", _rec.LastName);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_Email", _rec.Email);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_Username", _rec.Username);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_ErrorMessage", _rec.ErrorMessage);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_ErrorPageURL", _rec.ErrorPageURL);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_SuccessPageURL", _rec.SuccessPageURL);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_SourceForm", _rec.SourceForm);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_IsCMSForm", _rec.IsCMSForm);
                    oSystem.SetValue_FormFunction("ProfileRecoveryFormData_DebugFormResponseMessage", _rec.DebugFormResponseMessage);

                    bool bValidationError = false;
                    #region Validation
                    AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();
                    bool IsValid = oValidation.Validate_ProfileRecovery(_rec, out sErrorMessage);
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
                        #region
                        DINT_Users dbInteraction = new DINT_Users(oSystem.cnCon);
                        List<DEF_Users.RecordObject> dbSearch = null;
                        List<DataParameter> lstParameters = new List<DataParameter>();

                        DataParameter pParameter = new DataParameter("sUserName", "'" + _rec.Email + "'", "string", 11, "sUserName", " = ", "");
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

                                    oSystem.SendMessage("support@yourdomain.com", "Site Profile Recovery", dbSearch[0].sPrimaryEMail, dbSearch[0].sFName + " " + dbSearch[0].sLName, sSubject, sMessage);

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
                                    bRedirectToError = false;
                                    ViewBag.bError = true;
                                    ViewBag.bCompleted = true;
                                    ViewBag.ErrorMessage = "Sorry could not find your information!";
                                    oSystem.SetValue_FormFunction("bError", "true");
                                    oSystem.SetValue_FormFunction("bCompleted", "false");
                                    oSystem.SetValue_FormFunction("sError_Message", "Sorry could not find your information!");
                                }
                            }
                            else
                            {
                                bRedirectToError = false;
                                ViewBag.bError = true;
                                ViewBag.bCompleted = true;
                                ViewBag.ErrorMessage = "Sorry could not find your information!";
                                oSystem.SetValue_FormFunction("bError", "true");
                                oSystem.SetValue_FormFunction("bCompleted", "false");
                                oSystem.SetValue_FormFunction("sError_Message", "Sorry could not find your information!");
                            }
                        }
                        else
                        {
                            bRedirectToError = false;
                            ViewBag.bError = true;
                            ViewBag.bCompleted = true;
                            ViewBag.ErrorMessage = "Sorry could not find your information!";
                            oSystem.SetValue_FormFunction("bError", "true");
                            oSystem.SetValue_FormFunction("bCompleted", "false");
                            oSystem.SetValue_FormFunction("sError_Message", "Sorry could not find your information!");
                        }
                        #endregion
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

                string sPageTitle = "Recover User Profile";
                string sPageName = "Recover User Profile";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Recover User Profile";
                string sKeyWords = "Recover User Profile Form - Recover User Profile Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_RecoverProfile, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ProfileRecoveryFormData = _rec;


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


        string _ViewFile_SharePage = "~/views/localview/inc_SharePage.cshtml";
        [HttpPost]
        public ActionResult SubmitShareLink(FormCollection fc, AriesCMS.Models.ShareContent _rec)
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
                else if (String.IsNullOrEmpty(_rec.sFromEmail))
                {
                    bBuildModelViaFormObjects = true;
                }

                if (bBuildModelViaFormObjects == true)
                {
                    if (fc != null)
                    {
                        _rec = new Models.ShareContent();
                        if (fc.Count > 0)
                        {
                            #region Translate Form Objects To Data Model Objects                           
                            try
                            {
                                if (Request.Form["ShareContentFormData_sSubject"] != null)
                                {
                                    _rec.sSubject = Request.Form["ShareContentFormData_sSubject"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData."] != null)
                                {
                                    _rec.sSubject = Request.Form["ShareContentFormData.sSubject"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_sMessage"] != null)
                                {
                                    _rec.sMessage = Request.Form["ShareContentFormData_sMessage"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.sMessage"] != null)
                                {
                                    _rec.sMessage = Request.Form["ShareContentFormData.sMessage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_sFromName"] != null)
                                {
                                    _rec.sFromName = Request.Form["ShareContentFormData_sFromName"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.sFromName"] != null)
                                {
                                    _rec.sFromName = Request.Form["ShareContentFormData.sFromName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_sFromEmail"] != null)
                                {
                                    _rec.sFromEmail = Request.Form["ShareContentFormData_sFromEmail"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.sFromEmail"] != null)
                                {
                                    _rec.sFromEmail = Request.Form["ShareContentFormData.sFromEmail"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_sFromCellPhone"] != null)
                                {
                                    _rec.sFromCellPhone = Request.Form["ShareContentFormData_sFromCellPhone"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.sFromCellPhone"] != null)
                                {
                                    _rec.sFromCellPhone = Request.Form["ShareContentFormData.sFromCellPhone"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_sToEmails"] != null)
                                {
                                    _rec.sToEmails = Request.Form["ShareContentFormData_sToEmails"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.sToEmails"] != null)
                                {
                                    _rec.sToEmails = Request.Form["ShareContentFormData.sToEmails"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_sToCellPhones"] != null)
                                {
                                    _rec.sToCellPhones = Request.Form["ShareContentFormData_sToCellPhones"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.sToCellPhones"] != null)
                                {
                                    _rec.sToCellPhones = Request.Form["ShareContentFormData.sToCellPhones"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_URI"] != null)
                                {
                                    _rec.URI = Request.Form["ShareContentFormData_URI"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.URI"] != null)
                                {
                                    _rec.URI = Request.Form["ShareContentFormData.URI"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_URL"] != null)
                                {
                                    _rec.URL = Request.Form["ShareContentFormData_URL"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.URL"] != null)
                                {
                                    _rec.URL = Request.Form["ShareContentFormData.URL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_ThumbNailImage"] != null)
                                {
                                    _rec.ThumbNailImage = Request.Form["ShareContentFormData_ThumbNailImage"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.ThumbNailImage"] != null)
                                {
                                    _rec.ThumbNailImage = Request.Form["ShareContentFormData.ThumbNailImage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_IsImage"] != null)
                                {
                                    _rec.IsImage = System.Convert.ToBoolean(Request.Form["ShareContentFormData_IsImage"].ToString());
                                }
                                else if (Request.Form["ShareContentFormData.IsImage"] != null)
                                {
                                    _rec.IsImage = System.Convert.ToBoolean(Request.Form["ShareContentFormData.IsImage"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ShareContentFormData_ErrorMessage"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["ShareContentFormData.ErrorMessage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ShareContentFormData_ErrorPageURL"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["ShareContentFormData.ErrorPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ShareContentFormData_SuccessPageURL"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["ShareContentFormData.SuccessPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ShareContentFormData_SourceForm"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["ShareContentFormData.SourceForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ShareContentFormData_IsCMSForm"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["ShareContentFormData.IsCMSForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["ShareContentFormData_DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["ShareContentFormData_DebugFormResponseMessage"].ToString();
                                }
                                else if (Request.Form["ShareContentFormData.DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["ShareContentFormData.DebugFormResponseMessage"].ToString();
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
                    oSystem.SetValue_FormFunction("ShareContentFormData_sSubject", _rec.sSubject);
                    oSystem.SetValue_FormFunction("ShareContentFormData_sMessage", _rec.sMessage);
                    oSystem.SetValue_FormFunction("ShareContentFormData_sFromName", _rec.sFromName);
                    oSystem.SetValue_FormFunction("ShareContentFormData_sFromEmail", _rec.sFromEmail);
                    oSystem.SetValue_FormFunction("ShareContentFormData_sFromCellPhone", _rec.sFromCellPhone);
                    oSystem.SetValue_FormFunction("ShareContentFormData_sToEmails", _rec.sToEmails);
                    oSystem.SetValue_FormFunction("ShareContentFormData_sToCellPhones", _rec.sToCellPhones);
                    oSystem.SetValue_FormFunction("ShareContentFormData_URI", _rec.URI);
                    oSystem.SetValue_FormFunction("ShareContentFormData_URL", _rec.URL);
                    oSystem.SetValue_FormFunction("ShareContentFormData_ThumbNailImage", _rec.ThumbNailImage);
                    oSystem.SetValue_FormFunction("ShareContentFormData_IsImage", _rec.IsImage.ToString());
                    oSystem.SetValue_FormFunction("ShareContentFormData_ErrorMessage", _rec.ErrorMessage);
                    oSystem.SetValue_FormFunction("ShareContentFormData_ErrorPageURL", _rec.ErrorPageURL);
                    oSystem.SetValue_FormFunction("ShareContentFormData_SuccessPageURL", _rec.SuccessPageURL);
                    oSystem.SetValue_FormFunction("ShareContentFormData_SourceForm", _rec.SourceForm);
                    oSystem.SetValue_FormFunction("ShareContentFormData_IsCMSForm", _rec.IsCMSForm);
                    oSystem.SetValue_FormFunction("ShareContentFormData_DebugFormResponseMessage", _rec.DebugFormResponseMessage);


                    bool bValidationError = false;
                    #region Validation

                    if (String.IsNullOrEmpty(_rec.sSubject))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide a proper Subject. <br />";
                    }
                    if (String.IsNullOrEmpty(_rec.sMessage))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide a proper Message Body. <br />";
                    }
                    if (String.IsNullOrEmpty(_rec.sFromName))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide a proper from Name. <br />";
                    }
                    if ((String.IsNullOrEmpty(_rec.sFromEmail)) && (String.IsNullOrEmpty(_rec.sFromCellPhone)))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide a proper Email or Cell Phone to send From. <br />";
                    }
                    if ((String.IsNullOrEmpty(_rec.sToEmails)) && (String.IsNullOrEmpty(_rec.sToCellPhones)))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide a proper Emails or Cell Phones to send to. <br />";
                    }

                    if (String.IsNullOrEmpty(_rec.URL))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide proper URL link to share. <br />";
                    }
                    #endregion

                    if (bValidationError == false)
                    {
                        DINT_UserShareEvents odbUserShareEvents = new DINT_UserShareEvents(oSystem.cnCon);

                        string[] sToEmails = _rec.sToEmails.Split(',');
                        string[] sToCellPhones = _rec.sToCellPhones.Split(',');

                        #region Send Out Emails
                        try
                        {
                            foreach (string sTE in sToEmails)
                            {
                                AriesCMSDefinition.DEF_UserShareEvents.RecordObject rec_UserShareEvents = new DEF_UserShareEvents.RecordObject();

                                rec_UserShareEvents.iParentID = oSystem.CurrentUser.UserView.User.ID;
                                rec_UserShareEvents.sParentID = oSystem.CurrentUser.UserView.User.sUserName;
                                rec_UserShareEvents.sControl = Guid.NewGuid().ToString();
                                rec_UserShareEvents.dtDateCreated = DateTime.Now;
                                rec_UserShareEvents.dtLastUpdated = DateTime.Now;
                                rec_UserShareEvents.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                                rec_UserShareEvents.sCreatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                                rec_UserShareEvents.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                                rec_UserShareEvents.sUpdatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                                rec_UserShareEvents.sSubject = _rec.sSubject;
                                rec_UserShareEvents.sTitle = _rec.sSubject;
                                rec_UserShareEvents.sMessage = _rec.sMessage;
                                rec_UserShareEvents.sHTTPx = oSystem.VisitorHTTPValues.ToString();
                                rec_UserShareEvents.sIP = oSystem.VisitorHTTPValues.VisitorIPAddress();
                                rec_UserShareEvents.sOther = "";
                                rec_UserShareEvents.iFromID = 0;
                                rec_UserShareEvents.sFromID = "";
                                rec_UserShareEvents.sCcID = "";
                                rec_UserShareEvents.sCc = "";
                                rec_UserShareEvents.sBCcID = "";
                                rec_UserShareEvents.sBCc = "";
                                rec_UserShareEvents.sAttachements = "";
                                rec_UserShareEvents.sToEmail = sTE;
                                rec_UserShareEvents.sToPhone = "";


                                odbUserShareEvents.Insert_SQL(rec_UserShareEvents);

                                oSystem.SendMessage(_rec.sFromEmail, _rec.sFromName, sTE, "", _rec.sSubject, _rec.sMessage);
                            }
                        }
                        catch
                        {

                        }
                        #endregion

                        #region Send out SMS Messages To Cell Phones
                        try
                        {
                            foreach (string sTCP in sToCellPhones)
                            {
                                AriesCMSDefinition.DEF_UserShareEvents.RecordObject rec_UserShareEvents = new DEF_UserShareEvents.RecordObject();

                                rec_UserShareEvents.iParentID = oSystem.CurrentUser.UserView.User.ID;
                                rec_UserShareEvents.sParentID = oSystem.CurrentUser.UserView.User.sUserName;
                                rec_UserShareEvents.sControl = Guid.NewGuid().ToString();
                                rec_UserShareEvents.dtDateCreated = DateTime.Now;
                                rec_UserShareEvents.dtLastUpdated = DateTime.Now;
                                rec_UserShareEvents.iCreatedByID = oSystem.CurrentUser.UserView.User.ID;
                                rec_UserShareEvents.sCreatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                                rec_UserShareEvents.iUpdatedByID = oSystem.CurrentUser.UserView.User.ID;
                                rec_UserShareEvents.sUpdatedByID = oSystem.CurrentUser.UserView.User.sUserName;
                                rec_UserShareEvents.sSubject = _rec.sSubject;
                                rec_UserShareEvents.sTitle = _rec.sSubject;
                                rec_UserShareEvents.sMessage = _rec.sMessage;
                                rec_UserShareEvents.sHTTPx = oSystem.VisitorHTTPValues.ToString();
                                rec_UserShareEvents.sIP = oSystem.VisitorHTTPValues.VisitorIPAddress();
                                rec_UserShareEvents.sOther = "";
                                rec_UserShareEvents.iFromID = 0;
                                rec_UserShareEvents.sFromID = "";
                                rec_UserShareEvents.sCcID = "";
                                rec_UserShareEvents.sCc = "";
                                rec_UserShareEvents.sBCcID = "";
                                rec_UserShareEvents.sBCc = "";
                                rec_UserShareEvents.sAttachements = "";
                                rec_UserShareEvents.sToEmail = "";
                                rec_UserShareEvents.sToPhone = sTCP;


                                odbUserShareEvents.Insert_SQL(rec_UserShareEvents);

                                oSystem.Send_SMS_Message(_rec.sFromEmail, _rec.sFromName, sTCP, "", _rec.sSubject, _rec.sMessage);
                            }
                        }
                        catch
                        {

                        }
                        #endregion

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

                string sPageTitle = "Share A Page";
                string sPageName = "Share A Page";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Share A Page";
                string sKeyWords = "Share A Page Form - Share A Page Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_SharePage, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.ShareContentFormData = _rec;


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


        string _ViewFile_NewsLetterSignUpPage = "~/views/localview/inc_NewsLetterRegistraition.cshtml";
        [HttpPost]
        public ActionResult SubmitNewsLetterSignUp(FormCollection fc, AriesCMS.Models.NewNewsLetter _rec)
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
                else if (String.IsNullOrEmpty(_rec.EMail))
                {
                    bBuildModelViaFormObjects = true;
                }

                if (bBuildModelViaFormObjects == true)
                {
                    if (fc != null)
                    {
                        _rec = new Models.NewNewsLetter();
                        if (fc.Count > 0)
                        {
                            #region Translate Form Objects To Data Model Objects
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_FirstName"] != null)
                                {
                                    _rec.FirstName = Request.Form["NewNewsLetterFormData_FirstName"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.FirstName"] != null)
                                {
                                    _rec.FirstName = Request.Form["NewNewsLetterFormData.FirstName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_LastName"] != null)
                                {
                                    _rec.LastName = Request.Form["NewNewsLetterFormData_LastName"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.LastName"] != null)
                                {
                                    _rec.LastName = Request.Form["NewNewsLetterFormData.LastName"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_EMail"] != null)
                                {
                                    _rec.EMail = Request.Form["NewNewsLetterFormData_EMail"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.EMail"] != null)
                                {
                                    _rec.EMail = Request.Form["NewNewsLetterFormData.EMail"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_OptingInMail"] != null)
                                {
                                    _rec.OptingInMail = System.Convert.ToBoolean(Request.Form["NewNewsLetterFormData_OptingInMail"].ToString());
                                }
                                else if (Request.Form["NewNewsLetterFormData.OptingInMail"] != null)
                                {
                                    _rec.OptingInMail = System.Convert.ToBoolean(Request.Form["NewNewsLetterFormData.OptingInMail"].ToString());
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_TrackingCode"] != null)
                                {
                                    _rec.TrackingCode = Request.Form["NewNewsLetterFormData_TrackingCode"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.TrackingCode"] != null)
                                {
                                    _rec.TrackingCode = Request.Form["NewNewsLetterFormData.TrackingCode"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_HTTPLog"] != null)
                                {
                                    _rec.HTTPLog = Request.Form["NewNewsLetterFormData_HTTPLog"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.HTTPLog"] != null)
                                {
                                    _rec.HTTPLog = Request.Form["NewNewsLetterFormData.HTTPLog"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["NewNewsLetterFormData_ErrorMessage"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.ErrorMessage"] != null)
                                {
                                    _rec.ErrorMessage = Request.Form["NewNewsLetterFormData.ErrorMessage"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["NewNewsLetterFormData_ErrorPageURL"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.ErrorPageURL"] != null)
                                {
                                    _rec.ErrorPageURL = Request.Form["NewNewsLetterFormData.ErrorPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["NewNewsLetterFormData_SuccessPageURL"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.SuccessPageURL"] != null)
                                {
                                    _rec.SuccessPageURL = Request.Form["NewNewsLetterFormData.SuccessPageURL"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["NewNewsLetterFormData_SourceForm"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.SourceForm"] != null)
                                {
                                    _rec.SourceForm = Request.Form["NewNewsLetterFormData.SourceForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["NewNewsLetterFormData_IsCMSForm"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.IsCMSForm"] != null)
                                {
                                    _rec.IsCMSForm = Request.Form["NewNewsLetterFormData.IsCMSForm"].ToString();
                                }
                            }
                            catch
                            {
                            }
                            try
                            {
                                if (Request.Form["NewNewsLetterFormData_DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["NewNewsLetterFormData_DebugFormResponseMessage"].ToString();
                                }
                                else if (Request.Form["NewNewsLetterFormData.DebugFormResponseMessage"] != null)
                                {
                                    _rec.DebugFormResponseMessage = Request.Form["NewNewsLetterFormData.DebugFormResponseMessage"].ToString();
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
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_FirstName", _rec.FirstName);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_LastName", _rec.LastName);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_EMail", _rec.EMail);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_OptingInMail", _rec.OptingInMail.ToString());
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_TrackingCode", _rec.TrackingCode);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_HTTPLog", _rec.HTTPLog);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_ErrorMessage", _rec.ErrorMessage);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_ErrorPageURL", _rec.ErrorPageURL);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_SuccessPageURL", _rec.SuccessPageURL);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_SourceForm", _rec.SourceForm);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_IsCMSForm", _rec.IsCMSForm);
                    oSystem.SetValue_FormFunction("NewNewsLetterFormData_DebugFormResponseMessage", _rec.DebugFormResponseMessage);

                    bool bValidationError = false;
                    #region Validation
                    AriesCMS.Helpers.GlobalValidation oValidation = new Helpers.GlobalValidation();
                    if (oValidation.IsValidEmail(_rec.EMail))
                    {
                        bValidationError = true;
                        sErrorMessage += " Please provide a proper Email. <br />";
                    }
                    #endregion

                    if (bValidationError == false)
                    {
                        string sSubject = "Web Site News Letter Sign Up";
                        string sMessage = "";
                        sMessage += "Contact requesting To Be Signed Up For News Letter: " + "<br/>";
                        sMessage += "First Name: " + _rec.FirstName + "\r\n" + "<br/>";
                        sMessage += "Last name: " + _rec.LastName + "\r\n" + "<br/>";
                        sMessage += "EMail: " + _rec.EMail + "\r\n" + "<br/>";
                        sMessage += "HTML Log: " + _rec.HTTPLog + "\r\n" + "<br/>";

                        oSystem.SendMessage("info@yourdomain.com", "Web Site", "info@yourdomain.com", "Web Site", sSubject, sMessage);

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
                        rec_WebSite_Leads.bOptInMarketing = true;

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

                        rec_WebSite_Leads.sEventLog = sMessage;
                        rec_WebSite_Leads.sNotes = _rec.HTTPLog;


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

                string sPageTitle = "Sign Up For Our News Letter";
                string sPageName = "Sign Up For Our News Letter";
                string sMetaTags = "<meta name=" + "\"" + "ROBOTS" + "\"" + " content=" + "\"" + "INDEX,FOLLOW" + "\"" + " />";
                string sClassification = "";
                string sPageDescription = "Sign Up For Our News Letter";
                string sKeyWords = "Sign Up For Our News Letter Form - Sign Up For Our News Letter Information";



                oPage = oPageBuilder.BuildPage(oSystem, oPage, _igBaseTemplateID, _igBaseTemplatePageID, sPageTitle, sPageName, sClassification, sPageDescription, sKeyWords, sMetaTags,
                    _igBaseTemplatePageZoneID, _ViewFile_NewsLetterSignUpPage, "", oResponse);

                if (oPageBuilder.ProcessErrorResult == false)
                {
                    //Check that the tempalate is not null and set it's file location to the ViewBag used to load it
                    if (oPage.WebSitePageTemplates != null)
                    {
                        ViewBag.MasterLayout = oPage.WebSitePageTemplates.sLocationURI;
                    }

                    oSystem.NewNewsLetterFormData = _rec;


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




        public bool SendUserValidationMessage(string _sName, string _sEmail, string _sCode)
        {
            string _sErrorMessage = "";
            try
            {
                if (_sEmail != "")
                {

                    string sFromEmail = "support@ariestco.com";
                    string sFromName = "User Verification";

                    sFromEmail = "support@ariestco.com";
                    sFromName = "User Verification";


                    string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
                    string sMessage = "";
                    string sSubject = "Web Site User Authentication";

                    sMessage += "Verify your registration " + "<br/>";
                    sMessage += "Name: " + _sName + "\r\n" + "<br/>";
                    sMessage += "EMail: " + _sEmail + "\r\n" + "<br/>";
                    sMessage += "Click <a href=" + "\"" + sBaseULR + "/confirm?code=" + _sCode + "\"" + " >here</a>" + "\r\n" + "<br/>";

                    oSystem.SendMessage(sFromEmail, sFromName, _sEmail, _sName, sSubject, sMessage);
                    return true;
                }
                else
                {
                    _sErrorMessage = "Email can not be blank!";
                    return false;
                }
            }
            catch (Exception s)
            {
                _sErrorMessage += s.ToString();
                return false;
            }
            return false;
        }


    }
    

    public partial class RestServiceController : Controller
    {
        //string _sViewToLoad = "";
        //AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();

        public void Set_CustomViewBag_UserInfo()
        {
            try
            {


                if (oSystem.CurrentUser.AuthenticatedUser == true)
                {

                }
                else
                {


                }
            }
            catch
            {
            }
        }
        public void Set_CustomViewBag_UserInfo_Defaults()
        {
            try
            {



            }
            catch
            {
            }
        }

        public void Set_CustomViewBag_Global()
        {
            try
            {

            }
            catch
            {
            }
        }
        public void Set_CustomViewBag_Global_Defaults()
        {
            try
            {

            }
            catch
            {
            }
        }
        



        [HttpPost]
        public JsonResult CRecoverProfile(string _EMail, string _FirstName, string _LastName)
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

        public bool SendUserValidationMessage(string _sName, string _sEmail, string _sCode)
        {
            string _sErrorMessage = "";
            try
            {
                if (_sEmail != "")
                {

                    string sFromEmail = "support@ariestco.com";
                    string sFromName = "User Verification";

                    sFromEmail = "support@ariestco.com";
                    sFromName = "User Verification";


                    string sBaseULR = HttpContext.Request.Url.Scheme + "://" + HttpContext.Request.Url.Authority + "/";
                    string sMessage = "";
                    string sSubject = "Web Site User Authentication";

                    sMessage += "Verify your registration " + "<br/>";
                    sMessage += "Name: " + _sName + "\r\n" + "<br/>";
                    sMessage += "EMail: " + _sEmail + "\r\n" + "<br/>";
                    sMessage += "Click <a href=" + "\"" + sBaseULR + "/confirm?code=" + _sCode + "\"" + " >here</a>" + "\r\n" + "<br/>";

                    oSystem.SendMessage(sFromEmail, sFromName, _sEmail, _sName, sSubject, sMessage);
                    return true;
                }
                else
                {
                    _sErrorMessage = "Email can not be blank!";
                    return false;
                }
            }
            catch (Exception s)
            {
                _sErrorMessage += s.ToString();
                return false;
            }
            return false;
        }

    }

    public partial class UnsubscribeController : Controller
    {
        //string _sViewToLoad = "";
        //AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //// GET: Unsubscribe

    }


}