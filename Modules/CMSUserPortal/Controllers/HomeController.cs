
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


namespace AriesCMS.Modules.CMSUserPortal.Controllers
{
    public partial class HomeController : Controller
    {
        ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();
        //
        // GET: /Default/
        string sModuleBase = "~/Modules/CMSUserPortal";
        string sBasePage = "/Views/Screens/Index.cshtml";
        string _sViewToLoad = "";
        AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        int[] iAccessRolesAllowed = new int[5] { 1, 2, 3, 4, 5 };




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
                ViewBag.bAccountInuse = false;

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

        public void Set_ViewBag_Global()
        {
            try
            {
                ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;
                ViewBag.sPageViewsByMonth = "0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0";
                ViewBag.sPagesViewedByMonth = "";

                ViewBag.sSiteVisits = "0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0";
                ViewBag.MasterLayout = oSystem.rsGlobalVeriables.MasterDefaultLayout;

                Set_CustomViewBag_Global();

            }
            catch
            {
            }
        }
        public void Set_ViewBag_Global_Defaults()
        {
            try
            {
                ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;
                ViewBag.sPageViewsByMonth = "0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0";
                ViewBag.sPagesViewedByMonth = "";

                ViewBag.sSiteVisits = "0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0";
                ViewBag.MasterLayout = oSystem.rsGlobalVeriables.MasterDefaultLayout;

                Set_CustomViewBag_Global_Defaults();

            }
            catch
            {
            }
        }


        public void Set_Client_NavSettings(string _Function)
        {
            try
            {
                string sPanel_Dashboard = "0";
                string sPanel_ContentManagement = "1";
                string sPanel_Reports = "2";
                string sPanel_Blogging = "3";
                string sPanel_Appearance = "4";
                string sPanel_SystemManagement = "5";


                if (!String.IsNullOrEmpty(_Function))
                {
                    switch (_Function)
                    {
                        #region defaul nav
                        case "Index":
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                        case "AdminTestRegistration":
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                        case "UserLogIn":
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                        case "UserLogOff":
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                        case "EditMyProfile":
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                        case "ProfileUpdate":
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                        case "FilesManager_ListPop":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "FilesManager_List":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "UploadFiles":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "GetDirectoryFilesView":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "Countries_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Countries_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Countries_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Countries_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Countries_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "CountryLanguages_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "CountryLanguages_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "CountryLanguages_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "CountryLanguages_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "CountryLanguages_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "States_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "States_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "States_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "States_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "States_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemMaster_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemMaster_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemMaster_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemMaster_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemMaster_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemModules_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemModules_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemModules_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemModules_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "SystemModules_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UserRoles_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UserRoles_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UserRoles_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UserRoles_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UserRoles_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Users_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Users_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Users_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Users_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Users_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersAltAuth_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersAltAuth_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersAltAuth_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersAltAuth_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersAltAuth_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersProperties_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersProperties_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersProperties_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersProperties_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "UsersProperties_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSite_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSite_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSite_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSite_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSite_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteBlog_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlog_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlog_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlog_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlog_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogComments_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogComments_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogComments_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogComments_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogComments_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogCommentsProperties_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogCommentsProperties_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogCommentsProperties_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogCommentsProperties_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogCommentsProperties_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntry_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntry_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntry_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntry_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntry_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryProperties_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryProperties_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryProperties_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryProperties_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryProperties_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogProperties_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogProperties_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogProperties_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogProperties_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogProperties_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteEvents_List":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "WebSiteEvents_Details":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "WebSiteEvents_Create":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "WebSiteEvents_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "WebSiteEvents_Delete":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "WebSiteExtAppIntegrationSettings_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteExtAppIntegrationSettings_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteExtAppIntegrationSettings_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteExtAppIntegrationSettings_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteExtAppIntegrationSettings_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteModules_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteModules_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteModules_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteModules_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteModules_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteNavigation_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigation_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigation_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigation_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigation_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePage_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePage_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePage_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePage_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePage_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageProperties_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageProperties_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageProperties_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageProperties_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageProperties_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageRoles_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageRoles_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageRoles_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageRoles_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageRoles_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageTemplates_List":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplates_Details":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplates_Create":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplates_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplates_Delete":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplatesPage_List":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplatesPage_Details":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplatesPage_Create":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplatesPage_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplatesPage_Delete":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZones_List":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZones_Details":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZones_Create":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZones_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZones_Delete":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageZoneContent_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZoneContent_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZoneContent_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZoneContent_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZoneContent_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteProperties_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteProperties_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteProperties_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteProperties_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteProperties_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreenRoles_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreenRoles_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreenRoles_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreenRoles_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreenRoles_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreen_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreen_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreen_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreen_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteScreen_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteRole_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteRole_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteRole_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteRole_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteRole_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteNavigationRoles_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigationRoles_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigationRoles_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigationRoles_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteNavigationRoles_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSiteBlogRoles_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogRoles_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogRoles_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogRoles_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogRoles_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryRole_List":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryRole_Details":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryRole_Create":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryRole_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSiteBlogEntryRole_Delete":
                            Session["_NavNodeIndex"] = sPanel_Blogging;
                            ViewBag.iActiveNode = sPanel_Blogging;
                            break;
                        case "WebSitePageZone_List":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZone_Details":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZone_Create":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZone_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageZone_Delete":
                            Session["_NavNodeIndex"] = sPanel_ContentManagement;
                            ViewBag.iActiveNode = sPanel_ContentManagement;
                            break;
                        case "WebSitePageTemplateZonesContent_List":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZonesContent_Details":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZonesContent_Create":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZonesContent_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "WebSitePageTemplateZonesContent_Delete":
                            Session["_NavNodeIndex"] = sPanel_Appearance;
                            ViewBag.iActiveNode = sPanel_Appearance;
                            break;
                        case "Roles_Access_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Access_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Access_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Access_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "Roles_Access_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteIPFilters_List":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteIPFilters_Details":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteIPFilters_Create":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteIPFilters_AddUpdate":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "WebSiteIPFilters_Delete":
                            Session["_NavNodeIndex"] = sPanel_SystemManagement;
                            ViewBag.iActiveNode = sPanel_SystemManagement;
                            break;
                        case "ReportOverview":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "ReportRefferalURLs":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "ReportRptSiteVisitors":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        case "ReportRptHitStatistics":
                            Session["_NavNodeIndex"] = sPanel_Reports;
                            ViewBag.iActiveNode = sPanel_Reports;
                            break;
                        #endregion
                        default:
                            Session["_NavNodeIndex"] = sPanel_Dashboard;
                            ViewBag.iActiveNode = sPanel_Dashboard;
                            break;
                    }

                    Set_CustomClient_NavSettings(_Function);
                }
            }
            catch
            {

            }
        }


