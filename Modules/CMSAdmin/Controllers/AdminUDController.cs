
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
    public partial class HomeController : Controller
    {

        //These veriables are avaialble to you for use in your actions
        //ACMSDBView.WebSitePageViewModel oPage = new WebSitePageViewModel();
        ////
        //// GET: /Default/
        //string sModuleBase = "~/Modules/CMSAdmin";
        //string _sViewToLoad = "";
        //AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
        //int[] iAccessRolesAllowed = new int[1] { 1 };


        //Use this file to enter your custom actions




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


        public void Set_CustomClient_NavSettings(string _Function)
        {
            try
            {


                if (!String.IsNullOrEmpty(_Function))
                {
                    //switch (_Function)
                    //{

                    //}
                }
            }
            catch
            {

            }
        }



    }
}