        public ActionResult Index()
        {
            Set_Client_NavSettings("Index");
            Set_ViewBag_UserInfo_Defaults();
            Set_ViewBag_Global_Defaults();
            oSystem.OpenDataConnection();

            if (oSystem.GetCurrentUser())
            {
                if (oSystem.CurrentUser != null)
                {
                    if (oSystem.CurrentUser.UserView.UserLoggedIn == true)
                    {
                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                        {
                            Set_ViewBag_UserInfo();
                            oPage.DataModelsPrimary = oSystem;
                            oPage.DataModelsSub.Add(oSystem);
                            oPage.AuthenticatedUser = true;
                            oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Dashboard/UserDashboard.cshtml";
                        }
                        else
                        {
                            ACMSDBView.UserAuthentication oUserAuth = new ACMSDBView.UserAuthentication();
                            oPage.DataModelsPrimary = oUserAuth;
                            oPage.DataModelsSub.Add(oSystem);
                            oPage.AuthenticatedUser = false;
                            oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                        }
                    }
                    else
                    {
                        ACMSDBView.UserAuthentication oUserAuth = new ACMSDBView.UserAuthentication();
                        oPage.DataModelsPrimary = oUserAuth;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = false;
                        oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                    }
                }
                else
                {
                    ACMSDBView.UserAuthentication oUserAuth = new ACMSDBView.UserAuthentication();
                    oPage.DataModelsPrimary = oUserAuth;
                    oPage.DataModelsSub.Add(oSystem);
                    oPage.AuthenticatedUser = false;
                    oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                }
            }
            else
            {
                ACMSDBView.UserAuthentication oUserAuth = new ACMSDBView.UserAuthentication();
                oPage.DataModelsPrimary = oUserAuth;
                oPage.DataModelsSub.Add(oSystem);
                oPage.AuthenticatedUser = false;
                oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
            }
            oSystem.CloseDataConnection();//Forms
            return View(sModuleBase + sBasePage, oPage);
        }
        

        [HttpPost]
        public ActionResult UserLogIn(ACMSDBView.UserAuthentication oUserAuth)
        {
            Set_Client_NavSettings("UserLogIn");
            Set_ViewBag_UserInfo_Defaults();
            Set_ViewBag_Global_Defaults();
            if (oUserAuth != null)
            {
                if (!String.IsNullOrEmpty(oUserAuth.UserName))
                {
                    if (!String.IsNullOrEmpty(oUserAuth.Password))
                    {
                        oSystem.OpenDataConnection();

                        if (oSystem.cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                        {
                            oSystem.CurrentUser = new ACMSUser.UserSecurity(oSystem.cnCon);
                            if (oSystem.CurrentUser.LogIn(oUserAuth, oSystem.rsGlobalVeriables))
                            {
                                if(oSystem.CurrentUser.UserView.User.bAccLocked == false)
                                {
                                    oSystem.SetCurrentUser();
                                    if (oSystem.CurrentUser.UserView.User.bCurrentlyLoggedIn == false)
                                    {
                                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                                        {
                                            if (oUserAuth.SaveLogIn)
                                            {
                                                oSystem.SaveLogIn();
                                            }
                                            oSystem.SetUserLoggedIn();
                                            Session["_LogInSessionID"] = oSystem.CurrentUser.UserView.User.sCurrentSession;

                                            oUserAuth.AccessGranted = true;

                                            Set_ViewBag_Global();
                                            Set_ViewBag_UserInfo();

                                            oPage.DataModelsPrimary = oSystem;
                                            oPage.DataModelsSub.Add(oSystem);
                                            oPage.AuthenticatedUser = true;
                                            oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Dashboard/UserDashboard.cshtml";

                                        }
                                        else
                                        {
                                            ViewBag.sResponseMessage = "Sorry you don't have access to this area, please contact your administrator for help!";
                                            oPage.DataModelsPrimary = oUserAuth;
                                            oPage.DataModelsSub.Add(oSystem);
                                            oPage.AuthenticatedUser = true;
                                            ViewBag.bLoginError = true;
                                            oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                                        }
                                    }
                                    else
                                    {
                                        oSystem.CurrentUser.AuthenticatedUser = false;
                                        oSystem.CurrentUser.UserView.UserLoggedIn = false;
                                        //oSystem.CurrentUser.UserView.User.ID = 0;

                                        ViewBag.bAccountInuse = true;
                                        ViewBag.sResponseMessage = "Sorry Your Account Is In Use, Only One Log In Instance Is Allowed!";
                                        oPage.DataModelsPrimary = oUserAuth;
                                        oPage.DataModelsSub.Add(oSystem);
                                        oPage.AuthenticatedUser = true;
                                        ViewBag.bLoginError = true;
                                        oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                                    }
                                }
                                else
                                {
                                    ViewBag.sResponseMessage = "Sorry Your Account Is Currently Locked Out, Please Contact The Site Administrator For Assistance!";
                                    oPage.DataModelsPrimary = oUserAuth;
                                    oPage.DataModelsSub.Add(oSystem);
                                    oPage.AuthenticatedUser = true;
                                    ViewBag.bLoginError = true;
                                    oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                                }
                            }
                            else
                            {
                                ViewBag.sResponseMessage = "Sorry I could not match your credentials!";
                                oPage.DataModelsPrimary = oUserAuth;
                                oPage.DataModelsSub.Add(oSystem);
                                oPage.AuthenticatedUser = true;
                                ViewBag.bLoginError = true;
                                oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                            }

                            oSystem.CloseDataConnection();
                        }
                        else
                        {
                            RedirectToAction("ErrorPage");
                        }
                    }
                    else
                    {
                        ViewBag.sPassword = "Invalid password!";
                        oPage.DataModelsPrimary = oUserAuth;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        ViewBag.bLoginError = true;
                        oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                    }
                }
                else
                {
                    ViewBag.sUserName = "Invalid user name!";
                    oPage.DataModelsPrimary = oUserAuth;
                    oPage.DataModelsSub.Add(oSystem);
                    oPage.AuthenticatedUser = true;
                    ViewBag.bLoginError = true;
                    oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
                }
            }
            else
            {
                ViewBag.sResponseMessage = "Please enter a valid user name and password!";
                oPage.DataModelsPrimary = oUserAuth;
                oPage.DataModelsSub.Add(oSystem);
                oPage.AuthenticatedUser = true;
                ViewBag.bLoginError = true;
                oPage.PartialViewToLoad = "~/Modules/CMSUserPortal/Views/Authentication/UserLogIn.cshtml";
            }

            oSystem.CloseDataConnection();

            return View(sModuleBase + sBasePage, oPage);
        }

        public ActionResult UserLogOff()
        {
            Set_Client_NavSettings("UserLogOff");

            oSystem.OpenDataConnection();
            Set_ViewBag_UserInfo_Defaults();
            Set_ViewBag_Global_Defaults();

            oSystem.GetCurrentUser();

            oSystem.SetUserLoggedOff();

            #region
            try
            {
                Session["_iUserID"] = "";
            }
            catch
            {

            }
            try
            {
                Session["_sUserAccessKey"] = "";
            }
            catch
            {

            }
            try
            {
                Session["_LogInSessionID"] = "";
            }
            catch
            {

            }
            #endregion
            oSystem.CurrentUser = null;

            oSystem.CloseDataConnection();

            ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
            oPage.DataModelsPrimary = oUserAuth;
            oPage.DataModelsSub.Add(oSystem);
            oPage.AuthenticatedUser = true;
            oPage.PartialViewToLoad = sModuleBase + "/Views/Authentication/UserLogIn.cshtml";
            oSystem.CloseDataConnection();//Forms
            return View(sModuleBase + sBasePage, oPage);

        }
        public ActionResult UserLogOffAllInstances()
        {
            Set_Client_NavSettings("UserLogOff");

            oSystem.OpenDataConnection();
            Set_ViewBag_UserInfo_Defaults();
            Set_ViewBag_Global_Defaults();

            oSystem.GetCurrentUser();
            
            oSystem.SetUserLoggedOff();

            #region
            try
            {
                Session["_iUserID"] = "";
            }
            catch
            {

            }
            try
            {
                Session["_sUserAccessKey"] = "";
            }
            catch
            {

            }
            try
            {
                Session["_LogInSessionID"] = "";
            }
            catch
            {

            }
            #endregion

            oSystem.CurrentUser = null;

            oSystem.CloseDataConnection();

            ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
            oPage.DataModelsPrimary = oUserAuth;
            oPage.DataModelsSub.Add(oSystem);
            oPage.AuthenticatedUser = true;
            oPage.PartialViewToLoad = sModuleBase + "/Views/Authentication/UserLogIn.cshtml";
            oSystem.CloseDataConnection();//Forms
            return View(sModuleBase + sBasePage, oPage);

        }

        public ActionResult EditMyProfile()
        {
            Set_Client_NavSettings("EditMyProfile");
            //string sView = Request.UrlReferrer.ToString();
            oSystem.OpenDataConnection();
            Set_ViewBag_UserInfo_Defaults();
            Set_ViewBag_Global_Defaults();

            if (oSystem.GetCurrentUser())
            {
                if (oSystem.CurrentUser != null)
                {
                    Set_ViewBag_UserInfo();

                    if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                    {
                        Set_ViewBag_UserInfo();
                        Set_ViewBag_Global();

                        ACMSDBView.UserViewModel recRecord = new UserViewModel(oSystem.cnCon);
                        recRecord.User = oSystem.CurrentUser.UserView.User;
                        recRecord.CurrentPassword = oSystem.CurrentUser.UserView.User.sPassword;

                        recRecord.GetUserProperties(oSystem.cnCon, oSystem.CurrentUser.UserView.User.ID);
                        recRecord.Get_Roles(oSystem.cnCon);
                        recRecord.Get_States(oSystem.cnCon);

                        ViewBag.iParentID = recRecord.User.iParentID;
                        ViewBag.sParentID = recRecord.User.sParentID;

                        oSystem.CloseDataConnection();

                        oPage.DataModelsPrimary = recRecord;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        oPage.PartialViewToLoad = sModuleBase + "/Views/Forms/UserProfileEditor.cshtml";
                        oSystem.CloseDataConnection();//Forms
                        return View(sModuleBase + sBasePage, oPage);

                    }
                    else
                    {
                        ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                        oPage.DataModelsPrimary = oUserAuth;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        oPage.PartialViewToLoad = sModuleBase + "/Views/Forms/UserProfileEditor.cshtml";
                        oSystem.CloseDataConnection();//Forms
                        return View(sModuleBase + sBasePage, oPage);
                    }
                }
                else
                {
                    ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                    oPage.DataModelsPrimary = oUserAuth;
                    oPage.DataModelsSub.Add(oSystem);
                    oPage.AuthenticatedUser = true;
                    oPage.PartialViewToLoad = sModuleBase + "/Views/Forms/UserProfileEditor.cshtml";
                    oSystem.CloseDataConnection();//Forms
                    return View(sModuleBase + sBasePage, oPage);
                }
            }
            else
            {
                ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                oPage.DataModelsPrimary = oUserAuth;
                oPage.DataModelsSub.Add(oSystem);
                oPage.AuthenticatedUser = true;
                oPage.PartialViewToLoad = sModuleBase + "/Views/Forms/UserProfileEditor.cshtml";
                oSystem.CloseDataConnection();//Forms
                return View(sModuleBase + sBasePage, oPage);
            }

        }

        [HttpPost]
        public ActionResult ProfileUpdate(ACMSDBView.UserViewModel _rec)
        {
            Set_Client_NavSettings("ProfileUpdate");
            Set_ViewBag_Global_Defaults();
            Set_ViewBag_UserInfo_Defaults();

            if (oSystem.GetCurrentUser())
            {
                ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    Set_ViewBag_Global();
                    Set_ViewBag_UserInfo();

                    string sLocalDefaultView = sModuleBase + "/Views/Forms/UserProfileEditor.cshtml";
                    #region If View is not set try to get it
                    if (String.IsNullOrEmpty(_sViewToLoad))
                    {
                        if (Session["_sViewDetails"] != null)
                        {
                            _sViewToLoad = Session["_sViewDetails"].ToString();
                        }
                        else
                        {
                            _sViewToLoad = sLocalDefaultView;
                        }
                    }
                    #endregion
                    if (_rec != null)
                    {
                        if (ModelState.IsValid)
                        {
                            ViewBag.iParentID = _rec.User.iParentID;
                            ViewBag.sParentID = _rec.User.sParentID;

                            if (_rec.User.ID > 0)
                            {
                                #region
                                ViewBag.bError = false;
                                ViewBag.bAddNew = false;
                                ViewBag.bSaved = true;
                                ViewBag.sErrorMessage = "";
                                oSystem.OpenDataConnection();

                                if (String.IsNullOrEmpty(_rec.User.sPassword))
                                {
                                    _rec.User.sPassword = _rec.CurrentPassword;
                                }
                                else
                                {
                                    _rec.User.sPassword = oSystem.rsGlobalVeriables.oEncryption.Encrypt(_rec.User.sPassword);
                                    _rec.CurrentPassword = _rec.User.sPassword;
                                }

                                DINT_Users dbInteraction = new DINT_Users(oSystem.cnCon);

                                _rec.User.dtLastUpdated = DateTime.Now;

                                dbInteraction.Update_SQL(_rec.User);

                                _rec.Get_Roles(oSystem.cnCon);
                                _rec.Get_States(oSystem.cnCon);

                                oSystem.CloseDataConnection();
                                #endregion

                                oPage.DataModelsPrimary = _rec;
                                oPage.DataModelsSub.Add(oSystem);
                                oPage.AuthenticatedUser = true;
                                oPage.PartialViewToLoad = _sViewToLoad;

                                return View(sModuleBase + sBasePage, oPage);
                            }
                            else
                            {
                                ViewBag.bError = true;
                                ViewBag.sErrorMessage = "Please fill out the form completely, before re-submitting it.";


                                oPage.DataModelsPrimary = _rec;
                                oPage.DataModelsSub.Add(oSystem);
                                oPage.AuthenticatedUser = true;
                                oPage.PartialViewToLoad = _sViewToLoad;
                                oSystem.CloseDataConnection();//Forms
                                return View(sModuleBase + sBasePage, oPage);
                            }
                        }
                        else
                        {
                            ViewBag.bError = true;
                            ViewBag.sErrorMessage = "Please fill out the form completely, before re-submitting it.";

                            oPage.DataModelsPrimary = _rec;
                            oPage.DataModelsSub.Add(oSystem);
                            oPage.AuthenticatedUser = true;
                            oPage.PartialViewToLoad = _sViewToLoad;
                            oSystem.CloseDataConnection();//Forms

                            return View(sModuleBase + sBasePage, oPage);
                        }
                    }
                    else
                    {
                        ViewBag.bError = true;
                        ViewBag.sErrorMessage = "Please fill out the form completely, before re-submitting it.";

                        oPage.DataModelsPrimary = _rec;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        oPage.PartialViewToLoad = _sViewToLoad;
                        oSystem.CloseDataConnection();//Forms
                        return View(sModuleBase + sBasePage, oPage);
                    }
                }
                else
                {
                    oSystem.CloseDataConnection();//Forms
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                oSystem.CloseDataConnection();//Forms
                return RedirectToAction("Index");
            }
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
                        Set_ViewBag_Global();
                        Set_ViewBag_UserInfo();

                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
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
                        Set_ViewBag_Global();
                        Set_ViewBag_UserInfo();

                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
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
                        Set_ViewBag_Global();
                        Set_ViewBag_UserInfo();

                        if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
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



        #region ACM View Maps
        string sFileManagerList = "/views/Screens/FileMangerPop.cshtml";
        string sFileManagerFileLists = "/views/Forms/FileMangerPop.cshtml";
        string sWebSiteBlogComments_Details = "/views/Forms/WebSiteBlogComments_Details.cshtml";
        string sWebSiteBlogComments_List = "/views/Forms/WebSiteBlogComments_List.cshtml";
        #endregion

        #region Form Actions

        #region FileManager
        string sFileUploadResults = "";
        public ActionResult FilesManager_List(string sMessage)
        {

            string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
            string sRootPath = Request.PhysicalApplicationPath.ToString();

            if (oSystem.GetCurrentUser())
            {
                ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                Session["_IsFilePop"] = true;
                #region Process
                ViewBag.FileUploadResults = sMessage;
                ViewBag.bLoggedIn = true;
                string sLocalDefaultView = sModuleBase + sFileManagerList;
                #region If View is not set try to get it
                if (String.IsNullOrEmpty(_sViewToLoad))
                {
                    if (Session["_sView"] != null)
                    {
                        _sViewToLoad = Session["_sView"].ToString();
                    }
                    else
                    {
                        _sViewToLoad = sLocalDefaultView;
                    }
                }
                #endregion

                return View(_sViewToLoad);
                #endregion
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        public JsonResult GetFolderBase()
        {
            List<AriesCMS.Models.FileManagerList> oListing = new List<Models.FileManagerList>();
            try
            {
                string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
                string sRootPath = Request.PhysicalApplicationPath.ToString();

                if (oSystem.GetCurrentUser())
                {
                    ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                    #region Process
                    ViewBag.bLoggedIn = true;

                    int iIDCounter = 0;

                    string[] oDirectories = Directory.GetDirectories(sRootPath + "Themes");

                    AriesCMS.Models.FileManagerList oNewItem = new Models.FileManagerList();
                    oNewItem.ID = iIDCounter.ToString();
                    oNewItem.IsFolder = true;
                    oNewItem.URI = sRootPath + "Themes";
                    oNewItem.sName = "Themes";
                    oListing.Add(oNewItem);

                    oNewItem = new Models.FileManagerList();
                    oNewItem.ID = iIDCounter.ToString();
                    oNewItem.IsFolder = true;
                    oNewItem.URI = sRootPath + "Scripts";
                    oNewItem.sName = "Scripts";
                    oListing.Add(oNewItem);

                    #endregion
                }
                string sJsonString = JsonConvert.SerializeObject(oListing);
                var oResponse = JsonConvert.DeserializeObject(sJsonString);
                return Json(sJsonString);
            }
            catch
            {
                var oResponse = Json(oListing);
                return oResponse;
            }
        }
        public JsonResult GetDirectoryChildItems(string _sPath)
        {
            List<AriesCMS.Models.FileManagerList> oListing = new List<Models.FileManagerList>();
            try
            {
                string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
                string sRootPath = Request.PhysicalApplicationPath.ToString();

                if (oSystem.GetCurrentUser())
                {
                    ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                    #region Process
                    ViewBag.bLoggedIn = true;

                    int iIDCounter = 0;

                    string[] oDirectories = Directory.GetDirectories(_sPath);

                    foreach (string oDir in oDirectories)
                    {
                        iIDCounter++;

                        AriesCMS.Models.FileManagerList oNewItem = new Models.FileManagerList();
                        oNewItem.ID = iIDCounter.ToString();
                        oNewItem.IsFolder = true;
                        oNewItem.URI = oDir;

                        string sFolderName = oDir;
                        int iIndexOf = sFolderName.LastIndexOf('\\');
                        sFolderName = sFolderName.Remove(0, iIndexOf + 1);

                        oNewItem.sName = sFolderName;
                        oListing.Add(oNewItem);
                    }


                    ViewBag.iTotalRecordCount = oListing.Count;

                    #endregion
                }
                string sJsonString = JsonConvert.SerializeObject(oListing);
                var oResponse = JsonConvert.DeserializeObject(sJsonString);
                return Json(sJsonString);
            }
            catch
            {
                var oResponse = Json(oListing);
                return oResponse;
            }
        }
        public JsonResult GetDirectoryFiles(string _sPath)
        {
            List<AriesCMS.Models.FileManagerList> oListing = new List<Models.FileManagerList>();
            try
            {
                string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
                string sRootPath = Request.PhysicalApplicationPath.ToString();

                if (oSystem.GetCurrentUser())
                {
                    ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                    #region Process
                    ViewBag.bLoggedIn = true;

                    int iIDCounter = 0;

                    string sRootFolder = _sPath;

                    string sFileBaseURL = _sPath.Replace(sRootPath, "");
                    sFileBaseURL = sFileBaseURL.Replace("\\", "/");



                    string[] oFiles = Directory.GetFiles(_sPath);

                    foreach (string oF in oFiles)
                    {
                        iIDCounter++;

                        string sFileName = oF;
                        int iIndexOf = sFileName.LastIndexOf('\\');
                        sFileName = sFileName.Remove(0, iIndexOf + 1);

                        AriesCMS.Models.FileManagerList oNewItem = new Models.FileManagerList();
                        oNewItem.ID = iIDCounter.ToString();
                        oNewItem.IsFolder = false;
                        oNewItem.sName = sFileName;
                        oNewItem.URI = oF;
                        oNewItem.URL = sBaseULR + sFileBaseURL + "/" + sFileName;
                        #region Check for image file
                        try
                        {
                            if (sFileName.Contains(".png"))
                            {
                                oNewItem.IsImage = true;
                            }
                            else if (sFileName.Contains(".jpg"))
                            {
                                oNewItem.IsImage = true;
                            }
                            else if (sFileName.Contains(".gif"))
                            {
                                oNewItem.IsImage = true;
                            }
                            else if (sFileName.Contains(".bmp"))
                            {
                                oNewItem.IsImage = true;
                            }
                            else if (sFileName.Contains(".ico"))
                            {
                                oNewItem.IsImage = true;
                            }

                        }
                        catch
                        {
                        }
                        #endregion
                        oListing.Add(oNewItem);
                    }


                    ViewBag.iTotalRecordCount = oListing.Count;

                    #endregion
                }
                string sJsonString = JsonConvert.SerializeObject(oListing);
                var oResponse = JsonConvert.DeserializeObject(sJsonString);
                return Json(sJsonString);
            }
            catch
            {
                var oResponse = Json(oListing);
                return oResponse;
            }
        }
        //public ActionResult UploadFiles(FormCollection oForms)
        //{
        //    try
        //    {
        //        if (Request != null)
        //        {
        //            HttpPostedFileBase oFile = Request.Files["UploadFiles"];
        //            if (oFile != null)
        //            {
        //                if (oFile.ContentLength > 0)
        //                {
        //                    if (!String.IsNullOrEmpty(oFile.FileName))
        //                    {
        //                        byte[] bytFile = new byte[oFile.ContentLength];
        //                        oFile.InputStream.Read(bytFile, 0, System.Convert.ToInt32(oFile.ContentLength));

        //                    }
        //                }
        //            }
        //        }
        //    }
        //    catch
        //    {
        //    }
        //    return RedirectToAction("FilesManager_List");
        //}

        [HttpPost]
        public ActionResult UploadFiles(FormCollection fc, HttpPostedFileBase UploadFiles, string _Base = "")
        {
            string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
            string sRootPath = Request.PhysicalApplicationPath.ToString();
            bool bOveright = false;
            try
            {

                if (String.IsNullOrEmpty(_Base))
                {
                    try
                    {
                        _Base = fc["hlblCurrentFolderPath"].ToString();
                    }
                    catch
                    {
                    }
                }


                if (String.IsNullOrEmpty(_Base))
                {
                    _Base = sRootPath + "Themes\\";
                }


                if (UploadFiles != null)
                {
                    if (UploadFiles.ContentLength > 0)
                    {
                        if (!String.IsNullOrEmpty(UploadFiles.FileName))
                        {
                            try
                            {
                                string sTempValues = fc["chkOverright"].ToString();
                                if (sTempValues.ToLower() == "on")
                                {
                                    bOveright = true;
                                }
                            }
                            catch
                            {

                            }
                            string sNewFileURL = "";
                            FileInfo oFLCheck = new FileInfo(_Base + "\\" + UploadFiles.FileName);
                            if (!oFLCheck.Exists)
                            {
                                UploadFiles.SaveAs(_Base + "\\" + UploadFiles.FileName);
                                #region Build New File URL
                                try
                                {
                                    int iIndexOf = 0;
                                    iIndexOf = _Base.IndexOf("Themes");
                                    if (iIndexOf >= 0)
                                    {
                                        sNewFileURL = _Base.Remove(0, iIndexOf);
                                        sNewFileURL = sNewFileURL.Replace("\\", "/");
                                        sNewFileURL = "~/" + sNewFileURL + "/" + UploadFiles.FileName;
                                    }
                                    else
                                    {
                                        iIndexOf = _Base.IndexOf("Scripts");
                                        if (iIndexOf >= 0)
                                        {
                                            sNewFileURL = _Base.Remove(0, iIndexOf);
                                            sNewFileURL = sNewFileURL.Replace("\\", "/");
                                            sNewFileURL = "~/" + sNewFileURL + "/" + UploadFiles.FileName;
                                        }
                                    }
                                }
                                catch
                                {
                                }
                                #endregion

                                if (!String.IsNullOrEmpty(sNewFileURL))
                                {
                                    sFileUploadResults = "File Uploaded! - " + sNewFileURL;
                                }
                                else
                                {
                                    sFileUploadResults = "File Uploaded! - " + sBaseULR + "/" + UploadFiles.FileName;
                                }
                            }
                            else
                            {
                                if (bOveright == true)
                                {
                                    UploadFiles.SaveAs(_Base + "\\" + UploadFiles.FileName);
                                    #region Build New File URL
                                    try
                                    {
                                        int iIndexOf = 0;
                                        iIndexOf = _Base.IndexOf("Themes");
                                        if (iIndexOf >= 0)
                                        {
                                            sNewFileURL = _Base.Remove(0, iIndexOf);
                                            sNewFileURL = sNewFileURL.Replace("\\", "/");
                                            sNewFileURL = "~/" + sNewFileURL + "/" + UploadFiles.FileName;
                                        }
                                        else
                                        {
                                            iIndexOf = _Base.IndexOf("Scripts");
                                            if (iIndexOf >= 0)
                                            {
                                                sNewFileURL = _Base.Remove(0, iIndexOf);
                                                sNewFileURL = sNewFileURL.Replace("\\", "/");
                                                sNewFileURL = "~/" + sNewFileURL + "/" + UploadFiles.FileName;
                                            }
                                        }
                                    }
                                    catch
                                    {
                                    }
                                    #endregion

                                    if (!String.IsNullOrEmpty(sNewFileURL))
                                    {
                                        sFileUploadResults = "File Uploaded! - " + sNewFileURL;
                                    }
                                    else
                                    {
                                        sFileUploadResults = "File Uploaded! - " + sBaseULR + "/" + UploadFiles.FileName;
                                    }
                                }
                                else
                                {
                                    sFileUploadResults = "Sorry there is already a file with the same name present!";
                                }
                            }
                        }
                    }
                }
            }
            catch
            {
            }
            return RedirectToAction("FilesManager_List", new { sMessage = sFileUploadResults });
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult GetDirectoryFilesView(string _sPath)
        {
            List<AriesCMS.Models.FileManagerList> oListing = new List<Models.FileManagerList>();
            string sLocalDefaultView = sModuleBase + sFileManagerFileLists;
            try
            {
                string sBaseULR = Request.Url.Scheme + "://" + Request.Url.Authority + "/";
                string sRootPath = Request.PhysicalApplicationPath.ToString();

                if (oSystem.GetCurrentUser())
                {
                    ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                    #region Process
                    ViewBag.bLoggedIn = true;
                    #region If View is not set try to get it
                    if (String.IsNullOrEmpty(_sViewToLoad))
                    {
                        if (Session["_sView"] != null)
                        {
                            _sViewToLoad = Session["_sView"].ToString();
                        }
                        else
                        {
                            _sViewToLoad = sLocalDefaultView;
                        }
                    }
                    #endregion

                    int iIDCounter = 0;

                    string sRootFolder = _sPath;

                    string sFileBaseURL = _sPath.Replace(sRootPath, "");
                    sFileBaseURL = sFileBaseURL.Replace("\\", "/");



                    string[] oFiles = Directory.GetFiles(_sPath);

                    foreach (string oF in oFiles)
                    {
                        iIDCounter++;

                        string sFileName = oF;
                        int iIndexOf = sFileName.LastIndexOf('\\');
                        sFileName = sFileName.Remove(0, iIndexOf + 1);

                        AriesCMS.Models.FileManagerList oNewItem = new Models.FileManagerList();
                        oNewItem.ID = iIDCounter.ToString();
                        oNewItem.IsFolder = false;
                        oNewItem.sName = sFileName;
                        oNewItem.URI = oF;
                        oNewItem.URL = sBaseULR + sFileBaseURL + "/" + sFileName;
                        oListing.Add(oNewItem);
                    }


                    ViewBag.iTotalRecordCount = oListing.Count;

                    #endregion
                }

                return View(_sViewToLoad, oListing);
            }
            catch
            {
                return View(sLocalDefaultView, oListing);
            }
        }
        [HttpPost]
        public ActionResult FilesManager_AddUpdate(DEF_Countries.RecordObject _rec)
        {
            if (oSystem.GetCurrentUser())
            {
                ViewBag.iSiteID = oSystem.rsGlobalVeriables.SiteID;

                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
                else
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        #endregion

        #region Form WebSiteBlogComments
        public ActionResult WebSiteBlogComments_List(FormCollection fc, string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            Set_Client_NavSettings("WebSiteBlogComments_List");
            Set_ViewBag_Global_Defaults();
            Set_ViewBag_UserInfo_Defaults();

            if (oSystem.GetCurrentUser())
            {
                Set_ViewBag_Global();
                Set_ViewBag_UserInfo();

                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    _iParentID = 1;
                    #region Process
                    if (_iParentID <= 0)
                    {
                        #region if ParentID is less than or equal to zero see if it was included in the form
                        if (Request.Form["_iParentID"] != null)
                        {
                            try
                            {
                                _iParentID = System.Convert.ToInt32(Request.Form["_iParentID"].ToString());
                                _sParentID = Request.Form["_sParentID"].ToString();
                            }
                            catch
                            {
                            }
                        }
                        #endregion
                    }
                    ViewBag.iParentID = _iParentID;
                    ViewBag.sParentID = _sParentID;
                    ViewBag.bLoggedIn = true;
                    string sLocalDefaultView = sModuleBase + sWebSiteBlogComments_List;
                    #region If View is not set try to get it
                    if (String.IsNullOrEmpty(_sViewToLoad))
                    {
                        if (Session["_sView"] != null)
                        {
                            _sViewToLoad = Session["_sView"].ToString();
                        }
                        else
                        {
                            _sViewToLoad = sLocalDefaultView;
                        }
                    }
                    #endregion
                    if (fc.AllKeys.Length > 0)
                    {
                        Search = fc["Search"].ToString();
                    }
                    oSystem.OpenDataConnection();

                    DINT_WebSiteBlogComments dbInteraction = new DINT_WebSiteBlogComments(oSystem.cnCon);
                    int iTotalRows = 0;

                    int iCreatedByID = 0;
                    iCreatedByID = oSystem.CurrentUser.UserView.User.ID;

                    List<DEF_WebSiteBlogComments.RecordObject> dbSearch = null;
                    List<DataParameter> lstParameters = new List<DataParameter>();
                    DataParameter pParameter = null;

                    if (_iParentID > 0)
                    {
                        pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                        lstParameters.Add(pParameter);
                    }

                    pParameter = new DataParameter("iCreatedByID", "'" + iCreatedByID + "'", "int", 6, "iCreatedByID", " = ", "");
                    lstParameters.Add(pParameter);

                    if (!String.IsNullOrEmpty(Search))
                    {
                        Search = Search.TrimEnd();
                        Search = Search.TrimStart();
                        ViewBag.bSearched = true;

                        pParameter = new DataParameter("sComment", "'%" + Search + "%'", "string", 12, "sComment", " LIKE ", "");
                        lstParameters.Add(pParameter);
                        iTotalRows = dbInteraction.GetRowCount(lstParameters);
                    }
                    else
                    {
                        iTotalRows = dbInteraction.GetRowCount(lstParameters);
                    }

                    ViewBag.iTotalRecordCount = iTotalRows;
                    int iMaxRows = 10;
                    if (iTotalRows > 0)
                    {
                        #region Page Management Calculation
                        if (page <= 0)
                        {
                            page = 1;
                        }

                        int iRow = 0;
                        int iNextTop = 0;
                        int iNumberOfPages = 0;
                        if (iTotalRows > iMaxRows)
                        {
                            iNumberOfPages = (iTotalRows / iMaxRows) + 1;
                        }
                        else
                        {
                            iNumberOfPages = 1;
                        }
                        ViewBag.iNumberOfPages = iNumberOfPages;
                        if (page <= iNumberOfPages)
                        {
                            if (page > 1)
                            {
                                iRow = ((page - 1) * iMaxRows) + 1;
                                ViewBag.iCurrentPage = page;
                                iNextTop = (page * iMaxRows);
                            }
                            else
                            {
                                iRow = 0;
                                ViewBag.iCurrentPage = 1;
                                iNextTop = page * iMaxRows;
                            }
                        }
                        else
                        {
                            page = iNumberOfPages;
                            iRow = ((page - 1) * iMaxRows) + 1;
                            ViewBag.iCurrentPage = iNumberOfPages;
                            iNextTop = iNumberOfPages * iMaxRows;
                        }
                        #endregion
                        dbSearch = dbInteraction.Get(lstParameters, iRow, iNextTop);

                        oSystem.CloseDataConnection();

                        var dbres = dbSearch.OrderBy(s => s.ID);
                        oPage.DataModelsPrimary = dbres.ToList();
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        oPage.PartialViewToLoad = _sViewToLoad;
                        return View(sModuleBase + sBasePage, oPage);

                    }
                    else
                    {
                        oSystem.CloseDataConnection();
                        ViewBag.iNumberOfPages = 0;
                        dbSearch = new List<DEF_WebSiteBlogComments.RecordObject>();
                        oPage.DataModelsPrimary = dbSearch;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        oPage.PartialViewToLoad = _sViewToLoad;
                        return View(sModuleBase + sBasePage, oPage);

                    }

                    #endregion
                }
                else
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        public ActionResult WebSiteBlogComments_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            Set_Client_NavSettings("WebSiteBlogComments_Details");
            Set_ViewBag_Global_Defaults();
            Set_ViewBag_UserInfo_Defaults();

            if (oSystem.GetCurrentUser())
            {
                Set_ViewBag_Global();
                Set_ViewBag_UserInfo();

                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    #region Process
                    ViewBag.bLoggedIn = true;
                    string sLocalDefaultView = sModuleBase + sWebSiteBlogComments_Details;
                    #region If View is not set try to get it
                    if (String.IsNullOrEmpty(_sViewToLoad))
                    {
                        if (Session["_sViewDetails"] != null)
                        {
                            _sViewToLoad = Session["_sViewDetails"].ToString();
                        }
                        else
                        {
                            _sViewToLoad = sLocalDefaultView;
                        }
                    }
                    #endregion
                    if (id > 0)
                    {
                        #region ID Based pull
                        oSystem.OpenDataConnection();
                        ViewBag.bError = false;
                        ViewBag.bAddNew = false;
                        ViewBag.bSaved = false;
                        ViewBag.sErrorMessage = "";

                        if (_UseParameterResults == true)
                        {
                            ViewBag.bAddNew = _AddNew;
                            ViewBag.bSaved = _Saved;
                        }
                        ACMSDBView.WebSiteBlogCommentsViewModel recRecord = new WebSiteBlogCommentsViewModel();

                        if (recRecord.GetView(oSystem.cnCon, id))
                        {
                            ViewBag.iParentID = recRecord.WebSiteBlogComments.iParentID;
                            ViewBag.sParentID = recRecord.WebSiteBlogComments.sParentID;

                            oSystem.CloseDataConnection();
                            oPage.DataModelsPrimary = recRecord;
                            oPage.DataModelsSub.Add(oSystem);
                            oPage.AuthenticatedUser = true;
                            oPage.PartialViewToLoad = _sViewToLoad;
                            return View(sModuleBase + sBasePage, oPage);

                        }
                        else
                        {
                            oSystem.CloseDataConnection();
                            return HttpNotFound();
                        }
                        #endregion
                    }
                    else if (!String.IsNullOrEmpty(key))
                    {
                        #region key Based pull
                        oSystem.OpenDataConnection();
                        ViewBag.bError = false;
                        ViewBag.bAddNew = false;
                        ViewBag.bSaved = false;
                        ViewBag.sErrorMessage = "";

                        if (_UseParameterResults == true)
                        {
                            ViewBag.bAddNew = _AddNew;
                            ViewBag.bSaved = _Saved;
                        }
                        List<DataParameter> lstParameters = new List<DataParameter>();
                        DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 1, "sControl", " = ", "");
                        lstParameters.Add(pParameter);

                        DINT_WebSiteBlogComments dbInteraction = new DINT_WebSiteBlogComments(oSystem.cnCon);
                        List<DEF_WebSiteBlogComments.RecordObject> dbSearch = dbInteraction.Get(lstParameters);
                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                ACMSDBView.WebSiteBlogCommentsViewModel recRecord = new WebSiteBlogCommentsViewModel();
                                recRecord.WebSiteBlogComments = dbSearch[0];
                                if (recRecord.WebSiteBlogComments == null)
                                {
                                    return HttpNotFound();
                                }
                                recRecord.Get_ParentComment(oSystem.cnCon);
                                ViewBag.iParentID = recRecord.WebSiteBlogComments.iParentID;
                                ViewBag.sParentID = recRecord.WebSiteBlogComments.sParentID;

                                oSystem.CloseDataConnection();
                                oPage.DataModelsPrimary = recRecord;
                                oPage.DataModelsSub.Add(oSystem);
                                oPage.AuthenticatedUser = true;
                                oPage.PartialViewToLoad = _sViewToLoad;
                                return View(sModuleBase + sBasePage, oPage);


                            }
                            else
                            {
                                oSystem.CloseDataConnection();
                                return HttpNotFound();
                            }
                        }
                        else
                        {
                            oSystem.CloseDataConnection();
                            return HttpNotFound();
                        }
                        #endregion
                    }
                    else
                    {
                        oSystem.CloseDataConnection();
                        return HttpNotFound();
                    }

                    #endregion
                }
                else
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        public ActionResult WebSiteBlogComments_Create(int _iParentID = 0, string _sParentID = "")
        {
            Set_Client_NavSettings("WebSiteBlogComments_Create");
            Set_ViewBag_Global_Defaults();
            Set_ViewBag_UserInfo_Defaults();

            if (oSystem.GetCurrentUser())
            {
                Set_ViewBag_Global();
                Set_ViewBag_UserInfo();

                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    #region Process
                    ViewBag.iParentID = _iParentID;
                    ViewBag.sParentID = _sParentID;
                    ViewBag.bLoggedIn = true;
                    string sLocalDefaultView = sModuleBase + sWebSiteBlogComments_Details;
                    #region If View is not set try to get it
                    if (String.IsNullOrEmpty(_sViewToLoad))
                    {
                        if (Session["_sViewDetails"] != null)
                        {
                            _sViewToLoad = Session["_sViewDetails"].ToString();
                        }
                        else
                        {
                            _sViewToLoad = sLocalDefaultView;
                        }
                    }
                    #endregion
                    ViewBag.bError = false;
                    ViewBag.bAddNew = true;
                    ViewBag.bSaved = false;
                    ViewBag.sErrorMessage = "";

                    ACMSDBView.WebSiteBlogCommentsViewModel recRecord = new WebSiteBlogCommentsViewModel();
                    recRecord.WebSiteBlogComments = new DEF_WebSiteBlogComments.RecordObject();
                    recRecord.WebSiteBlogComments.iParentID = _iParentID;
                    recRecord.WebSiteBlogComments.sParentID = _sParentID;

                    oSystem.CloseDataConnection();

                    oPage.DataModelsPrimary = recRecord;
                    oPage.DataModelsSub.Add(oSystem);
                    oPage.AuthenticatedUser = true;
                    oPage.PartialViewToLoad = _sViewToLoad;
                    return View(sModuleBase + sBasePage, oPage);


                    #endregion
                }
                else
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult WebSiteBlogComments_AddUpdate(ACMSDBView.WebSiteBlogCommentsViewModel _rec)
        {
            Set_Client_NavSettings("WebSiteBlogComments_AddUpdate");
            Set_ViewBag_Global_Defaults();
            Set_ViewBag_UserInfo_Defaults();

            if (oSystem.GetCurrentUser())
            {
                Set_ViewBag_Global();
                Set_ViewBag_UserInfo();

                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    #region Process
                    ViewBag.bLoggedIn = true;
                    string sLocalDefaultView = sModuleBase + sWebSiteBlogComments_Details;
                    #region If View is not set try to get it
                    if (String.IsNullOrEmpty(_sViewToLoad))
                    {
                        if (Session["_sViewDetails"] != null)
                        {
                            _sViewToLoad = Session["_sViewDetails"].ToString();
                        }
                        else
                        {
                            _sViewToLoad = sLocalDefaultView;
                        }
                    }
                    #endregion
                    if (_rec != null)
                    {
                        if ((_rec.WebSiteBlogComments.ID == null) || (_rec.WebSiteBlogComments.ID == 0))
                        {
                            ViewBag.bAddNew = true;
                            _rec.WebSiteBlogComments.ID = -1;
                            ModelState.Remove("ID");
                        }

                        if (ModelState.IsValid)
                        {
                            ViewBag.iParentID = _rec.WebSiteBlogComments.iParentID;
                            ViewBag.sParentID = _rec.WebSiteBlogComments.sParentID;
                            if (ViewBag.bAddNew == true)
                            {
                                #region
                                ViewBag.bError = false;
                                ViewBag.bAddNew = false;
                                ViewBag.bSaved = true;
                                ViewBag.sErrorMessage = "";
                                oSystem.OpenDataConnection();

                                DINT_WebSiteBlogComments dbInteraction = new DINT_WebSiteBlogComments(oSystem.cnCon);

                                _rec.WebSiteBlogComments.sControl = Guid.NewGuid().ToString();
                                _rec.WebSiteBlogComments.dtDateCreated = DateTime.Now;
                                _rec.WebSiteBlogComments.dtLastUpdated = DateTime.Now;

                                dbInteraction.Insert_SQL(_rec.WebSiteBlogComments);

                                _rec.Get_ParentComment(oSystem.cnCon);

                                oSystem.CloseDataConnection();
                                //return RedirectToAction("StatesDetails", new { id = _rec.ID, _bOverrideScreenMessage = true });
                                #endregion
                                return RedirectToAction("WebSiteBlogComments_Details", new { key = _rec.WebSiteBlogComments.sControl, _UseParameterResults = true, _AddNew = false, _Saved = true });
                                //return View(_sViewToLoad, _rec);
                                //return View(_rec);
                            }
                            else
                            {
                                if (_rec.WebSiteBlogComments.ID > 0)
                                {
                                    #region
                                    ViewBag.bError = false;
                                    ViewBag.bAddNew = false;
                                    ViewBag.bSaved = true;
                                    ViewBag.sErrorMessage = "";
                                    oSystem.OpenDataConnection();


                                    DINT_WebSiteBlogComments dbInteraction = new DINT_WebSiteBlogComments(oSystem.cnCon);

                                    _rec.WebSiteBlogComments.dtLastUpdated = DateTime.Now;

                                    dbInteraction.Update_SQL(_rec.WebSiteBlogComments);

                                    _rec.Get_ParentComment(oSystem.cnCon);
                                    oSystem.CloseDataConnection();
                                    #endregion
                                    //return View(_sViewToLoad, _rec);
                                    return RedirectToAction("WebSiteBlogComments_Details", new { id = _rec.WebSiteBlogComments.ID, _UseParameterResults = true, _AddNew = false, _Saved = true });
                                    //return View(_rec);
                                }
                                else
                                {
                                    ViewBag.bError = true;
                                    ViewBag.sErrorMessage = "Please fill out the form completely, before re-submitting it.";

                                    oPage.DataModelsPrimary = _rec;
                                    oPage.DataModelsSub.Add(oSystem);
                                    oPage.AuthenticatedUser = true;
                                    oPage.PartialViewToLoad = _sViewToLoad;
                                    return View(sModuleBase + sBasePage, oPage);

                                }
                            }
                        }
                        else
                        {
                            ViewBag.bError = true;
                            ViewBag.sErrorMessage = "Please fill out the form completely, before re-submitting it.";
                            oPage.DataModelsPrimary = _rec;
                            oPage.DataModelsSub.Add(oSystem);
                            oPage.AuthenticatedUser = true;
                            oPage.PartialViewToLoad = _sViewToLoad;
                            return View(sModuleBase + sBasePage, oPage);

                        }
                    }
                    else
                    {
                        ViewBag.bError = true;
                        ViewBag.sErrorMessage = "Please fill out the form completely, before re-submitting it.";
                        oPage.DataModelsPrimary = _rec;
                        oPage.DataModelsSub.Add(oSystem);
                        oPage.AuthenticatedUser = true;
                        oPage.PartialViewToLoad = _sViewToLoad;
                        return View(sModuleBase + sBasePage, oPage);

                    }

                    #endregion
                }
                else
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        public ActionResult WebSiteBlogComments_Delete(int id)
        {
            Set_Client_NavSettings("WebSiteBlogComments_Delete");
            Set_ViewBag_Global_Defaults();
            Set_ViewBag_UserInfo_Defaults();

            if (oSystem.GetCurrentUser())
            {
                Set_ViewBag_Global();
                Set_ViewBag_UserInfo();

                int iParentID = 0;
                string sParentID = "";

                #region if ParentID is less than or equal to zero see if it was included in the form
                try
                {
                    if (Request.Form["_iParentID"] != null)
                    {
                        try
                        {
                            iParentID = System.Convert.ToInt32(Request.Form["_iParentID"].ToString());
                            sParentID = Request.Form["_sParentID"].ToString();
                        }
                        catch
                        {
                        }
                    }
                }
                catch
                {
                }
                #endregion


                if (oSystem.CheckScreenAccessRights(iAccessRolesAllowed))
                {
                    #region Process
                    ViewBag.bLoggedIn = true;
                    ViewBag.bAddNew = false;
                    if (id > 0)
                    {
                        oSystem.OpenDataConnection();

                        DINT_WebSiteBlogComments dbInteraction = new DINT_WebSiteBlogComments(oSystem.cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();
                        DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                        lstParameters.Add(pParameter);

                        List<DEF_WebSiteBlogComments.RecordObject> dbSearch;
                        dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                DEF_WebSiteBlogComments.RecordObject recRecord = dbSearch[0];
                                if (recRecord != null)
                                {
                                    if (recRecord.ID == id)
                                    {
                                        ViewBag.iParentID = recRecord.iParentID;
                                        ViewBag.sParentID = recRecord.sParentID;
                                        iParentID = recRecord.iParentID;
                                        sParentID = recRecord.sParentID;
                                        dbInteraction.Delete_SQL(recRecord);
                                    }
                                }
                            }
                        }

                        return RedirectToAction("WebSiteBlogComments_List", new { _iParentID = iParentID, _sParentID = sParentID });
                    }
                    else
                    {
                        return RedirectToAction("WebSiteBlogComments_List", new { _iParentID = iParentID, _sParentID = sParentID });
                    }

                    #endregion
                }
                else
                {
                    //User does not have access to this area of the system
                    return Redirect("~/");
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        #endregion
        #endregion



    }
}
