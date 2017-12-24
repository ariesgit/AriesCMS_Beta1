
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
using System.Data.Entity;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Net;
using System.Net.Mail;
using System.Threading;
using AriesGlobal;
using AriesDBConnector;
using AriesDBManager;
using AriesCMSInteractions;
using AriesCMSDefinition;
using ACMSDBView;


namespace AriesCMS.Helpers
{
    [Serializable]
    public partial class SiteCookieHelper
    {
        string _CookieName = "acmscookie_";
        string _CookieKey = "_sAkey";
        string _CookieUserAccess = "_oSS";

        public string CookieID { get; set; }
        
        public string UserAccess { get; set; }
       
        public ServerVeriables ServerVeri { get; set; }
        public SiteCookieHelper(string _sSiteName = "ariescms")
        {
            _CookieName += _sSiteName;
            UserAccess = "";
            ServerVeri = new ServerVeriables();
            Ini_SiteCookieHelper();
        }

        public bool GetCookie()
        {
            try
            {
                CookieID = "";
                HttpCookie objCookie = HttpContext.Current.Request.Cookies[_CookieName];
                if (objCookie[_CookieKey] != null)
                {
                    CookieID = objCookie[_CookieKey].ToString();
                    UserAccess = objCookie[_CookieUserAccess].ToString();
                    if (!String.IsNullOrEmpty(CookieID))
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }

        public bool SetCookie()
        {
            try
            {
                if (String.IsNullOrEmpty(CookieID))
                {
                    CookieID = Guid.NewGuid().ToString();
                }

                HttpCookie objCookie = new HttpCookie(_CookieName);
                objCookie.Values.Add(_CookieKey, CookieID);
                objCookie.Values.Add(_CookieUserAccess, UserAccess);
                //objCookie.Expires = DateTime.Now.AddYears(9);
                objCookie.Expires = DateTime.Now.AddDays(90);

                HttpContext.Current.Response.Cookies.Add(objCookie);

                
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool ClearCookie()
        {
            try
            {
                if (String.IsNullOrEmpty(CookieID))
                {
                    CookieID = Guid.NewGuid().ToString();
                }

                HttpCookie objCookie = new HttpCookie(_CookieName);
                objCookie.Expires = DateTime.Now.AddDays(-1);

                HttpContext.Current.Response.Cookies.Add(objCookie);
                //HttpContext.Current.Response.Cookies.Clear();

                return true;
            }
            catch
            {
                return false;
            }
        }
    }

    [Serializable]
    public partial class ServerVeriables
    {
        // here are the values for each server veriable http://msdn.microsoft.com/en-us/library/ms524602%28v=vs.90%29.aspx
        public enum ServerVeriable
        {
            ALL_HTTP,
            ALL_RAW,
            APP_POOL_ID,
            APPL_MD_PATH,
            APPL_PHYSICAL_PATH,
            AUTH_PASSWORD,
            AUTH_TYPE,
            AUTH_USER,
            CACHE_URL,
            CERT_COOKIE,
            CERT_FLAGS,
            CERT_ISSUER,
            CERT_KEYSIZE,
            CERT_SECRETKEYSIZE,
            CERT_SERIALNUMBER,
            CERT_SERVER_ISSUER,
            CERT_SERVER_SUBJECT,
            CERT_SUBJECT,
            CONTENT_LENGTH,
            CONTENT_TYPE,
            GATEWAY_INTERFACE,
            HTTP_ACCEPT,
            HTTP_ACCEPT_ENCODING,
            HTTP_ACCEPT_LANGUAGE,
            HTTP_CONNECTION,
            HTTP_COOKIE,
            HTTP_HOST,
            HTTP_METHOD,
            HTTP_REFERER,
            HTTP_URL,
            HTTP_USER_AGENT,
            HTTP_VERSION,
            HTTPS,
            HTTPS_KEYSIZE,
            HTTPS_SECRETKEYSIZE,
            HTTPS_SERVER_ISSUER,
            HTTPS_SERVER_SUBJECT,
            INSTANCE_ID,
            INSTANCE_META_PATH,
            LOCAL_ADDR,
            LOGON_USER,
            PATH_INFO,
            PATH_TRANSLATED,
            QUERY_STRING,
            REMOTE_ADDR,
            REMOTE_HOST,
            REMOTE_PORT,
            REMOTE_USER,
            REQUEST_METHOD,
            SCRIPT_NAME,
            SCRIPT_TRANSLATED,
            SERVER_NAME,
            SERVER_PORT,
            SERVER_PORT_SECURE,
            SERVER_PROTOCOL,
            SERVER_SOFTWARE,
            SSI_EXEC_DISABLED,
            UNENCODED_URL,
            UNMAPPED_REMOTE_USER,
            URL,
            URL_PATH_INFO
        };

        public CultureInfo UserCultureInfo { get; set; }
        public RegionInfo UserRegionInfo { get; set; }

        public List<string> FieldValue = new List<string>();
        public ServerVeriables()
        {
            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("ALL_HTTP").ToString());
            }
            catch
            {
                FieldValue.Add("ALL_HTTP - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("ALL_RAW").ToString());
            }
            catch
            {
                FieldValue.Add("ALL_RAW - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("APP_POOL_ID").ToString());
            }
            catch
            {
                FieldValue.Add("APP_POOL_ID - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("APPL_MD_PATH").ToString());
            }
            catch
            {
                FieldValue.Add("APPL_MD_PATH - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("APPL_PHYSICAL_PATH").ToString());
            }
            catch
            {
                FieldValue.Add("APPL_PHYSICAL_PATH - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("AUTH_PASSWORD").ToString());
            }
            catch
            {
                FieldValue.Add("AUTH_PASSWORD - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("AUTH_TYPE").ToString());
            }
            catch
            {
                FieldValue.Add("AUTH_TYPE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("AUTH_USER").ToString());
            }
            catch
            {
                FieldValue.Add("AUTH_USER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CACHE_URL").ToString());
            }
            catch
            {
                FieldValue.Add("CACHE_URL - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_COOKIE").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_COOKIE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_FLAGS").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_FLAGS - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_ISSUER").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_ISSUER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_KEYSIZE").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_KEYSIZE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_SECRETKEYSIZE").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_SECRETKEYSIZE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_SERIALNUMBER").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_SERIALNUMBER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_SERVER_ISSUER").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_SERVER_ISSUER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_SERVER_SUBJECT").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_SERVER_SUBJECT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CERT_SUBJECT").ToString());
            }
            catch
            {
                FieldValue.Add("CERT_SUBJECT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CONTENT_LENGTH").ToString());
            }
            catch
            {
                FieldValue.Add("CONTENT_LENGTH - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("CONTENT_TYPE").ToString());
            }
            catch
            {
                FieldValue.Add("CONTENT_TYPE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("GATEWAY_INTERFACE").ToString());
            }
            catch
            {
                FieldValue.Add("GATEWAY_INTERFACE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_ACCEPT").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_ACCEPT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_ACCEPT_ENCODING").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_ACCEPT_ENCODING - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_ACCEPT_LANGUAGE").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_ACCEPT_LANGUAGE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_CONNECTION").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_CONNECTION - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_COOKIE").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_COOKIE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_HOST").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_HOST - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_METHOD").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_METHOD - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_REFERER").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_REFERER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_URL").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_URL - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_USER_AGENT").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_USER_AGENT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTP_VERSION").ToString());
            }
            catch
            {
                FieldValue.Add("HTTP_VERSION - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTPS").ToString());
            }
            catch
            {
                FieldValue.Add("HTTPS - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTPS_KEYSIZE").ToString());
            }
            catch
            {
                FieldValue.Add("HTTPS_KEYSIZE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTPS_SECRETKEYSIZE").ToString());
            }
            catch
            {
                FieldValue.Add("HTTPS_SECRETKEYSIZE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTPS_SERVER_ISSUER").ToString());
            }
            catch
            {
                FieldValue.Add("HTTPS_SERVER_ISSUER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("HTTPS_SERVER_SUBJECT").ToString());
            }
            catch
            {
                FieldValue.Add("HTTPS_SERVER_SUBJECT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("INSTANCE_ID").ToString());
            }
            catch
            {
                FieldValue.Add("INSTANCE_ID - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("INSTANCE_META_PATH").ToString());
            }
            catch
            {
                FieldValue.Add("INSTANCE_META_PATH - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("LOCAL_ADDR").ToString());
            }
            catch
            {
                FieldValue.Add("LOCAL_ADDR - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("LOGON_USER").ToString());
            }
            catch
            {
                FieldValue.Add("LOGON_USER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("PATH_INFO").ToString());
            }
            catch
            {
                FieldValue.Add("PATH_INFO - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("PATH_TRANSLATED").ToString());
            }
            catch
            {
                FieldValue.Add("PATH_TRANSLATED - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("QUERY_STRING").ToString());
            }
            catch
            {
                FieldValue.Add("QUERY_STRING - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("REMOTE_ADDR").ToString());
            }
            catch
            {
                FieldValue.Add("REMOTE_ADDR - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("REMOTE_HOST").ToString());
            }
            catch
            {
                FieldValue.Add("REMOTE_HOST - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("REMOTE_PORT").ToString());
            }
            catch
            {
                FieldValue.Add("REMOTE_PORT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("REMOTE_USER").ToString());
            }
            catch
            {
                FieldValue.Add("REMOTE_USER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("REQUEST_METHOD").ToString());
            }
            catch
            {
                FieldValue.Add("REQUEST_METHOD - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SCRIPT_NAME").ToString());
            }
            catch
            {
                FieldValue.Add("SCRIPT_NAME - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SCRIPT_TRANSLATED").ToString());
            }
            catch
            {
                FieldValue.Add("SCRIPT_TRANSLATED - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SERVER_NAME").ToString());
            }
            catch
            {
                FieldValue.Add("SERVER_NAME - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SERVER_PORT").ToString());
            }
            catch
            {
                FieldValue.Add("SERVER_PORT - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SERVER_PORT_SECURE").ToString());
            }
            catch
            {
                FieldValue.Add("SERVER_PORT_SECURE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SERVER_PROTOCOL").ToString());
            }
            catch
            {
                FieldValue.Add("SERVER_PROTOCOL - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SERVER_SOFTWARE").ToString());
            }
            catch
            {
                FieldValue.Add("SERVER_SOFTWARE - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("SSI_EXEC_DISABLED").ToString());
            }
            catch
            {
                FieldValue.Add("SSI_EXEC_DISABLED - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("UNENCODED_URL").ToString());
            }
            catch
            {
                FieldValue.Add("UNENCODED_URL - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("UNMAPPED_REMOTE_USER").ToString());
            }
            catch
            {
                FieldValue.Add("UNMAPPED_REMOTE_USER - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("URL").ToString());
            }
            catch
            {
                FieldValue.Add("URL - NULL or Empty");
            }

            try
            {
                FieldValue.Add(HttpContext.Current.Request.ServerVariables.Get("URL_PATH_INFO").ToString());
            }
            catch
            {
                FieldValue.Add("URL_PATH_INFO - NULL or Empty");
            }


            try
            {
                string[] languages = HttpContext.Current.Request.UserLanguages;
                string language = languages[0].ToLowerInvariant().Trim();
                UserCultureInfo = CultureInfo.CreateSpecificCulture(language);

                UserRegionInfo = new RegionInfo(UserCultureInfo.LCID);
            }
            catch
            {

            }

            Ini_ServerVeriables();

        }

        public string VisitorIPAddress()
        {
            try
            {
                string sValue = FieldValue[(int)ServerVeriable.REMOTE_ADDR].ToString();
                sValue = sValue.Replace(':', '.');
                return sValue;
            }
            catch
            {
                return "";
            }
        }
        public string DetermineCompName(string IP)
        {
            IPAddress myIP = IPAddress.Parse(IP);
            IPHostEntry GetIPHost = Dns.GetHostEntry(myIP);
            List<string> compName = GetIPHost.HostName.ToString().Split('.').ToList();
            return compName.First();
        }

        public override string ToString()
        {
            string sResponse = "";

            try
            {
                sResponse = ServerVeriable.ALL_HTTP.ToString() + "=" + FieldValue[(int)ServerVeriable.ALL_HTTP];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.ALL_RAW.ToString() + "=" + FieldValue[(int)ServerVeriable.ALL_RAW];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.APP_POOL_ID.ToString() + "=" + FieldValue[(int)ServerVeriable.APP_POOL_ID];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.APPL_MD_PATH.ToString() + "=" + FieldValue[(int)ServerVeriable.APPL_MD_PATH];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.APPL_PHYSICAL_PATH.ToString() + "=" + FieldValue[(int)ServerVeriable.APPL_PHYSICAL_PATH];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.AUTH_PASSWORD.ToString() + "=" + FieldValue[(int)ServerVeriable.AUTH_PASSWORD];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.AUTH_TYPE.ToString() + "=" + FieldValue[(int)ServerVeriable.AUTH_TYPE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.AUTH_USER.ToString() + "=" + FieldValue[(int)ServerVeriable.AUTH_USER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CACHE_URL.ToString() + "=" + FieldValue[(int)ServerVeriable.CACHE_URL];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_COOKIE.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_COOKIE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_FLAGS.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_FLAGS];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_ISSUER.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_ISSUER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_KEYSIZE.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_KEYSIZE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_SECRETKEYSIZE.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_SECRETKEYSIZE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_SERIALNUMBER.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_SERIALNUMBER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_SERVER_ISSUER.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_SERVER_ISSUER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_SERVER_SUBJECT.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_SERVER_SUBJECT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CERT_SUBJECT.ToString() + "=" + FieldValue[(int)ServerVeriable.CERT_SUBJECT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CONTENT_LENGTH.ToString() + "=" + FieldValue[(int)ServerVeriable.CONTENT_LENGTH];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.CONTENT_TYPE.ToString() + "=" + FieldValue[(int)ServerVeriable.CONTENT_TYPE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.GATEWAY_INTERFACE.ToString() + "=" + FieldValue[(int)ServerVeriable.GATEWAY_INTERFACE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_ACCEPT.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_ACCEPT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_ACCEPT_ENCODING.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_ACCEPT_ENCODING];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_ACCEPT_LANGUAGE.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_ACCEPT_LANGUAGE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_CONNECTION.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_CONNECTION];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_COOKIE.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_COOKIE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_HOST.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_HOST];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_METHOD.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_METHOD];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_REFERER.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_REFERER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_URL.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_URL];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_USER_AGENT.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_USER_AGENT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTP_VERSION.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTP_VERSION];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTPS.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTPS];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTPS_KEYSIZE.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTPS_KEYSIZE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTPS_SECRETKEYSIZE.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTPS_SECRETKEYSIZE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTPS_SERVER_ISSUER.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTPS_SERVER_ISSUER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.HTTPS_SERVER_SUBJECT.ToString() + "=" + FieldValue[(int)ServerVeriable.HTTPS_SERVER_SUBJECT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.INSTANCE_ID.ToString() + "=" + FieldValue[(int)ServerVeriable.INSTANCE_ID];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.INSTANCE_META_PATH.ToString() + "=" + FieldValue[(int)ServerVeriable.INSTANCE_META_PATH];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.LOCAL_ADDR.ToString() + "=" + FieldValue[(int)ServerVeriable.LOCAL_ADDR];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.LOGON_USER.ToString() + "=" + FieldValue[(int)ServerVeriable.LOGON_USER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.PATH_INFO.ToString() + "=" + FieldValue[(int)ServerVeriable.PATH_INFO];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.PATH_TRANSLATED.ToString() + "=" + FieldValue[(int)ServerVeriable.PATH_TRANSLATED];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.QUERY_STRING.ToString() + "=" + FieldValue[(int)ServerVeriable.QUERY_STRING];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.REMOTE_ADDR.ToString() + "=" + FieldValue[(int)ServerVeriable.REMOTE_ADDR];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.REMOTE_HOST.ToString() + "=" + FieldValue[(int)ServerVeriable.REMOTE_HOST];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.REMOTE_PORT.ToString() + "=" + FieldValue[(int)ServerVeriable.REMOTE_PORT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.REMOTE_USER.ToString() + "=" + FieldValue[(int)ServerVeriable.REMOTE_USER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.REQUEST_METHOD.ToString() + "=" + FieldValue[(int)ServerVeriable.REQUEST_METHOD];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SCRIPT_NAME.ToString() + "=" + FieldValue[(int)ServerVeriable.SCRIPT_NAME];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SCRIPT_TRANSLATED.ToString() + "=" + FieldValue[(int)ServerVeriable.SCRIPT_TRANSLATED];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SERVER_NAME.ToString() + "=" + FieldValue[(int)ServerVeriable.SERVER_NAME];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SERVER_PORT.ToString() + "=" + FieldValue[(int)ServerVeriable.SERVER_PORT];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SERVER_PORT_SECURE.ToString() + "=" + FieldValue[(int)ServerVeriable.SERVER_PORT_SECURE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SERVER_PROTOCOL.ToString() + "=" + FieldValue[(int)ServerVeriable.SERVER_PROTOCOL];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SERVER_SOFTWARE.ToString() + "=" + FieldValue[(int)ServerVeriable.SERVER_SOFTWARE];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.SSI_EXEC_DISABLED.ToString() + "=" + FieldValue[(int)ServerVeriable.SSI_EXEC_DISABLED];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.UNENCODED_URL.ToString() + "=" + FieldValue[(int)ServerVeriable.UNENCODED_URL];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.UNMAPPED_REMOTE_USER.ToString() + "=" + FieldValue[(int)ServerVeriable.UNMAPPED_REMOTE_USER];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.URL.ToString() + "=" + FieldValue[(int)ServerVeriable.URL];
            }
            catch
            {
            }

            try
            {
                sResponse += "|" + ServerVeriable.URL_PATH_INFO.ToString() + "=" + FieldValue[(int)ServerVeriable.URL_PATH_INFO];
            }
            catch
            {
            }


            return sResponse;
            //return base.ToString();
        }
    }

    [Serializable]
    public partial class SiteCoreHelper
    {
        bool bResponse = false;
        public string sProcessError = "";

        public string _sClientID = "info_api1.westonbar.org";
        public string _sClientSecret = "AFcWxV21C7fd0v3bYYYRCpSSRl31AnXZyOImS8YfwKW.X5qxvHfDj1Yf";

        public string BaseURL { get; set; }
        public AriesCMS.Helpers.SiteCookieHelper UserCookie;
        public DataConnectionFactory ConnectionFactory = new DataConnectionFactory();

        public ServerVeriables VisitorHTTPValues = new ServerVeriables();

        //SystemWindowsEventLogging.EventLogger evLog = new SystemWindowsEventLogging.EventLogger("AriesCMSRouting.DynamicUrlConstraint");

        public IDataConnection cnCon = null;
        public ACMSGlobal.CMSGlobal rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
        public ACMSUser.UserSecurity CurrentUser;


        public AriesCMS.Models.LocalPageView LocalPageViewFormData;
        public AriesCMS.Models.ContactUsView ContactFormData;
        public AriesCMS.Models.ContactLeadView ContactLeadFormData;
        public AriesCMS.Models.ProfileRecovery ProfileRecoveryFormData;
        public AriesCMS.Models.NewUserRegistration NewUserFormData;
        public AriesCMS.Models.ShareContent ShareContentFormData;
        public AriesCMS.Models.NewNewsLetter NewNewsLetterFormData;
        public ACMSDBView.UserAuthentication UserAuthenticationFormData;


        public bool SetValue_FormDataModel(Object _Model)
        {
            try
            {
                HttpContext.Current.Session["_sFormFunctionDBMod"] = _Model;
                return true;
            }
            catch
            {
                return false;
            }
        }
        public Object GetValue_FormDataModel()
        {
            try
            {
                Object oResponse = null;

                oResponse = (Object)HttpContext.Current.Session["_sFormFunctionDBMod"];

                return oResponse;
            }
            catch
            {
                return null;
            }
        }
        public bool SetValue_FormFunction(string _Field, string _Value)
        {
            try
            {
                string sKeyValues = "";
                string sNewKeyValues = "";
                if (HttpContext.Current.Session["_sFormFunctionResults"] != null)
                {
                    sKeyValues = HttpContext.Current.Session["_sFormFunctionResults"].ToString();
                }
                if (sKeyValues != null)
                {
                    string[] ValuePairs = sKeyValues.Split('|');
                    bool bValueSet = false;
                    if (ValuePairs != null)
                    {
                        if (ValuePairs.Length > 0)
                        {
                            for (int i = 0; i < ValuePairs.Length; i++)
                            {
                                #region
                                try
                                {
                                    if (ValuePairs[i] != null)
                                    {
                                        string[] oValues = ValuePairs[i].Split('=');
                                        if (oValues != null)
                                        {
                                            if (oValues.Length > 1)
                                            {
                                                if (oValues[0] == _Field)
                                                {
                                                    ValuePairs[i] = _Field + "=" + _Value;
                                                    oValues[0] = _Field;
                                                    oValues[1] = _Value;
                                                    bValueSet = true;
                                                }
                                                sNewKeyValues += "|" + oValues[0] + "=" + oValues[1];
                                            }
                                        }
                                    }
                                }
                                catch
                                {
                                }
                                #endregion
                            }

                            if (bValueSet == false)
                            {
                                sNewKeyValues += "|" + _Field + "=" + _Value;
                            }
                        }
                        else
                        {
                            sNewKeyValues += "|" + _Field + "=" + _Value;
                        }
                    }
                    else
                    {
                        sNewKeyValues += "|" + _Field + "=" + _Value;
                    }
                }
                else
                {
                    sNewKeyValues += "|" + _Field + "=" + _Value;
                }

                HttpContext.Current.Session["_sFormFunctionResults"] = sNewKeyValues;

                return true;
            }
            catch
            {
                return false;
            }
        }
        public string GetValue_FormFunction(string _Field)
        {
            try
            {
                string sKeyValues = "";
                if (HttpContext.Current.Session["_sFormFunctionResults"] != null)
                {
                    sKeyValues = HttpContext.Current.Session["_sFormFunctionResults"].ToString();
                }

                if (!String.IsNullOrEmpty(sKeyValues))
                {
                    string[] oValuePairs = sKeyValues.Split('|');

                    for (int i = 0; i < oValuePairs.Length; i++)
                    {
                        if (oValuePairs[i] != null)
                        {
                            if (!String.IsNullOrEmpty(oValuePairs[i]))
                            {
                                string[] oRec = oValuePairs[i].Split('=');
                                if (oRec != null)
                                {
                                    if (oRec[0] == _Field)
                                    {
                                        return oRec[1];
                                    }
                                }
                            }
                        }
                    }
                }

                return "";

            }
            catch
            {
                return "";
            }
        }

        public bool SetValue_SiteDynamics(string _Field, string _Value)
        {
            try
            {
                string sKeyValues = "";
                string sNewKeyValues = "";
                if (HttpContext.Current.Session["_SiteDynamics"] != null)
                {
                    sKeyValues = HttpContext.Current.Session["_SiteDynamics"].ToString();
                }
                if (sKeyValues != null)
                {
                    string[] ValuePairs = sKeyValues.Split('|');
                    bool bValueSet = false;
                    if (ValuePairs != null)
                    {
                        if (ValuePairs.Length > 0)
                        {
                            for (int i = 0; i < ValuePairs.Length; i++)
                            {
                                #region
                                try
                                {
                                    if (ValuePairs[i] != null)
                                    {
                                        string[] oValues = ValuePairs[i].Split('=');
                                        if (oValues != null)
                                        {
                                            if (oValues.Length > 1)
                                            {
                                                if (oValues[0] == _Field)
                                                {
                                                    ValuePairs[i] = _Field + "=" + _Value;
                                                    oValues[0] = _Field;
                                                    oValues[1] = _Value;
                                                    bValueSet = true;
                                                }
                                                sNewKeyValues += "|" + oValues[0] + "=" + oValues[1];
                                            }
                                        }
                                    }
                                }
                                catch
                                {
                                }
                                #endregion
                            }

                            if (bValueSet == false)
                            {
                                sNewKeyValues += "|" + _Field + "=" + _Value;
                            }
                        }
                        else
                        {
                            sNewKeyValues += "|" + _Field + "=" + _Value;
                        }
                    }
                    else
                    {
                        sNewKeyValues += "|" + _Field + "=" + _Value;
                    }
                }
                else
                {
                    sNewKeyValues += "|" + _Field + "=" + _Value;
                }

                HttpContext.Current.Session["_SiteDynamics"] = sNewKeyValues;

                return true;
            }
            catch
            {
                return false;
            }
        }
        public string GetValue_SiteDynamics(string _Field)
        {
            try
            {
                string sKeyValues = "";
                if (HttpContext.Current.Session["_SiteDynamics"] != null)
                {
                    sKeyValues = HttpContext.Current.Session["_SiteDynamics"].ToString();
                }

                if (!String.IsNullOrEmpty(sKeyValues))
                {
                    string[] oValuePairs = sKeyValues.Split('|');

                    for (int i = 0; i < oValuePairs.Length; i++)
                    {
                        if (oValuePairs[i] != null)
                        {
                            if (!String.IsNullOrEmpty(oValuePairs[i]))
                            {
                                string[] oRec = oValuePairs[i].Split('=');
                                if (oRec != null)
                                {
                                    if (oRec[0] == _Field)
                                    {
                                        return oRec[1];
                                    }
                                }
                            }
                        }
                    }
                }

                return "";

            }
            catch
            {
                return "";
            }
        }

        public void SendMessage(string _From, string _FromName, string _To, string _ToName, string _Subject, string _Message)
        {
            try
            {
                new Thread(() =>
                {
                    string sSMTPUserName = "";
                    string sSMTPPassword = "";
                    string sSMTPPort = "";
                    string sSMTPUseSSL = "";
                    string sSMTPServer = "";
                    string sBcc = "";
                    string sFromEmail = _From;
                    string sFromName = _FromName;

                    #region Get Settings
                    if (rsGlobalVeriables == null)
                    {
                        rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
                    }
                    try
                    {
                        sSMTPUserName = rsGlobalVeriables.SMTPUserName;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPPassword = rsGlobalVeriables.SMTPPassword;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPPort = rsGlobalVeriables.SMTPPort.ToString();
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPUseSSL = rsGlobalVeriables.SMTPUseSSL;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPServer = rsGlobalVeriables.SMTPServer;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sBcc = rsGlobalVeriables.WebMasterEmail;
                    }
                    catch
                    {
                    }
                    #endregion

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
                    string sMessage = _Message;
                    string sSubject = _Subject;
                    string sTo = _To;

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
                    try
                    {
                        SmtpMail.Send(mail);
                    }
                    catch
                    {
                    }

                }).Start();


                #region Option to send using SengGrid API
                //string sSMTPUserName = "";
                //string sSMTPPassword = "";
                //string sSMTPPort = "";
                //string sSMTPUseSSL = "";
                //string sSMTPServer = "";
                //string sBcc = "";
                //string sFromEmail = _From;
                //string sFromName = _FromName;

                //#region Get Settings
                //if (rsGlobalVeriables == null)
                //{
                //    rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
                //}
                //try
                //{
                //    sSMTPUserName = rsGlobalVeriables.SMTPUserName;
                //}
                //catch
                //{
                //}

                //try
                //{
                //    sSMTPPassword = rsGlobalVeriables.SMTPPassword;
                //}
                //catch
                //{
                //}

                //try
                //{
                //    sSMTPPort = rsGlobalVeriables.SMTPPort.ToString();
                //}
                //catch
                //{
                //}

                //try
                //{
                //    sSMTPUseSSL = rsGlobalVeriables.SMTPUseSSL;
                //}
                //catch
                //{
                //}

                //try
                //{
                //    sSMTPServer = rsGlobalVeriables.SMTPServer;
                //}
                //catch
                //{
                //}

                //try
                //{
                //    sBcc = rsGlobalVeriables.WebMasterEmail;
                //}
                //catch
                //{
                //}
                //#endregion

                //bool bIsHtml = true;
                //int iPort = 25;
                //try
                //{
                //    iPort = System.Convert.ToInt32(sSMTPPort);
                //}
                //catch
                //{
                //    iPort = 25;
                //}

                //bool bSSL = false;
                //try
                //{
                //    bSSL = System.Convert.ToBoolean(sSMTPUseSSL);
                //}
                //catch
                //{
                //}

                //string sMessage = _Message;
                //string sSubject = _Subject;
                //string sTo = _To;


                //SendGrid.SendGridClient oMail = new SendGrid.SendGridClient(sSMTPPassword);

                //// Send a Single Email using the Mail Helper
                //SendGrid.Helpers.Mail.EmailAddress oFrom = new SendGrid.Helpers.Mail.EmailAddress(_From, sFromName);
                //SendGrid.Helpers.Mail.EmailAddress oTo = new SendGrid.Helpers.Mail.EmailAddress(_To, _ToName);
                //SendGrid.Helpers.Mail.SendGridMessage oMesage = SendGrid.Helpers.Mail.MailHelper.CreateSingleEmail(oFrom, oTo, _Subject, "", _Message);


                //oMail.SendEmailAsync(oMesage);

                #endregion
            }
            catch
            {
            }
        }

        public void Send_SMS_Message(string _From, string _FromName, string _To, string _ToName, string _Subject, string _Message)
        {
            try
            {
                new Thread(() =>
                {
                    string sSMTPUserName = "";
                    string sSMTPPassword = "";
                    string sSMTPPort = "";
                    string sSMTPUseSSL = "";
                    string sSMTPServer = "";
                    string sBcc = "";
                    string sFromEmail = _From;
                    string sFromName = _FromName;

                    #region Get Settings
                    if (rsGlobalVeriables == null)
                    {
                        rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
                    }
                    try
                    {
                        sSMTPUserName = rsGlobalVeriables.SMTPUserName;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPPassword = rsGlobalVeriables.SMTPPassword;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPPort = rsGlobalVeriables.SMTPPort.ToString();
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPUseSSL = rsGlobalVeriables.SMTPUseSSL;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sSMTPServer = rsGlobalVeriables.SMTPServer;
                    }
                    catch
                    {
                    }

                    try
                    {
                        sBcc = rsGlobalVeriables.WebMasterEmail;
                    }
                    catch
                    {
                    }
                    #endregion

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
                    string sMessage = _Message;
                    string sSubject = _Subject;
                    string sTo = _To;

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
                    try
                    {
                        SmtpMail.Send(mail);
                    }
                    catch
                    {
                    }

                }).Start();
            }
            catch
            {
            }
        }

        public void SendMarketing_Campiag(int iListID)
        {
            try
            {
                if(iListID > 0)
                {
                    if(cnCon != null)
                    {
                        if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                        {
                            List<DataParameter> lstParameters = new List<DataParameter>();
                            DataParameter pParameter = null;

                            DINT_WebSiteEMailCampaign dbUWebSiteEMailCampaign = new DINT_WebSiteEMailCampaign(cnCon);

                            lstParameters = new List<DataParameter>();
                            pParameter = null;
                            pParameter = new DataParameter("ID", "'" + iListID + "'", "int", 11, "ID", " = ", "");
                            lstParameters.Add(pParameter);


                            List<DEF_WebSiteEMailCampaign.RecordObject> lstWebSiteEMailCampaign = dbUWebSiteEMailCampaign.Get(lstParameters);

                            if (lstWebSiteEMailCampaign != null)
                            {
                                if (lstWebSiteEMailCampaign.Count > 0)
                                {
                                    DINT_WebSiteEMailCampaignLists dbWebSiteEMailCampaignLists = new DINT_WebSiteEMailCampaignLists(cnCon);

                                    lstParameters = new List<DataParameter>();
                                    pParameter = null;
                                    pParameter = new DataParameter("iParentID", "'" + iListID + "'", "int", 11, "iParentID", " = ", "");
                                    lstParameters.Add(pParameter);

                                    List<DEF_WebSiteEMailCampaignLists.RecordObject> lstWebSiteEMailCampaignLists = dbWebSiteEMailCampaignLists.Get(lstParameters);

                                    if (lstWebSiteEMailCampaignLists != null)
                                    {
                                        if (lstWebSiteEMailCampaignLists.Count > 0)
                                        {
                                            foreach (DEF_WebSiteEMailCampaignLists.RecordObject oCampList in lstWebSiteEMailCampaignLists)
                                            {
                                                if (oCampList.iListID > 0)
                                                {
                                                    #region Send to each member
                                                    try
                                                    {
                                                        DINT_WebMarketingListsMembers dbWebMarketingListsMembers = new DINT_WebMarketingListsMembers(cnCon);

                                                        #region Filter
                                                        lstParameters = new List<DataParameter>();
                                                        pParameter = null;
                                                        pParameter = new DataParameter("iParentID", "'" + oCampList.iListID + "'", "int", 11, "iParentID", " = ", "");
                                                        lstParameters.Add(pParameter);
                                                        pParameter = new DataParameter("bDisabled", "'" + "False" + "'", "bool", 11, "bDisabled", " = ", " and ");
                                                        lstParameters.Add(pParameter);
                                                        pParameter = new DataParameter("bSuspended", "'" + "False" + "'", "bool", 11, "bSuspended", " = ", " and ");
                                                        lstParameters.Add(pParameter);
                                                        pParameter = new DataParameter("bNegative", "'" + "False" + "'", "bool", 11, "bNegative", " = ", " and ");
                                                        lstParameters.Add(pParameter);
                                                        pParameter = new DataParameter("bHidden", "'" + "False" + "'", "bool", 11, "bHidden", " = ", " and ");
                                                        lstParameters.Add(pParameter);
                                                        #endregion

                                                        List<DEF_WebMarketingListsMembers.RecordObject> lstDEF_WebMarketingListsMembers = dbWebMarketingListsMembers.Get(lstParameters);
                                                        if (lstDEF_WebMarketingListsMembers != null)
                                                        {
                                                            if (lstDEF_WebMarketingListsMembers.Count > 0)
                                                            {
                                                                #region Send to each member of the list
                                                                foreach (DEF_WebMarketingListsMembers.RecordObject oRecipient in lstDEF_WebMarketingListsMembers)
                                                                {
                                                                    if (oRecipient != null)
                                                                    {
                                                                        if (oRecipient.bDisabled == false)
                                                                        {
                                                                            if (oRecipient.bSuspended == false)
                                                                            {
                                                                                if (oRecipient.bNegative == false)
                                                                                {
                                                                                    if (oRecipient.bHidden == false)
                                                                                    {
                                                                                        string sMessage = Parse_Marketing_Message(lstWebSiteEMailCampaign[0].sHTML1, oRecipient.sFName, oRecipient.sLName, oRecipient.sEMail, oRecipient.sCellPhone, oRecipient.sAvitarURL);
                                                                                        string sSubject = Parse_Marketing_Message(lstWebSiteEMailCampaign[0].sSubjectLine1, oRecipient.sFName, oRecipient.sLName, oRecipient.sEMail, oRecipient.sCellPhone, oRecipient.sAvitarURL);

                                                                                        SendMessage(lstWebSiteEMailCampaign[0].sFromEmail, lstWebSiteEMailCampaign[0].sFromName, oRecipient.sEMail, oRecipient.sFName + " " + oRecipient.sLName, sSubject, sMessage);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                #endregion
                                                            }
                                                            else
                                                            {
                                                                //No list members

                                                            }
                                                        }
                                                        else
                                                        {
                                                            //No members of the campaign
                                                        }
                                                    }
                                                    catch(Exception s1)
                                                    {

                                                    }
                                                    #endregion
                                                }
                                            }
                                        }
                                        else
                                        {
                                            //No Associated lists to send to

                                        }
                                    }
                                    else
                                    {
                                        //No Associated lists to send to

                                    }
                                }
                                else
                                {
                                    //Could not find campaign

                                }
                            }
                            else
                            {
                                //Could not find campaign
                            }
                        }
                        else
                        {
                            //Connection not open
                        }
                    }
                    else
                    {
                        //Null connection
                    }
                }
                else
                {
                    //Invalid List Id
                }

            }
            catch(Exception s)
            {
            }
        }
        public string Parse_Marketing_Message(string _RawMessage, string _sFName, string _sLName, string _sEMail, string _sCellPhone, string _sAvitarURL)
        {
            try
            {
                string sReturn = "";
                sReturn = _RawMessage;

                sReturn = sReturn.Replace("##sFName##", _sFName);
                sReturn = sReturn.Replace("##sLName##", _sLName);
                sReturn = sReturn.Replace("##sEMail##", _sEMail);
                sReturn = sReturn.Replace("##sCellPhone##", _sCellPhone);
                sReturn = sReturn.Replace("##sAvitarURL##", _sAvitarURL);
                
                return sReturn;
            }
            catch
            {
                return _RawMessage;
            }
        }

        public void RecordEvent(int iEventID, string sEventName, string sMessage)
        {
            try
            {
                if (cnCon != null)
                {
                    if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        #region Record Event
                        DINT_WebSiteEvents dbSitEvent = new DINT_WebSiteEvents(cnCon);
                        DEF_WebSiteEvents.RecordObject oRecord = new DEF_WebSiteEvents.RecordObject();
                        oRecord.iParentID = System.Convert.ToInt32(rsGlobalVeriables.SiteID);
                        oRecord.sParentID = rsGlobalVeriables.Name;

                        oRecord.sControl = Guid.NewGuid().ToString();
                        oRecord.sCookieID = UserCookie.CookieID;
                        oRecord.iTypeID = iEventID;
                        oRecord.sTypeID = sEventName;
                        oRecord.dtDateCreated = DateTime.Now;
                        oRecord.dtLastUpdated = DateTime.Now;
                        oRecord.sEvent = sMessage;

                        #region Get User Info from Browser
                        try
                        {
                            oRecord.sLog = sMessage;
                        }
                        catch
                        {
                        }
                        try
                        {
                            oRecord.sNotes = "IP Address: " + VisitorHTTPValues.VisitorIPAddress() + " " + VisitorHTTPValues.ToString();
                        }
                        catch
                        {
                        }
                        #endregion

                        if (CurrentUser != null)
                        {
                            oRecord.iCreatedByID = CurrentUser.UserView.User.ID;
                            oRecord.sCreatedByID = CurrentUser.UserView.User.sFName + " " + CurrentUser.UserView.User.sLName;

                            oRecord.iUpdatedByID = CurrentUser.UserView.User.ID;
                            oRecord.sUpdatedByID = CurrentUser.UserView.User.sFName + " " + CurrentUser.UserView.User.sLName;
                        }
                        else
                        {
                            oRecord.iCreatedByID = -1;
                            oRecord.sCreatedByID = "Unregistered";

                            oRecord.iUpdatedByID = -1;
                            oRecord.sUpdatedByID = "Unregistered";
                        }


                        dbSitEvent.Insert_SQL(oRecord);
                        #endregion
                    }
                }
            }
            catch
            {

            }
        }

        public bool UpdateProperty(string _sField, string _sValue)
        {
            try
            {
                bool bResponse = false;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (CurrentUser != null)
                    {
                        if (CurrentUser.UserView != null)
                        {
                            if (CurrentUser.UserView.UserLoggedIn == true)
                            {
                                if (CurrentUser.UserView.User != null)
                                {
                                    if (CurrentUser.UserView.User.ID > 0)
                                    {
                                        if (CurrentUser.UserView.Properties != null)
                                        {
                                            if (CurrentUser.UserView.Properties.UsersProperties != null)
                                            {
                                                foreach (DEF_UsersProperties.RecordObject oProp in CurrentUser.UserView.Properties.UsersProperties)
                                                {
                                                    if (oProp.sFieldName == _sField)
                                                    {
                                                        oProp.sValue = _sValue;
                                                        CurrentUser.UserView.Properties.UpdatePropertyValue(cnCon, oProp);
                                                        bResponse = true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        public bool BuildUserExtendedData()
        {
            try
            {
                bool bResponse = false;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (CurrentUser != null)
                    {
                        if (CurrentUser.UserView != null)
                        {
                            if (CurrentUser.UserView.UserLoggedIn == true)
                            {
                                if (CurrentUser.UserView.User != null)
                                {
                                    if (CurrentUser.UserView.User.ID > 0)
                                    {
                                        if (CurrentUser.UserView.Properties != null)
                                        {
                                            if (CurrentUser.UserView.Properties.UsersProperties != null)
                                            {
                                                bool biLinkedSystemID = false;

                                                foreach (DEF_UsersProperties.RecordObject oProp in CurrentUser.UserView.Properties.UsersProperties)
                                                {
                                                    #region Check to see if those properties
                                                    if (oProp.sFieldName == "iAgentID")
                                                    {
                                                        biLinkedSystemID = true;
                                                    }
                                                    #endregion
                                                }

                                                DINT_UsersProperties oUsersProperties = new DINT_UsersProperties(cnCon);
                                                DEF_UsersProperties.RecordObject rec_Property = null;
                                                #region Any fields missing add them now
                                                if (biLinkedSystemID == false)
                                                {
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
                                                        rec_Property.iParentID = CurrentUser.UserView.User.ID;
                                                        rec_Property.sParentID = CurrentUser.UserView.User.sFName + " " + CurrentUser.UserView.User.sLName;
                                                        #endregion

                                                        rec_Property.sFieldName = "iAgentID";
                                                        rec_Property.sValue = "0";
                                                        oUsersProperties.Insert_SQL(rec_Property);
                                                    }
                                                    catch
                                                    {
                                                    }
                                                    #endregion
                                                }
                                                #endregion

                                                CurrentUser.UserView.Properties.GetView(cnCon, CurrentUser.UserView.User.ID);
                                                bResponse = true;
                                                BuildCustomUserExtendedData();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                }
                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        public bool GetUserExtendedData()
        {
            try
            {
                bool bResponse = false;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (CurrentUser.UserView.Properties == null)
                    {
                        BuildUserExtendedData();
                    }

                    if (CurrentUser.UserView.Properties.UsersProperties == null)
                    {
                        BuildUserExtendedData();
                    }

                    if (CurrentUser.UserView.Properties.UsersProperties.Count <= 0)
                    {
                        BuildUserExtendedData();
                    }

                    GetCustomUserExtendedData();
                }
                return bResponse;
            }
            catch
            {
                return false;
            }
        }

        public string GetUserServiceKey()
        {
            try
            {
                string sKEY = "";

                sKEY = CurrentUser.UserView.User.ID.ToString() + "|" + CurrentUser.UserView.User.sAccessKey + "|" + CurrentUser.UserView.User.sUserName;

                sKEY = rsGlobalVeriables.oEncryption.Encrypt(sKEY);
                return sKEY;
            }
            catch
            {
                return "ERROR";
            }
        }

        public string[] SetUserServiceKey(string _Key)
        {
            try
            {
                string sKEY = "";
                sKEY = rsGlobalVeriables.oEncryption.Decrypt(_Key);
                string[] oValues = sKEY.Split('|');

                return oValues;
            }
            catch
            {
                return null;
            }
        }

        public bool AuthenticateViaServiceKey(string _Key)
        {
            try
            {
                bool bResponse = false;
                string[] oValues = SetUserServiceKey(_Key);


                DINT_Users oUser = new DINT_Users(cnCon);
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sUserName", "'" + oValues[2] + "'", "string", 11, "sUserName", " = ", "");
                lstParameters.Add(pParameter);

                List<DEF_Users.RecordObject> rlUsers = oUser.Get(lstParameters);
                if (rlUsers != null)
                {
                    foreach (DEF_Users.RecordObject _oU in rlUsers)
                    {
                        if (_oU != null)
                        {
                            if (_oU.sUserName == oValues[2])
                            {
                                if (_oU.sAccessKey == oValues[1])
                                {
                                    ACMSDBView.UserAuthentication oUserAuth = new UserAuthentication();
                                    oUserAuth.UserName = oValues[2];
                                    oUserAuth.Password = rsGlobalVeriables.oEncryption.Decrypt(_oU.sPassword);
                                    bResponse = UserLogIn(oUserAuth, out sProcessError);
                                }
                            }
                        }
                    }
                }


                return bResponse;
            }
            catch
            {
                return false;
            }
        }

        public bool GetCurrentUser()
        {
            try
            {

                if (HttpContext.Current.Session["_iUserID"] != null)
                {
                    if (HttpContext.Current.Session["_sUserAccessKey"] != null)
                    {
                        string sTemp_ID = HttpContext.Current.Session["_iUserID"].ToString();
                        string sTemp_AccessKey = HttpContext.Current.Session["_sUserAccessKey"].ToString();
                        int iID = System.Convert.ToInt32(sTemp_ID);
                        if (iID > 0)
                        {
                            if (cnCon == null)
                            {
                                OpenDataConnection();
                            }
                            if (CurrentUser == null)
                            {
                                CurrentUser = new ACMSUser.UserSecurity();
                            }
                            sTemp_AccessKey = rsGlobalVeriables.oEncryption.Decrypt(sTemp_AccessKey);

                            UserViewModel oUserView = new UserViewModel(cnCon, iID);
                            if (oUserView.User.sAccessKey == sTemp_AccessKey)
                            {
                                oUserView.UserLoggedIn = true;
                            }

                            if (oUserView.UserLoggedIn == true)
                            {
                                CurrentUser.AuthenticatedUser = true;
                                CurrentUser.UserView = oUserView;
                            }
                            oUserView.Get_Countries(cnCon);
                            oUserView.Get_States(cnCon);
                            GetCustomCurrentUser();
                            return CurrentUser.AuthenticatedUser;
                        }
                        else
                        {
                            return true;
                        }
                    }
                    else
                    {
                        return true;
                    }
                }
                else
                {
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        public bool GetCurrentUserRecord(string _Id)
        {
            try
            {
                int iID = System.Convert.ToInt32(_Id);
                if (iID > 0)
                {
                    if (cnCon == null)
                    {
                        OpenDataConnection();
                    }
                    if (CurrentUser == null)
                    {
                        CurrentUser = new ACMSUser.UserSecurity();
                    }

                    UserViewModel oUserView = new UserViewModel(cnCon, iID);
                    CurrentUser.UserView = oUserView;

                    GetCustomCurrentUser();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
        public void SetCurrentUser()
        {
            if (CurrentUser.AuthenticatedUser == true)
            {
                HttpContext.Current.Session["_iUserID"] = CurrentUser.UserView.User.ID;
                HttpContext.Current.Session["_sUserAccessKey"] = rsGlobalVeriables.oEncryption.Encrypt(CurrentUser.UserView.User.sAccessKey);
                SetCustomCurrentUser();
            }
        }
        public bool CheckScreenAccessRights(int[] _RequiredRolelID)
        {
            try
            {
                if (_RequiredRolelID != null)
                {
                    if (_RequiredRolelID.Length > 0)
                    {
                        if (CurrentUser != null)
                        {
                            if (CurrentUser.AuthenticatedUser == true)
                            {
                                if (CurrentUser.UserView != null)
                                {
                                    if (CurrentUser.UserView.GoodUserModel == true)
                                    {
                                        if (!IsStoreClosed())
                                        {
                                            string sUSERIP = VisitorHTTPValues.VisitorIPAddress();
                                            if (!IsIPBlackList_ByConfig(sUSERIP))
                                            {
                                                foreach (int iRoleID in _RequiredRolelID)
                                                {
                                                    if (CurrentUser.CheckUsersRoles(iRoleID) != ACMSUser.UserSecurity.AccessRights.None)
                                                    {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                return false;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// This function allows you to check to see if the site is off line between specific times
        /// </summary>
        /// <returns></returns>
        public bool IsStoreClosed()
        {
            try
            {
                //DateTime dtFrom = DateTime.Parse(DateTime.Now.ToShortDateString() + " 1:00 AM");
                //DateTime dtTo = DateTime.Parse(DateTime.Now.ToShortDateString() + " 5:00 AM");

                //if ((DateTime.Now >= dtFrom) && (DateTime.Now <= dtTo))
                //{
                //    return true;
                //}



                return false;

            }
            catch
            {
                return true;
            }
        }

        /// <summary>
        /// Each log in attempt is recorded and then set to 0 once a good attempt is completed
        /// </summary>
        /// <returns></returns>
        public int CheckFailed_LogInAttempt()
        {
            try
            {
                int iAttempts = 0;
                if (HttpContext.Current.Session["_iLogInAttemp"] != null)
                {
                    iAttempts = System.Convert.ToInt32(HttpContext.Current.Session["_iLogInAttemp"].ToString());
                }
                else
                {
                    HttpContext.Current.Session["_iLogInAttemp"] = "0";
                }

                return iAttempts;
            }
            catch
            {
                return -1;
            }
        }
        public int iLogInAttempt { get; set; }
        public bool IncrementLogInAttempt()
        {
            try
            {
                try
                {
                    if (HttpContext.Current.Session["_iLogInAttemp"] != null)
                    {
                        iLogInAttempt = System.Convert.ToInt32(HttpContext.Current.Session["_iLogInAttemp"].ToString());

                        iLogInAttempt++;
                    }
                }
                catch
                {

                }
                HttpContext.Current.Session["_iLogInAttemp"] = iLogInAttempt;

                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool AutoLogIn()
        {
            try
            {
                bool bResponse = false;
                UserCookie.GetCookie();

                string sAccessValue = rsGlobalVeriables.oEncryption.Decrypt(UserCookie.UserAccess);
                string[] oAccess = sAccessValue.Split('|');


                string sTemp_ID = oAccess[0];
                string sTemp_AccessKey = oAccess[1]; ;

                int iID = System.Convert.ToInt32(sTemp_ID);
                if (iID > 0)
                {
                    if (cnCon == null)
                    {
                        OpenDataConnection();
                    }
                    if (CurrentUser == null)
                    {
                        CurrentUser = new ACMSUser.UserSecurity();
                    }
                    sTemp_AccessKey = rsGlobalVeriables.oEncryption.Decrypt(sTemp_AccessKey);

                    UserViewModel oUserView = new UserViewModel(cnCon, iID);
                    if (oUserView.User.sAccessKey == sTemp_AccessKey)
                    {
                        oUserView.UserLoggedIn = true;
                    }

                    if (oUserView.UserLoggedIn == true)
                    {
                        CurrentUser.AuthenticatedUser = true;
                        CurrentUser.UserView = oUserView;
                        SetCurrentUser();
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
        public bool SaveLogIn()
        {
            try
            {
                bool bResponse = false;

                UserCookie.UserAccess = CurrentUser.UserView.User.ID.ToString() + "|" + rsGlobalVeriables.oEncryption.Encrypt(CurrentUser.UserView.User.sAccessKey);
                UserCookie.UserAccess = rsGlobalVeriables.oEncryption.Encrypt(UserCookie.UserAccess);
                UserCookie.SetCookie();

                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        public bool ClearSavedLogIn()
        {
            try
            {
                bool bResponse = false;

                UserCookie.ClearCookie();

                return bResponse;
            }
            catch
            {
                return false;
            }
        }

        public bool UserLogIn(ACMSDBView.UserAuthentication oUserAuth, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = false;
                if (oUserAuth != null)
                {
                    if (!String.IsNullOrEmpty(oUserAuth.UserName))
                    {
                        if (!String.IsNullOrEmpty(oUserAuth.Password))
                        {
                            if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                            {
                                CurrentUser = new ACMSUser.UserSecurity(cnCon);
                                if (CurrentUser.LogIn(oUserAuth, rsGlobalVeriables))
                                {

                                    oUserAuth.AccessGranted = true;
                                    _ProcessMessage = "Success You Are In";
                                    SetCurrentUser();
                                    bResponse = true;
                                    SetUserLoggedIn();
                                    return bResponse;
                                }
                                else
                                {
                                    _ProcessMessage = "Sorry I could not match your credentials!";
                                    bResponse = false;
                                    IncrementLogInAttempt();
                                    return bResponse;
                                }
                            }
                            else
                            {
                                _ProcessMessage = "Sorry Log In Faild, data source error!";
                                bResponse = false;
                                IncrementLogInAttempt();
                                return bResponse;
                            }
                        }
                        else
                        {
                            _ProcessMessage = "Invalid password!";
                            bResponse = false;
                            IncrementLogInAttempt();
                            return bResponse;
                        }
                    }
                    else
                    {
                        _ProcessMessage = "Invalid user name!";
                        bResponse = false;
                        IncrementLogInAttempt();
                        return bResponse;
                    }
                }
                else
                {
                    _ProcessMessage = "Please enter a valid user name and password!";
                    bResponse = false;
                    IncrementLogInAttempt();
                    return bResponse;
                }
            }
            catch (Exception s)
            {
                _ProcessMessage = "System Error :" + s.ToString();
                bResponse = false;
                IncrementLogInAttempt();
                return bResponse;
            }
        }
        public bool IsUserLoggedIn()
        {
            bool bResponse = false;
            try
            {
                if (CurrentUser != null)
                {
                    if (CurrentUser.UserView != null)
                    {
                        if (CurrentUser.UserView.User != null)
                        {
                            if (CurrentUser.UserView.User.ID > 0)
                            {
                                if (CurrentUser.AuthenticatedUser == true)
                                {
                                    bResponse = true;
                                    return bResponse;
                                }
                            }
                        }
                    }
                }

            }
            catch
            {
            }
            return bResponse;
        }
        
        public bool UserLoggOff(bool bClearCookie = true)
        {
            try
            {
                SetUserLoggedOff();
                HttpContext.Current.Session["_iUserID"] = "";
                HttpContext.Current.Session["_sUserAccessKey"] = "";
                if (bClearCookie == true)
                {
                    UserCookie.ClearCookie();
                }
                return true;
            }
            catch (Exception s)
            {
                return false;
            }
        }
        public bool SetUserLoggedIn()
        {
            try
            {
                bool bOpennedDataConnection = false;

                if (cnCon == null)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }

                if (cnCon.ConnectionStatus != ConnectionStatusTypes.Open)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }
                if (CurrentUser != null)
                {
                    if (CurrentUser.UserView != null)
                    {
                        if (CurrentUser.UserView.User != null)
                        {
                            if (CurrentUser.UserView.User.ID > 0)
                            {
                                CurrentUser.UserView.User.bCurrentlyLoggedIn = true;
                                CurrentUser.UserView.User.sCurrentSession = Guid.NewGuid().ToString();
                                CurrentUser.UserView.User.dtLastLoggedIn = DateTime.Now;
                                if (cnCon != null)
                                {
                                    if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                                    {
                                        DINT_Users dbUsers = new DINT_Users(cnCon);
                                        dbUsers.Update_SQL(CurrentUser.UserView.User);
                                    }
                                }
                            }
                        }
                    }
                }
                if (bOpennedDataConnection == true)
                {
                    CloseDataConnection();
                }

                return true;
            }
            catch (Exception s)
            {
                return false;
            }
        }

        public bool SetUserLoggedOff()
        {
            try
            {
                bool bOpennedDataConnection = false;

                if (cnCon == null)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }

                if (cnCon.ConnectionStatus != ConnectionStatusTypes.Open)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }
                if (CurrentUser != null)
                {
                    if (CurrentUser.UserView != null)
                    {
                        if (CurrentUser.UserView.User != null)
                        {
                            if (CurrentUser.UserView.User.ID > 0)
                            {
                                CurrentUser.UserView.User.bCurrentlyLoggedIn = false;
                                CurrentUser.UserView.User.sCurrentSession = "";
                                if (cnCon != null)
                                {
                                    if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                                    {
                                        DINT_Users dbUsers = new DINT_Users(cnCon);
                                        dbUsers.Update_SQL(CurrentUser.UserView.User);
                                    }
                                }
                            }
                        }
                    }
                }

                if (bOpennedDataConnection == true)
                {
                    CloseDataConnection();
                }
                HttpContext.Current.Session["_iUserID"] = "";
                HttpContext.Current.Session["_sUserAccessKey"] = "";
                return true;
            }
            catch (Exception s)
            {
                return false;
            }
        }

        public bool LogSiteActivity(string _EventSubject, string _EventLog, int _iSiteID = 1, string _sSiteID = "Default",
            int _iTypeID = 3, string _sTypeID = "Event Log", string _Notes = "",
            string _UserCookieID = "", string _UserIP = "")
        {
            try
            {
                bool bOpennedDataConnection = false;
                if (cnCon == null)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }

                if (cnCon.ConnectionStatus != ConnectionStatusTypes.Open)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }

                int _iUserID = -1;
                string _sUserID = "Unknown";
                string _sUserCookie = "";
                string _sUserIPAddress = "";
                #region Get User Identiy
                try
                {
                    GetCurrentUser();
                    if (CurrentUser != null)
                    {
                        if (CurrentUser.UserView != null)
                        {
                            if (CurrentUser.UserView.User != null)
                            {
                                _iUserID = CurrentUser.UserView.User.ID;
                                _sUserID = CurrentUser.UserView.User.sUserName;
                                if (VisitorHTTPValues != null)
                                {
                                    _sUserIPAddress = VisitorHTTPValues.VisitorIPAddress();
                                }
                                if (UserCookie != null)
                                {
                                    _sUserCookie = UserCookie.CookieID;
                                }
                            }
                        }
                    }
                }
                catch
                {

                }
                #endregion

                if (String.IsNullOrEmpty(_UserCookieID))
                {
                    _UserCookieID = _sUserCookie;
                }
                if (String.IsNullOrEmpty(_UserIP))
                {
                    _UserIP = _sUserIPAddress;
                }

                DINT_WebSiteEvents dbWebSiteEvents = new DINT_WebSiteEvents(cnCon);

                DEF_WebSiteEvents.RecordObject rec_WebSiteEvents = new DEF_WebSiteEvents.RecordObject();

                rec_WebSiteEvents.iParentID = _iSiteID;
                rec_WebSiteEvents.sParentID = _sSiteID;
                rec_WebSiteEvents.sControl = Guid.NewGuid().ToString();
                rec_WebSiteEvents.dtDateCreated = DateTime.Now;
                rec_WebSiteEvents.dtLastUpdated = DateTime.Now;
                rec_WebSiteEvents.iCreatedByID = _iUserID;
                rec_WebSiteEvents.sCreatedByID = _sUserID;
                rec_WebSiteEvents.iUpdatedByID = _iUserID;
                rec_WebSiteEvents.sUpdatedByID = _sUserID;
                rec_WebSiteEvents.iTypeID = _iTypeID;
                rec_WebSiteEvents.sTypeID = _sTypeID;
                rec_WebSiteEvents.sEvent = _EventSubject;
                rec_WebSiteEvents.sLog = _EventLog;
                rec_WebSiteEvents.sNotes = _Notes;
                rec_WebSiteEvents.sCookieID = _UserCookieID;
                rec_WebSiteEvents.sIP = _UserIP;

                dbWebSiteEvents.Insert_SQL(rec_WebSiteEvents);


                if (bOpennedDataConnection == true)
                {
                    CloseDataConnection();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        
        public bool LogUserSiteActivity(string _EventSubject, string _EventLog, int _iSiteID = 1, string _sSiteID = "Default",
            int _iTypeID = 3, string _sTypeID = "Event Log", string _Notes = "",
            string _UserCookieID = "", string _UserIP = "")
        {
            try
            {
                bool bOpennedDataConnection = false;
                if (cnCon == null)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }

                if (cnCon.ConnectionStatus != ConnectionStatusTypes.Open)
                {
                    bOpennedDataConnection = true;
                    OpenDataConnection();
                }

                int _iUserID = -1;
                string _sUserID = "Unknown";
                string _sUserCookie = "";
                string _sUserIPAddress = "";
                #region Get User Identiy
                try
                {
                    GetCurrentUser();
                    if (CurrentUser != null)
                    {
                        if (CurrentUser.UserView != null)
                        {
                            if (CurrentUser.UserView.User != null)
                            {
                                _iUserID = CurrentUser.UserView.User.ID;
                                _sUserID = CurrentUser.UserView.User.sUserName;
                                if (VisitorHTTPValues != null)
                                {
                                    _sUserIPAddress = VisitorHTTPValues.VisitorIPAddress();
                                }
                                if (UserCookie != null)
                                {
                                    _sUserCookie = UserCookie.CookieID;
                                }
                            }
                        }
                    }
                }
                catch
                {

                }
                #endregion

                if (String.IsNullOrEmpty(_UserCookieID))
                {
                    _UserCookieID = _sUserCookie;
                }
                if (String.IsNullOrEmpty(_UserIP))
                {
                    _UserIP = _sUserIPAddress;
                }

                if (_iUserID > 0)
                {
                    DINT_UsersLogs dbUsersLogs = new DINT_UsersLogs(cnCon);

                    DEF_UsersLogs.RecordObject rec_UsersLogs = new DEF_UsersLogs.RecordObject();

                    rec_UsersLogs.iParentID = _iUserID;
                    rec_UsersLogs.sParentID = _sUserID;
                    rec_UsersLogs.sControl = Guid.NewGuid().ToString();
                    rec_UsersLogs.dtDateCreated = DateTime.Now;
                    rec_UsersLogs.dtLastUpdated = DateTime.Now;
                    rec_UsersLogs.iCreatedByID = _iUserID;
                    rec_UsersLogs.sCreatedByID = _sUserID;
                    rec_UsersLogs.iUpdatedByID = _iUserID;
                    rec_UsersLogs.sUpdatedByID = _sUserID;
                    rec_UsersLogs.sTitle = _iTypeID.ToString();
                    rec_UsersLogs.sSubject = _sTypeID + " " + _EventSubject;
                    rec_UsersLogs.sDescription = _EventLog;
                    rec_UsersLogs.sHTTPx = _Notes;
                    rec_UsersLogs.sOther = _UserCookieID;
                    rec_UsersLogs.sIP = _UserIP;

                    dbUsersLogs.Insert_SQL(rec_UsersLogs);
                }

                if (bOpennedDataConnection == true)
                {
                    CloseDataConnection();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }


        public bool IsIPBlackList_ByConfig(string _IPAddress, string _Type = "IPExclusionList")
        {
            try
            {
                bool bResponse = false;
                string sExclusion = "";
                try
                {
                    sExclusion = System.Configuration.ConfigurationManager.AppSettings[_Type].ToString();
                }
                catch
                {
                }

                string[] oList = sExclusion.Split(',');
                if (oList != null)
                {
                    if (oList.Length > 0)
                    {
                        for (int i = 0; i < oList.Length; i++)
                        {
                            if (oList[i] != null)
                            {
                                if (!String.IsNullOrEmpty(oList[i]))
                                {
                                    if (_IPAddress == oList[i])
                                    {
                                        bResponse = true;
                                        return bResponse;
                                    }
                                }
                            }
                        }
                    }
                }


                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        public bool IsIPBlackList(string _IPAddress)
        {
            try
            {
                bool bResponse = false;

                if (cnCon != null)
                {
                    if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {

                        DINT_WebSiteIPFilters dbInteraction = new DINT_WebSiteIPFilters(cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        //DataParameter pParameter = new DataParameter("bBlock", "'" + "true" + "'", "boole", 4, "bBlock", " LIKE ", "");
                        //lstParameters.Add(pParameter);

                        List<DEF_WebSiteIPFilters.RecordObject> dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                for (int i = 0; i < dbSearch.Count; i++)
                                {
                                    if (dbSearch[i].sIP == _IPAddress)
                                    {
                                        if (dbSearch[i].bBlock == true)
                                        {
                                            bResponse = true;
                                            return bResponse;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }



                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="_IPAddress"></param>
        /// <param name="_Type">AdminIPAccessAllow, PortalIPAccessAllow</param>
        /// <returns></returns>
        public bool IsIPAllowed_ByConfig(string _IPAddress, string _Type = "AdminIPAccessAllow")
        {
            try
            {
                bool bResponse = false;
                string sInclusionList = "";
                try
                {
                    sInclusionList = System.Configuration.ConfigurationManager.AppSettings[_Type].ToString();
                }
                catch
                {
                }

                string[] oList = sInclusionList.Split(',');
                if (oList != null)
                {
                    if (oList.Length > 0)
                    {
                        if (oList.Length == 1)
                        {
                            if (String.IsNullOrEmpty(oList[0]))
                            {
                                bResponse = true;
                                return bResponse;
                            }
                        }

                        for (int i = 0; i < oList.Length; i++)
                        {
                            if (oList[i] != null)
                            {
                                if (!String.IsNullOrEmpty(oList[i]))
                                {
                                    if (_IPAddress == oList[i])
                                    {
                                        bResponse = true;
                                        return bResponse;
                                    }
                                }
                            }
                        }
                    }
                    else
                    {
                        bResponse = true;
                        return bResponse;
                    }
                }
                else
                {
                    bResponse = true;
                    return bResponse;
                }


                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        public bool IsIPAllowed_ByRole(string _IPAddress, int[] _RequiredRolelID)
        {
            try
            {
                bool bResponse = false;

                if (cnCon != null)
                {
                    if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {

                        DINT_WebSiteIPFilters dbInteraction = new DINT_WebSiteIPFilters(cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        //DataParameter pParameter = new DataParameter("iRoleID", "'" + 1 + "'", "boole", 4, "iRoleID", " = ", "");
                        //lstParameters.Add(pParameter);

                        List<DEF_WebSiteIPFilters.RecordObject> dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                for (int i = 0; i < dbSearch.Count; i++)
                                {
                                    for (int i2 = 0; i2 < _RequiredRolelID.Length; i2++)
                                    {
                                        if (_RequiredRolelID[i2] == dbSearch[i].iRoleID)
                                        {
                                            if (dbSearch[i].bBlock == true)
                                            {
                                                bResponse = true;
                                                return bResponse;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                return bResponse;
            }
            catch
            {
                return false;
            }
        }
        public bool IsIPAllowed_ByRole2(string _IPAddress, int[] _RequiredRolelID)
        {
            try
            {
                bool bResponse = false;

                if (cnCon != null)
                {
                    if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {

                        DINT_Roles_Access dbInteraction = new DINT_Roles_Access(cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        //DataParameter pParameter = new DataParameter("iRoleID", "'" + 1 + "'", "boole", 4, "iRoleID", " = ", "");
                        //lstParameters.Add(pParameter);

                        List<DEF_Roles_Access.RecordObject> dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                for (int i = 0; i < dbSearch.Count; i++)
                                {
                                    for (int i2 = 0; i2 < _RequiredRolelID.Length; i2++)
                                    {
                                        if (_RequiredRolelID[i2] == dbSearch[i].iParentID)
                                        {
                                            if (dbSearch[i].bAllowAccess == true)
                                            {
                                                bResponse = true;
                                                return bResponse;
                                            }
                                            else if (dbSearch[i].bDenyAccess == true)
                                            {
                                                bResponse = false;
                                                return bResponse;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                return bResponse;
            }
            catch
            {
                return false;
            }
        }


        public bool OpenDataConnection()
        {
            try
            {
                #region Make sure we have everything to open the connection
                if (rsGlobalVeriables == null)
                {
                    rsGlobalVeriables = new ACMSGlobal.CMSGlobal();
                }
                if (cnCon == null)
                {
                    cnCon = ConnectionFactory.GetConnection(rsGlobalVeriables.DBConnectionType, rsGlobalVeriables.ConnectionString, null);
                }
                #endregion

                if (cnCon != null)
                {
                    if (cnCon.ConnectionStatus != ConnectionStatusTypes.Open)
                    {
                        if (!String.IsNullOrEmpty(rsGlobalVeriables.ConnectionString))
                        {
                            cnCon.OpenConnection(out sProcessError, rsGlobalVeriables.ConnectionString);
                        }
                    }


                    if (cnCon.OpenConnection() == ConnectionStatusTypes.Open)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch (Exception s)
            {
                return false;
            }
        }
        public bool CloseDataConnection()
        {
            try
            {
                if (cnCon != null)
                {
                    cnCon.CloseDataConnection();
                }
                return true;
            }
            catch (Exception s)
            {
                return false;
            }
        }





        public AriesCMSInteractions.DINT_WebSite odbWebSite;
        public List<AriesCMSDefinition.DEF_WebSite.RecordObject> lstWebSite;
        public AriesCMSDefinition.DEF_WebSite.RecordObject recWebSite;
        public bool WebSite_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process

            odbWebSite = new AriesCMSInteractions.DINT_WebSite(cnCon);
            int iTotalRows = 0;

            lstWebSite = null;
            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;

            if (_iParentID > 0)
            {
                pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }


            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                lstParameters = new List<DataParameter>();
                if (_iParentID > 0)
                {
                    pParameter = new DataParameter("sName", "'%" + Search + "%'", "string", 11, "sName", " LIKE ", " AND ");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
                }
                else
                {
                    pParameter = new DataParameter("sName", "'%" + Search + "%'", "string", 11, "sName", " LIKE ", " AND ");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
                }
                iTotalRows = odbWebSite.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbWebSite.GetRowCount(lstParameters);
            }

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSite = odbWebSite.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSite_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSite = new DINT_WebSite(cnCon);
                recWebSite = new DEF_WebSite.RecordObject();
                List<AriesCMSDefinition.DEF_WebSite.RecordObject> dbSearch = odbWebSite.Get(lstParameters);
                if (dbSearch != null)
                {
                    if (dbSearch.Count > 0)
                    {
                        recWebSite = dbSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbUsersMessages = new DINT_UsersMessages(cnCon);
                recUsersMessages = new DEF_UsersMessages.RecordObject();
                List<AriesCMSDefinition.DEF_UsersMessages.RecordObject> dbSearch = odbUsersMessages.Get(lstParameters);
                if (dbSearch != null)
                {
                    if (dbSearch.Count > 0)
                    {
                        recUsersMessages = dbSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_WebSite()
        {
            try
            {
                lstWebSite = new List<DEF_WebSite.RecordObject>();
                recWebSite = new DEF_WebSite.RecordObject();
            }
            catch
            {
            }
        }


        public AriesCMSInteractions.DINT_WebSite_Messaging odbWebSite_Messaging;
        public List<AriesCMSDefinition.DEF_WebSite_Messaging.RecordObject> lstWebSite_Messaging;
        public AriesCMSDefinition.DEF_WebSite_Messaging.RecordObject recWebSite_Messaging;
        public bool WebSite_Messaging_List(string Search, int _iParentID = 0, string _sParentID = "", int page = -1)
        {
            #region Process

            odbWebSite_Messaging = new AriesCMSInteractions.DINT_WebSite_Messaging(cnCon);
            int iTotalRows = 0;

            lstWebSite_Messaging = null;
            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;

            if (_iParentID > 0)
            {
                pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }


            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                lstParameters = new List<DataParameter>();
                if (_iParentID > 0)
                {
                    pParameter = new DataParameter("sName", "'%" + Search + "%'", "string", 11, "sName", " LIKE ", " AND ");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
                }
                else
                {
                    pParameter = new DataParameter("sName", "'%" + Search + "%'", "string", 11, "sName", " LIKE ", " AND ");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbWebSite_Messaging.GetRowCount(lstParameters);
                }
                iTotalRows = odbWebSite_Messaging.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbWebSite_Messaging.GetRowCount(lstParameters);
            }

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion

                if (page <= 0)
                {
                    lstWebSite_Messaging = odbWebSite_Messaging.Get(lstParameters);
                }
                else
                {
                    lstWebSite_Messaging = odbWebSite_Messaging.Get(lstParameters, iRow, iNextTop);
                }
                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSite_Messaging_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSite_Messaging = new DINT_WebSite_Messaging(cnCon);
                recWebSite_Messaging = new DEF_WebSite_Messaging.RecordObject();
                List<AriesCMSDefinition.DEF_WebSite_Messaging.RecordObject> dbSearch = odbWebSite_Messaging.Get(lstParameters);
                if (dbSearch != null)
                {
                    if (dbSearch.Count > 0)
                    {
                        recWebSite_Messaging = dbSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSite_Messaging = new DINT_WebSite_Messaging(cnCon);
                recWebSite_Messaging = new DEF_WebSite_Messaging.RecordObject();
                List<AriesCMSDefinition.DEF_WebSite_Messaging.RecordObject> dbSearch = odbWebSite_Messaging.Get(lstParameters);
                if (dbSearch != null)
                {
                    if (dbSearch.Count > 0)
                    {
                        recWebSite_Messaging = dbSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_WebSite_Messaging()
        {
            try
            {
                lstWebSite_Messaging = new List<DEF_WebSite_Messaging.RecordObject>();
                recWebSite_Messaging = new DEF_WebSite_Messaging.RecordObject();
            }
            catch
            {
            }
        }

        public string Parse_WebSite_Messaging_Template_SiteValues(string _OriginalMessage, AriesCMSDefinition.DEF_WebSite.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                #region WebSite
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.sName.ToString());
                sReturn = sReturn.Replace("#sAccesskey#", _rec.sAccesskey.ToString());
                sReturn = sReturn.Replace("#bSubScriptionBased#", _rec.bSubScriptionBased.ToString());
                sReturn = sReturn.Replace("#iRequiredRoleID#", _rec.iRequiredRoleID.ToString());
                sReturn = sReturn.Replace("#sRequiredRoleID#", _rec.sRequiredRoleID.ToString());
                sReturn = sReturn.Replace("#iDefaultTemplateID#", _rec.iDefaultTemplateID.ToString());
                sReturn = sReturn.Replace("#sDefaultTemplateID#", _rec.sDefaultTemplateID.ToString());
                sReturn = sReturn.Replace("#iDefaultBlogID#", _rec.iDefaultBlogID.ToString());
                sReturn = sReturn.Replace("#sDefaultBlogID#", _rec.sDefaultBlogID.ToString());
                sReturn = sReturn.Replace("#sDefaultMetaTags#", _rec.sDefaultMetaTags.ToString());
                sReturn = sReturn.Replace("#sDefaultClassification#", _rec.sDefaultClassification.ToString());
                sReturn = sReturn.Replace("#sDefaultDescription#", _rec.sDefaultDescription.ToString());
                sReturn = sReturn.Replace("#sDefaultKeyWords#", _rec.sDefaultKeyWords.ToString());
                sReturn = sReturn.Replace("#sSupportEmail#", _rec.sSupportEmail.ToString());
                sReturn = sReturn.Replace("#sWebMasterEmail#", _rec.sWebMasterEmail.ToString());
                sReturn = sReturn.Replace("#dUniqueVisitors#", _rec.dUniqueVisitors.ToString());
                sReturn = sReturn.Replace("#dVisits#", _rec.dVisits.ToString());
                sReturn = sReturn.Replace("#dPageViews#", _rec.dPageViews.ToString());
                sReturn = sReturn.Replace("#bRestrictAccess#", _rec.bRestrictAccess.ToString());
                sReturn = sReturn.Replace("#iNewRegMessageID#", _rec.iNewRegMessageID.ToString());
                sReturn = sReturn.Replace("#sNewRegMessageID#", _rec.sNewRegMessageID.ToString());
                sReturn = sReturn.Replace("#iNewsLetrRegMessageID#", _rec.iNewsLetrRegMessageID.ToString());
                sReturn = sReturn.Replace("#sNewsLetrRegMessageID#", _rec.sNewsLetrRegMessageID.ToString());
                sReturn = sReturn.Replace("#iContactConfMessageID#", _rec.iContactConfMessageID.ToString());
                sReturn = sReturn.Replace("#sContactConfMessageID#", _rec.sContactConfMessageID.ToString());
                sReturn = sReturn.Replace("#iLostPswdMessageID#", _rec.iLostPswdMessageID.ToString());
                sReturn = sReturn.Replace("#sLostPswdMessageID#", _rec.sLostPswdMessageID.ToString());
                #endregion
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_UserValues(string _OriginalMessage, AriesCMSDefinition.DEF_Users.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                #region Users
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sAccessKey#", _rec.sAccessKey.ToString());
                sReturn = sReturn.Replace("#sUserName#", _rec.sUserName.ToString());
                sReturn = sReturn.Replace("#sPassword#", _rec.sPassword.ToString());
                sReturn = sReturn.Replace("#sPrefix#", _rec.sPrefix.ToString());
                sReturn = sReturn.Replace("#sFName#", _rec.sFName.ToString());
                sReturn = sReturn.Replace("#sMName#", _rec.sMName.ToString());
                sReturn = sReturn.Replace("#sLName#", _rec.sLName.ToString());
                sReturn = sReturn.Replace("#bAccLocked#", _rec.bAccLocked.ToString());
                sReturn = sReturn.Replace("#iPrimaryRole#", _rec.iPrimaryRole.ToString());
                sReturn = sReturn.Replace("#sPrimaryRole#", _rec.sPrimaryRole.ToString());
                sReturn = sReturn.Replace("#sAvitarImgURL#", _rec.sAvitarImgURL.ToString());
                sReturn = sReturn.Replace("#bCurrentlyLoggedIn#", _rec.bCurrentlyLoggedIn.ToString());
                sReturn = sReturn.Replace("#iReputationLevel#", _rec.iReputationLevel.ToString());
                sReturn = sReturn.Replace("#sKeyWords#", _rec.sKeyWords.ToString());
                sReturn = sReturn.Replace("#sScreenName#", _rec.sScreenName.ToString());
                sReturn = sReturn.Replace("#sProfileDiscription#", _rec.sProfileDiscription.ToString());
                sReturn = sReturn.Replace("#iGenderTypeID#", _rec.iGenderTypeID.ToString());
                sReturn = sReturn.Replace("#sGenderTypeID#", _rec.sGenderTypeID.ToString());
                sReturn = sReturn.Replace("#bPrivateProfile#", _rec.bPrivateProfile.ToString());
                sReturn = sReturn.Replace("#dtDateOfBirth#", _rec.dtDateOfBirth.ToString());
                sReturn = sReturn.Replace("#sActivationKey#", _rec.sActivationKey.ToString());
                sReturn = sReturn.Replace("#dtLastLoggedIn#", _rec.dtLastLoggedIn.ToString());
                sReturn = sReturn.Replace("#bAccountActivated#", _rec.bAccountActivated.ToString());
                sReturn = sReturn.Replace("#sAddress1#", _rec.sAddress1.ToString());
                sReturn = sReturn.Replace("#sAddress2#", _rec.sAddress2.ToString());
                sReturn = sReturn.Replace("#sAddress3#", _rec.sAddress3.ToString());
                sReturn = sReturn.Replace("#sCity#", _rec.sCity.ToString());
                sReturn = sReturn.Replace("#iStateID#", _rec.iStateID.ToString());
                sReturn = sReturn.Replace("#sStateID#", _rec.sStateID.ToString());
                sReturn = sReturn.Replace("#sPostalCode#", _rec.sPostalCode.ToString());
                sReturn = sReturn.Replace("#iCountryID#", _rec.iCountryID.ToString());
                sReturn = sReturn.Replace("#sCountryID#", _rec.sCountryID.ToString());
                sReturn = sReturn.Replace("#sPrimaryEMail#", _rec.sPrimaryEMail.ToString());
                sReturn = sReturn.Replace("#sPrimaryPhone#", _rec.sPrimaryPhone.ToString());
                sReturn = sReturn.Replace("#bOptInMarketing#", _rec.bOptInMarketing.ToString());
                sReturn = sReturn.Replace("#sBillAddress1#", _rec.sBillAddress1.ToString());
                sReturn = sReturn.Replace("#sBillAddress2#", _rec.sBillAddress2.ToString());
                sReturn = sReturn.Replace("#sBillAddress3#", _rec.sBillAddress3.ToString());
                sReturn = sReturn.Replace("#sBillCity#", _rec.sBillCity.ToString());
                sReturn = sReturn.Replace("#iBillStateID#", _rec.iBillStateID.ToString());
                sReturn = sReturn.Replace("#sBillStateID#", _rec.sBillStateID.ToString());
                sReturn = sReturn.Replace("#sBillPostalCode#", _rec.sBillPostalCode.ToString());
                sReturn = sReturn.Replace("#iBillCountryID#", _rec.iBillCountryID.ToString());
                sReturn = sReturn.Replace("#sBillCountryID#", _rec.sBillCountryID.ToString());
                sReturn = sReturn.Replace("#IPAddressess#", _rec.IPAddressess.ToString());
                sReturn = sReturn.Replace("#bForceLogOut#", _rec.bForceLogOut.ToString());
                sReturn = sReturn.Replace("#sCurrentSession#", _rec.sCurrentSession.ToString());
                sReturn = sReturn.Replace("#iMemberShipID#", _rec.iMemberShipID.ToString());
                sReturn = sReturn.Replace("#sMemberShipID#", _rec.sMemberShipID.ToString());
                sReturn = sReturn.Replace("#sCN#", _rec.sCN.ToString());
                sReturn = sReturn.Replace("#sCExp#", _rec.sCExp.ToString());
                sReturn = sReturn.Replace("#sCCVV#", _rec.sCCVV.ToString());
                sReturn = sReturn.Replace("#sCLinkID#", _rec.sCLinkID.ToString());
                sReturn = sReturn.Replace("#bMembershipInActive#", _rec.bMembershipInActive.ToString());
                #endregion
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_ShareContentValues(string _OriginalMessage, AriesCMS.Models.ShareContent _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {

                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#sSubject#", _rec.sSubject.ToString());
                sReturn = sReturn.Replace("#sMessage#", _rec.sMessage.ToString());
                sReturn = sReturn.Replace("#sFromName#", _rec.sFromName.ToString());
                sReturn = sReturn.Replace("#sFromEmail#", _rec.sFromEmail.ToString());
                sReturn = sReturn.Replace("#sFromCellPhone#", _rec.sFromCellPhone.ToString());
                sReturn = sReturn.Replace("#sToEmails#", _rec.sToEmails.ToString());
                sReturn = sReturn.Replace("#sToCellPhones#", _rec.sToCellPhones.ToString());
                sReturn = sReturn.Replace("#URI#", _rec.URI.ToString());
                sReturn = sReturn.Replace("#URL#", _rec.URL.ToString());
                sReturn = sReturn.Replace("#ThumbNailImage#", _rec.ThumbNailImage.ToString());
                sReturn = sReturn.Replace("#IsImage#", _rec.IsImage.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_ContactUsValues(string _OriginalMessage, AriesCMS.Models.ContactUsView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#Name#", _rec.Name.ToString());
                sReturn = sReturn.Replace("#Subject#", _rec.Subject.ToString());
                sReturn = sReturn.Replace("#Message#", _rec.Message.ToString());
                sReturn = sReturn.Replace("#Email#", _rec.Email.ToString());
                sReturn = sReturn.Replace("#Phone#", _rec.Phone.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_ContactLeadValues(string _OriginalMessage, AriesCMS.Models.ContactLeadView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {

                sReturn = sReturn.Replace("#FirstName#", _rec.FirstName.ToString());
                sReturn = sReturn.Replace("#LastName#", _rec.LastName.ToString());
                sReturn = sReturn.Replace("#CompanyName#", _rec.CompanyName.ToString());
                sReturn = sReturn.Replace("#Title#", _rec.Title.ToString());
                sReturn = sReturn.Replace("#CompanyURL#", _rec.CompanyURL.ToString());
                sReturn = sReturn.Replace("#Phone#", _rec.Phone.ToString());
                sReturn = sReturn.Replace("#PhoneExt#", _rec.PhoneExt.ToString());
                sReturn = sReturn.Replace("#Email#", _rec.Email.ToString());
                sReturn = sReturn.Replace("#Notes#", _rec.Notes.ToString());
                sReturn = sReturn.Replace("#GrossAnnualRevenues#", _rec.GrossAnnualRevenues.ToString());
                sReturn = sReturn.Replace("#HowManyEmployees#", _rec.HowManyEmployees.ToString());
                sReturn = sReturn.Replace("#RefferalCode#", _rec.RefferalCode.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_NewNewsLetterValues(string _OriginalMessage, AriesCMS.Models.NewNewsLetter _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#FirstName#", _rec.FirstName.ToString());
                sReturn = sReturn.Replace("#FirstNameError#", _rec.FirstNameError.ToString());
                sReturn = sReturn.Replace("#LastName#", _rec.LastName.ToString());
                sReturn = sReturn.Replace("#LastNameError#", _rec.LastNameError.ToString());
                sReturn = sReturn.Replace("#EMail#", _rec.EMail.ToString());
                sReturn = sReturn.Replace("#EMailError#", _rec.EMailError.ToString());
                sReturn = sReturn.Replace("#EMailErrorMessage#", _rec.EMailErrorMessage.ToString());
                sReturn = sReturn.Replace("#OptingInMail#", _rec.OptingInMail.ToString());
                sReturn = sReturn.Replace("#OptingInMailError#", _rec.OptingInMailError.ToString());
                sReturn = sReturn.Replace("#TrackingCode#", _rec.TrackingCode.ToString());
                sReturn = sReturn.Replace("#HTTPLog#", _rec.HTTPLog.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_NewUserRegistrationValues(string _OriginalMessage, AriesCMS.Models.NewUserRegistration _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#UserName#", _rec.UserName.ToString());
                sReturn = sReturn.Replace("#UserNameError#", _rec.UserNameError.ToString());
                sReturn = sReturn.Replace("#UserNameErrorMessage#", _rec.UserNameErrorMessage.ToString());
                sReturn = sReturn.Replace("#Password#", _rec.Password.ToString());
                sReturn = sReturn.Replace("#PasswordError#", _rec.PasswordError.ToString());
                sReturn = sReturn.Replace("#PasswordConfirm#", _rec.PasswordConfirm.ToString());
                sReturn = sReturn.Replace("#PasswordConfirmError#", _rec.PasswordConfirmError.ToString());
                sReturn = sReturn.Replace("#PasswordErrorMessage#", _rec.PasswordErrorMessage.ToString());
                sReturn = sReturn.Replace("#FirstName#", _rec.FirstName.ToString());
                sReturn = sReturn.Replace("#FirstNameError#", _rec.FirstNameError.ToString());
                sReturn = sReturn.Replace("#LastName#", _rec.LastName.ToString());
                sReturn = sReturn.Replace("#LastNameError#", _rec.LastNameError.ToString());
                sReturn = sReturn.Replace("#MiddleName#", _rec.MiddleName.ToString());
                sReturn = sReturn.Replace("#MiddleNameError#", _rec.MiddleNameError.ToString());
                sReturn = sReturn.Replace("#EMail#", _rec.EMail.ToString());
                sReturn = sReturn.Replace("#EMailError#", _rec.EMailError.ToString());
                sReturn = sReturn.Replace("#OptingInMail#", _rec.OptingInMail.ToString());
                sReturn = sReturn.Replace("#OptingInMailError#", _rec.OptingInMailError.ToString());
                sReturn = sReturn.Replace("#Phone#", _rec.Phone.ToString());
                sReturn = sReturn.Replace("#PhoneError#", _rec.PhoneError.ToString());
                sReturn = sReturn.Replace("#Fax#", _rec.Fax.ToString());
                sReturn = sReturn.Replace("#FaxError#", _rec.FaxError.ToString());
                sReturn = sReturn.Replace("#CellPhone#", _rec.CellPhone.ToString());
                sReturn = sReturn.Replace("#CellPhoneError#", _rec.CellPhoneError.ToString());
                sReturn = sReturn.Replace("#DateOfBirth#", _rec.DateOfBirth.ToString());
                sReturn = sReturn.Replace("#DateOfBirthError#", _rec.DateOfBirthError.ToString());
                sReturn = sReturn.Replace("#DOBMonth#", _rec.DOBMonth.ToString());
                sReturn = sReturn.Replace("#DOBDay#", _rec.DOBDay.ToString());
                sReturn = sReturn.Replace("#DOBYear#", _rec.DOBYear.ToString());
                sReturn = sReturn.Replace("#Sex#", _rec.Sex.ToString());
                sReturn = sReturn.Replace("#SexID#", _rec.SexID.ToString());
                sReturn = sReturn.Replace("#ItemIDs#", _rec.ItemIDs.ToString());
                sReturn = sReturn.Replace("#CuponCodes#", _rec.CuponCodes.ToString());
                sReturn = sReturn.Replace("#PromoCodes#", _rec.PromoCodes.ToString());
                sReturn = sReturn.Replace("#CompanyName#", _rec.CompanyName.ToString());
                sReturn = sReturn.Replace("#CompanyNameError#", _rec.CompanyNameError.ToString());
                
                sReturn = Parse_WebSite_Messaging_Template_UserCompanyInfoValues(sReturn, _rec.Company);
                sReturn = Parse_WebSite_Messaging_Template_UserAddressInfoValues(sReturn, _rec.AddressInfo);
                sReturn = Parse_WebSite_Messaging_Template_UserBillingInfoValues(sReturn, _rec.BillingInfo);

                sReturn = sReturn.Replace("#TrackingCode#", _rec.TrackingCode.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_UserCompanyInfoValues(string _OriginalMessage, AriesCMS.Models.UserCompanyInfo _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ID#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyName.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyPhone.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyPhoneError.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyPhoneExt.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyPhoneExtError.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyFax.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyFaxError.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyCellPhone.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyCellPhoneError.ToString());
                sReturn = sReturn.Replace("#CompanyAddressLine1#", _rec.CompanyAddressLine1.ToString());
                sReturn = sReturn.Replace("#CompanyAddressLine1Error#", _rec.CompanyAddressLine1Error.ToString());
                sReturn = sReturn.Replace("#CompanyAddressLine2#", _rec.CompanyAddressLine2.ToString());
                sReturn = sReturn.Replace("#CompanyAddressLine2Error#", _rec.CompanyAddressLine2Error.ToString());
                sReturn = sReturn.Replace("#CompanyAddressLine3#", _rec.CompanyAddressLine3.ToString());
                sReturn = sReturn.Replace("#CompanyAddressLine3Error#", _rec.CompanyAddressLine3Error.ToString());
                sReturn = sReturn.Replace("#CompanyCity#", _rec.CompanyCity.ToString());
                sReturn = sReturn.Replace("#CompanyCityError#", _rec.CompanyCityError.ToString());
                sReturn = sReturn.Replace("#CompanyState#", _rec.CompanyState.ToString());
                sReturn = sReturn.Replace("#CompanyStateError#", _rec.CompanyStateError.ToString());
                sReturn = sReturn.Replace("#CompanyStateID#", _rec.CompanyStateID.ToString());
                sReturn = sReturn.Replace("#CompanyStateIDError#", _rec.CompanyStateIDError.ToString());
                sReturn = sReturn.Replace("#CompanyCountry#", _rec.CompanyCountry.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.CompanyCountryError.ToString());
                sReturn = sReturn.Replace("#CompanyCountryID#", _rec.CompanyCountryID.ToString());
                sReturn = sReturn.Replace("#CompanyCountryIDError#", _rec.CompanyCountryIDError.ToString());
                sReturn = sReturn.Replace("#CompanyPostalCode#", _rec.CompanyPostalCode.ToString());
                sReturn = sReturn.Replace("#CompanyPostalCodeError#", _rec.CompanyPostalCodeError.ToString());
                sReturn = sReturn.Replace("#EMail#", _rec.EMail.ToString());
                sReturn = sReturn.Replace("#EMailError#", _rec.EMailError.ToString());
                sReturn = sReturn.Replace("#OptingInMail#", _rec.OptingInMail.ToString());
                sReturn = sReturn.Replace("#OptingInMailError#", _rec.OptingInMailError.ToString());
                sReturn = sReturn.Replace("#Phone#", _rec.Phone.ToString());
                sReturn = sReturn.Replace("#PhoneError#", _rec.PhoneError.ToString());
                sReturn = sReturn.Replace("#Fax#", _rec.Fax.ToString());
                sReturn = sReturn.Replace("#FaxError#", _rec.FaxError.ToString());
                sReturn = sReturn.Replace("#CellPhone#", _rec.CellPhone.ToString());
                sReturn = sReturn.Replace("#CellPhoneError#", _rec.CellPhoneError.ToString());
                sReturn = sReturn.Replace("#AvailableTimes#", _rec.AvailableTimes.ToString());
                sReturn = sReturn.Replace("#AdditionalMessage#", _rec.AdditionalMessage.ToString());
                
                sReturn = Parse_WebSite_Messaging_Template_UserAddressInfoValues(sReturn, _rec.AddressInfo);
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_UserBillingInfoValues(string _OriginalMessage, AriesCMS.Models.UserBillingInfo _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#FullName#", _rec.FullName.ToString());
                sReturn = sReturn.Replace("#FullNameError#", _rec.FullNameError.ToString());
                sReturn = sReturn.Replace("#FirstName#", _rec.FirstName.ToString());
                sReturn = sReturn.Replace("#FirstNameError#", _rec.FirstNameError.ToString());
                sReturn = sReturn.Replace("#LastName#", _rec.LastName.ToString());
                sReturn = sReturn.Replace("#LastNameError#", _rec.LastNameError.ToString());
                sReturn = sReturn.Replace("#MiddleName#", _rec.MiddleName.ToString());
                sReturn = sReturn.Replace("#MiddleNameError#", _rec.MiddleNameError.ToString());
                sReturn = sReturn.Replace("#CreditCardNumber#", _rec.CreditCardNumber.ToString());
                sReturn = sReturn.Replace("#CreditCardNumberError#", _rec.CreditCardNumberError.ToString());
                sReturn = sReturn.Replace("#CreditCardCVV#", _rec.CreditCardCVV.ToString());
                sReturn = sReturn.Replace("#CreditCardCVVError#", _rec.CreditCardCVVError.ToString());
                sReturn = sReturn.Replace("#CreditCardExpDate#", _rec.CreditCardExpDate.ToString());
                sReturn = sReturn.Replace("#CreditCardExpDateError#", _rec.CreditCardExpDateError.ToString());
                sReturn = sReturn.Replace("#CreditCardExpDateMonth#", _rec.CreditCardExpDateMonth.ToString());
                sReturn = sReturn.Replace("#CreditCardExpDateMonthError#", _rec.CreditCardExpDateMonthError.ToString());
                sReturn = sReturn.Replace("#CreditCardExpDateYear#", _rec.CreditCardExpDateYear.ToString());
                sReturn = sReturn.Replace("#CreditCardExpDateYearError#", _rec.CreditCardExpDateYearError.ToString());
                sReturn = sReturn.Replace("#EMail#", _rec.EMail.ToString());
                sReturn = sReturn.Replace("#EMailError#", _rec.EMailError.ToString());
                sReturn = sReturn.Replace("#OptingInMail#", _rec.OptingInMail.ToString());
                sReturn = sReturn.Replace("#OptingInMailError#", _rec.OptingInMailError.ToString());
                sReturn = sReturn.Replace("#Phone#", _rec.Phone.ToString());
                sReturn = sReturn.Replace("#PhoneError#", _rec.PhoneError.ToString());
                sReturn = sReturn.Replace("#Fax#", _rec.Fax.ToString());
                sReturn = sReturn.Replace("#FaxError#", _rec.FaxError.ToString());
                sReturn = sReturn.Replace("#CellPhone#", _rec.CellPhone.ToString());
                sReturn = sReturn.Replace("#CellPhoneError#", _rec.CellPhoneError.ToString());
                
                sReturn = Parse_WebSite_Messaging_Template_UserAddressInfoValues(sReturn, _rec.AddressInfo);

                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_UserAddressInfoValues(string _OriginalMessage, AriesCMS.Models.UserAddressInfo _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#AddressLine1#", _rec.AddressLine1.ToString());
                sReturn = sReturn.Replace("#AddressLine1Error#", _rec.AddressLine1Error.ToString());
                sReturn = sReturn.Replace("#AddressLine2#", _rec.AddressLine2.ToString());
                sReturn = sReturn.Replace("#AddressLine2Error#", _rec.AddressLine2Error.ToString());
                sReturn = sReturn.Replace("#AddressLine3#", _rec.AddressLine3.ToString());
                sReturn = sReturn.Replace("#AddressLine3Error#", _rec.AddressLine3Error.ToString());
                sReturn = sReturn.Replace("#City#", _rec.City.ToString());
                sReturn = sReturn.Replace("#CityError#", _rec.CityError.ToString());
                sReturn = sReturn.Replace("#State#", _rec.State.ToString());
                sReturn = sReturn.Replace("#StateError#", _rec.StateError.ToString());
                sReturn = sReturn.Replace("#StateID#", _rec.StateID.ToString());
                sReturn = sReturn.Replace("#StateIDError#", _rec.StateIDError.ToString());
                sReturn = sReturn.Replace("#Country#", _rec.Country.ToString());
                sReturn = sReturn.Replace("#CountryError#", _rec.CountryError.ToString());
                sReturn = sReturn.Replace("#CountryID#", _rec.CountryID.ToString());
                sReturn = sReturn.Replace("#CountryIDError#", _rec.CountryIDError.ToString());
                sReturn = sReturn.Replace("#PostalCode#", _rec.PostalCode.ToString());
                sReturn = sReturn.Replace("#PostalCodeError#", _rec.PostalCodeError.ToString());
                sReturn = sReturn.Replace("#PublicFormResponseMessage#", _rec.PublicFormResponseMessage.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_BillingItemsValues(string _OriginalMessage, AriesCMS.Models.BillingItems _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#Item#", _rec.Item.ToString());
                sReturn = sReturn.Replace("#ItemError#", _rec.ItemError.ToString());
                sReturn = sReturn.Replace("#ItemDescription#", _rec.ItemDescription.ToString());
                sReturn = sReturn.Replace("#ItemDescriptionError#", _rec.ItemDescriptionError.ToString());
                sReturn = sReturn.Replace("#ItemImageLarge#", _rec.ItemImageLarge.ToString());
                sReturn = sReturn.Replace("#ItemImageLargeError#", _rec.ItemImageLargeError.ToString());
                sReturn = sReturn.Replace("#ItemImageSmall#", _rec.ItemImageSmall.ToString());
                sReturn = sReturn.Replace("#ItemImageSmallError#", _rec.ItemImageSmallError.ToString());
                sReturn = sReturn.Replace("#ItemCost#", _rec.ItemCost.ToString());
                sReturn = sReturn.Replace("#ItemCostError#", _rec.ItemCostError.ToString());
                sReturn = sReturn.Replace("#ItemQty#", _rec.ItemQty.ToString());
                sReturn = sReturn.Replace("#ItemQtyError#", _rec.ItemQtyError.ToString());
                sReturn = sReturn.Replace("#PublicFormResponseMessage#", _rec.PublicFormResponseMessage.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_CouponsPromosValues(string _OriginalMessage, AriesCMS.Models.CouponsPromos _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#CPCode#", _rec.CPCode.ToString());
                sReturn = sReturn.Replace("#WasApplied#", _rec.WasApplied.ToString());
                sReturn = sReturn.Replace("#DiscountAmount#", _rec.DiscountAmount.ToString());
                sReturn = sReturn.Replace("#RelatedToItems#", _rec.RelatedToItems.ToString());
                sReturn = sReturn.Replace("#PublicFormResponseMessage#", _rec.PublicFormResponseMessage.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_ProfileRecoveryValues(string _OriginalMessage, AriesCMS.Models.ProfileRecovery _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#ValidationErrors#", _rec.ValidationErrors.ToString());
                sReturn = sReturn.Replace("#FullName#", _rec.FullName.ToString());
                sReturn = sReturn.Replace("#FirstName#", _rec.FirstName.ToString());
                sReturn = sReturn.Replace("#LastName#", _rec.LastName.ToString());
                sReturn = sReturn.Replace("#Email#", _rec.Email.ToString());
                sReturn = sReturn.Replace("#Username#", _rec.Username.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
                sReturn = sReturn.Replace("#DebugFormResponseMessage#", _rec.DebugFormResponseMessage.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_ChargeRecordValues(string _OriginalMessage, AriesCMS.Models.ChargeRecord _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                sReturn = sReturn.Replace("#AuthorizationCode#", _rec.AuthorizationCode.ToString());
                sReturn = sReturn.Replace("#CardNumber#", _rec.CardNumber.ToString());
                sReturn = sReturn.Replace("#CardType#", _rec.CardType.ToString());
                sReturn = sReturn.Replace("#CardNumberMask#", _rec.CardNumberMask.ToString());
                sReturn = sReturn.Replace("#CVV#", _rec.CVV.ToString());
                sReturn = sReturn.Replace("#ExpirationDate#", _rec.ExpirationDate.ToString());
                sReturn = sReturn.Replace("#Month#", _rec.Month.ToString());
                sReturn = sReturn.Replace("#Year#", _rec.Year.ToString());
                sReturn = sReturn.Replace("#ChargeAmount#", _rec.ChargeAmount.ToString());
                sReturn = sReturn.Replace("#ShippingCharge#", _rec.ShippingCharge.ToString());
                sReturn = sReturn.Replace("#Subtotal#", _rec.Subtotal.ToString());
                sReturn = sReturn.Replace("#ChargeDescription#", _rec.ChargeDescription.ToString());
                sReturn = sReturn.Replace("#Tax#", _rec.Tax.ToString());
                sReturn = sReturn.Replace("#FirstName#", _rec.FirstName.ToString());
                sReturn = sReturn.Replace("#LastName#", _rec.LastName.ToString());
                sReturn = sReturn.Replace("#Address#", _rec.Address.ToString());
                sReturn = sReturn.Replace("#City#", _rec.City.ToString());
                sReturn = sReturn.Replace("#State#", _rec.State.ToString());
                sReturn = sReturn.Replace("#PostalCode#", _rec.PostalCode.ToString());
                sReturn = sReturn.Replace("#Country#", _rec.Country.ToString());
                sReturn = sReturn.Replace("#PhoneNumber#", _rec.PhoneNumber.ToString());
                sReturn = sReturn.Replace("#EMail#", _rec.EMail.ToString());
                sReturn = sReturn.Replace("#ClientIPAddress#", _rec.ClientIPAddress.ToString());
                sReturn = sReturn.Replace("#PaymentID#", _rec.PaymentID.ToString());
                sReturn = sReturn.Replace("#ChargeResponse#", _rec.ChargeResponse.ToString());
                sReturn = sReturn.Replace("#ErrorMessage#", _rec.ErrorMessage.ToString());
                sReturn = sReturn.Replace("#ErrorPageURL#", _rec.ErrorPageURL.ToString());
                sReturn = sReturn.Replace("#SuccessPageURL#", _rec.SuccessPageURL.ToString());
                sReturn = sReturn.Replace("#SourceForm#", _rec.SourceForm.ToString());
                sReturn = sReturn.Replace("#IsCMSForm#", _rec.IsCMSForm.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }

        public string Parse_WebSite_Messaging_Template_WebSiteSponsorsValues(string _OriginalMessage, AriesCMS.Models.WebSiteSponsorsDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                #region WebSiteSponsors
                sReturn = sReturn.Replace("#ID#", _rec.WebSiteSponsors.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSiteSponsors.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSiteSponsors.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSiteSponsors.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSiteSponsors.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSiteSponsors.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSiteSponsors.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSiteSponsors.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSiteSponsors.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSiteSponsors.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSiteSponsors.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.WebSiteSponsors.sName.ToString());
                sReturn = sReturn.Replace("#iSponsorShipTypeID#", _rec.WebSiteSponsors.iSponsorShipTypeID.ToString());
                sReturn = sReturn.Replace("#sSponsorShipTypeID#", _rec.WebSiteSponsors.sSponsorShipTypeID.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.WebSiteSponsors.sImageURL.ToString());
                sReturn = sReturn.Replace("#sImageURL2#", _rec.WebSiteSponsors.sImageURL2.ToString());
                sReturn = sReturn.Replace("#sImageURL3#", _rec.WebSiteSponsors.sImageURL3.ToString());
                sReturn = sReturn.Replace("#sListingDescription#", _rec.WebSiteSponsors.sListingDescription.ToString());
                sReturn = sReturn.Replace("#sLargerListingDescription#", _rec.WebSiteSponsors.sLargerListingDescription.ToString());
                sReturn = sReturn.Replace("#sDetailsDescription#", _rec.WebSiteSponsors.sDetailsDescription.ToString());
                sReturn = sReturn.Replace("#iAssociatedUserID#", _rec.WebSiteSponsors.iAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sAssociatedUserID#", _rec.WebSiteSponsors.sAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.WebSiteSponsors.bDisabled.ToString());
                sReturn = sReturn.Replace("#bSuspended#", _rec.WebSiteSponsors.bSuspended.ToString());
                sReturn = sReturn.Replace("#bNegative#", _rec.WebSiteSponsors.bNegative.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.WebSiteSponsors.bHidden.ToString());
                sReturn = sReturn.Replace("#sCategories#", _rec.WebSiteSponsors.sCategories.ToString());
                sReturn = sReturn.Replace("#sURL1#", _rec.WebSiteSponsors.sURL1.ToString());
                sReturn = sReturn.Replace("#sURL2#", _rec.WebSiteSponsors.sURL2.ToString());
                sReturn = sReturn.Replace("#sURL3#", _rec.WebSiteSponsors.sURL3.ToString());
                sReturn = sReturn.Replace("#sSpecialty#", _rec.WebSiteSponsors.sSpecialty.ToString());
                sReturn = sReturn.Replace("#sTitle#", _rec.WebSiteSponsors.sTitle.ToString());
                sReturn = sReturn.Replace("#sFocus#", _rec.WebSiteSponsors.sFocus.ToString());
                sReturn = sReturn.Replace("#sContactPhone#", _rec.WebSiteSponsors.sContactPhone.ToString());
                sReturn = sReturn.Replace("#sContactEMail#", _rec.WebSiteSponsors.sContactEMail.ToString());
                sReturn = sReturn.Replace("#sContactAddress#", _rec.WebSiteSponsors.sContactAddress.ToString());

                #endregion
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteEventCalendarSponsorsValues(string _OriginalMessage, AriesCMS.Models.WebSiteEventCalendarSponsorsDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                #region WebSiteEventCalendarSponsors
                sReturn = sReturn.Replace("#ID#", _rec.WebSiteEventCalendarSponsors.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSiteEventCalendarSponsors.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSiteEventCalendarSponsors.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSiteEventCalendarSponsors.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSiteEventCalendarSponsors.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSiteEventCalendarSponsors.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSiteEventCalendarSponsors.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSiteEventCalendarSponsors.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSiteEventCalendarSponsors.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSiteEventCalendarSponsors.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSiteEventCalendarSponsors.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#iSponsorID#", _rec.WebSiteEventCalendarSponsors.iSponsorID.ToString());
                sReturn = sReturn.Replace("#sSponsorID#", _rec.WebSiteEventCalendarSponsors.sSponsorID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.WebSiteEventCalendarSponsors.sName.ToString());
                sReturn = sReturn.Replace("#iSponsorShipTypeID#", _rec.WebSiteEventCalendarSponsors.iSponsorShipTypeID.ToString());
                sReturn = sReturn.Replace("#sSponsorShipTypeID#", _rec.WebSiteEventCalendarSponsors.sSponsorShipTypeID.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.WebSiteEventCalendarSponsors.sImageURL.ToString());
                sReturn = sReturn.Replace("#sImageURL2#", _rec.WebSiteEventCalendarSponsors.sImageURL2.ToString());
                sReturn = sReturn.Replace("#sImageURL3#", _rec.WebSiteEventCalendarSponsors.sImageURL3.ToString());
                sReturn = sReturn.Replace("#sListingDescription#", _rec.WebSiteEventCalendarSponsors.sListingDescription.ToString());
                sReturn = sReturn.Replace("#sLargerListingDescription#", _rec.WebSiteEventCalendarSponsors.sLargerListingDescription.ToString());
                sReturn = sReturn.Replace("#sDetailsDescription#", _rec.WebSiteEventCalendarSponsors.sDetailsDescription.ToString());
                sReturn = sReturn.Replace("#iAssociatedUserID#", _rec.WebSiteEventCalendarSponsors.iAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sAssociatedUserID#", _rec.WebSiteEventCalendarSponsors.sAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.WebSiteEventCalendarSponsors.bDisabled.ToString());
                sReturn = sReturn.Replace("#bSuspended#", _rec.WebSiteEventCalendarSponsors.bSuspended.ToString());
                sReturn = sReturn.Replace("#bNegative#", _rec.WebSiteEventCalendarSponsors.bNegative.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.WebSiteEventCalendarSponsors.bHidden.ToString());
                #endregion
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteMembersValues(string _OriginalMessage, AriesCMS.Models.WebSiteMembersDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteMembers
                sReturn = sReturn.Replace("#ID#", _rec.WebSiteMembers.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSiteMembers.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSiteMembers.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSiteMembers.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSiteMembers.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSiteMembers.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSiteMembers.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSiteMembers.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSiteMembers.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSiteMembers.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSiteMembers.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.WebSiteMembers.sName.ToString());
                sReturn = sReturn.Replace("#iMemberShipTypeID#", _rec.WebSiteMembers.iMemberShipTypeID.ToString());
                sReturn = sReturn.Replace("#sMemberShipTypeID#", _rec.WebSiteMembers.sMemberShipTypeID.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.WebSiteMembers.sImageURL.ToString());
                sReturn = sReturn.Replace("#sImageURL2#", _rec.WebSiteMembers.sImageURL2.ToString());
                sReturn = sReturn.Replace("#sImageURL3#", _rec.WebSiteMembers.sImageURL3.ToString());
                sReturn = sReturn.Replace("#sListingDescription#", _rec.WebSiteMembers.sListingDescription.ToString());
                sReturn = sReturn.Replace("#sLargerListingDescription#", _rec.WebSiteMembers.sLargerListingDescription.ToString());
                sReturn = sReturn.Replace("#sDetailsDescription#", _rec.WebSiteMembers.sDetailsDescription.ToString());
                sReturn = sReturn.Replace("#iAssociatedUserID#", _rec.WebSiteMembers.iAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sAssociatedUserID#", _rec.WebSiteMembers.sAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.WebSiteMembers.bDisabled.ToString());
                sReturn = sReturn.Replace("#bSuspended#", _rec.WebSiteMembers.bSuspended.ToString());
                sReturn = sReturn.Replace("#bNegative#", _rec.WebSiteMembers.bNegative.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.WebSiteMembers.bHidden.ToString());
                sReturn = sReturn.Replace("#sCategories#", _rec.WebSiteMembers.sCategories.ToString());
                sReturn = sReturn.Replace("#sURL1#", _rec.WebSiteMembers.sURL1.ToString());
                sReturn = sReturn.Replace("#sURL2#", _rec.WebSiteMembers.sURL2.ToString());
                sReturn = sReturn.Replace("#sURL3#", _rec.WebSiteMembers.sURL3.ToString());
            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteMemberCatsValues(string _OriginalMessage, AriesCMS.Models.WebSiteMemberCatsDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteMemberCats
                sReturn = sReturn.Replace("#ID#", _rec.WebSiteMemberCats.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSiteMemberCats.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSiteMemberCats.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSiteMemberCats.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSiteMemberCats.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSiteMemberCats.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSiteMemberCats.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSiteMemberCats.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSiteMemberCats.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSiteMemberCats.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSiteMemberCats.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sMemberInfo#", _rec.WebSiteMemberCats.sMemberInfo.ToString());
                sReturn = sReturn.Replace("#iCategoryID#", _rec.WebSiteMemberCats.iCategoryID.ToString());
                sReturn = sReturn.Replace("#sCategoryID#", _rec.WebSiteMemberCats.sCategoryID.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSitePartnersValues(string _OriginalMessage, AriesCMS.Models.WebSitePartnersDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSitePartners
                sReturn = sReturn.Replace("#ID#", _rec.WebSitePartners.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSitePartners.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSitePartners.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSitePartners.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSitePartners.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSitePartners.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSitePartners.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSitePartners.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSitePartners.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSitePartners.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSitePartners.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.WebSitePartners.sName.ToString());
                sReturn = sReturn.Replace("#iTypeID#", _rec.WebSitePartners.iTypeID.ToString());
                sReturn = sReturn.Replace("#sTypeID#", _rec.WebSitePartners.sTypeID.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.WebSitePartners.sImageURL.ToString());
                sReturn = sReturn.Replace("#sImageURL2#", _rec.WebSitePartners.sImageURL2.ToString());
                sReturn = sReturn.Replace("#sImageURL3#", _rec.WebSitePartners.sImageURL3.ToString());
                sReturn = sReturn.Replace("#sListingDescription#", _rec.WebSitePartners.sListingDescription.ToString());
                sReturn = sReturn.Replace("#sLargerListingDescription#", _rec.WebSitePartners.sLargerListingDescription.ToString());
                sReturn = sReturn.Replace("#sDetailsDescription#", _rec.WebSitePartners.sDetailsDescription.ToString());
                sReturn = sReturn.Replace("#iAssociatedUserID#", _rec.WebSitePartners.iAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sAssociatedUserID#", _rec.WebSitePartners.sAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sURL1#", _rec.WebSitePartners.sURL1.ToString());
                sReturn = sReturn.Replace("#sURL2#", _rec.WebSitePartners.sURL2.ToString());
                sReturn = sReturn.Replace("#sURL3#", _rec.WebSitePartners.sURL3.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.WebSitePartners.bDisabled.ToString());
                sReturn = sReturn.Replace("#bSuspended#", _rec.WebSitePartners.bSuspended.ToString());
                sReturn = sReturn.Replace("#bNegative#", _rec.WebSitePartners.bNegative.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.WebSitePartners.bHidden.ToString());
                sReturn = sReturn.Replace("#sCategories#", _rec.WebSitePartners.sCategories.ToString());
                sReturn = sReturn.Replace("#sSpecialty#", _rec.WebSitePartners.sSpecialty.ToString());
                sReturn = sReturn.Replace("#sTitle#", _rec.WebSitePartners.sTitle.ToString());
                sReturn = sReturn.Replace("#sFocus#", _rec.WebSitePartners.sFocus.ToString());
                sReturn = sReturn.Replace("#sContactPhone#", _rec.WebSitePartners.sContactPhone.ToString());
                sReturn = sReturn.Replace("#sContactEMail#", _rec.WebSitePartners.sContactEMail.ToString());
                sReturn = sReturn.Replace("#sContactAddress#", _rec.WebSitePartners.sContactAddress.ToString());


            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteAffiliatesValues(string _OriginalMessage, AriesCMS.Models.WebSiteAffiliatesDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteAffiliates
                sReturn = sReturn.Replace("#ID#", _rec.WebSiteAffiliates.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSiteAffiliates.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSiteAffiliates.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSiteAffiliates.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSiteAffiliates.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSiteAffiliates.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSiteAffiliates.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSiteAffiliates.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSiteAffiliates.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSiteAffiliates.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSiteAffiliates.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.WebSiteAffiliates.sName.ToString());
                sReturn = sReturn.Replace("#iTypeID#", _rec.WebSiteAffiliates.iTypeID.ToString());
                sReturn = sReturn.Replace("#sTypeID#", _rec.WebSiteAffiliates.sTypeID.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.WebSiteAffiliates.sImageURL.ToString());
                sReturn = sReturn.Replace("#sImageURL2#", _rec.WebSiteAffiliates.sImageURL2.ToString());
                sReturn = sReturn.Replace("#sImageURL3#", _rec.WebSiteAffiliates.sImageURL3.ToString());
                sReturn = sReturn.Replace("#sListingDescription#", _rec.WebSiteAffiliates.sListingDescription.ToString());
                sReturn = sReturn.Replace("#sLargerListingDescription#", _rec.WebSiteAffiliates.sLargerListingDescription.ToString());
                sReturn = sReturn.Replace("#sDetailsDescription#", _rec.WebSiteAffiliates.sDetailsDescription.ToString());
                sReturn = sReturn.Replace("#iAssociatedUserID#", _rec.WebSiteAffiliates.iAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sAssociatedUserID#", _rec.WebSiteAffiliates.sAssociatedUserID.ToString());
                sReturn = sReturn.Replace("#sCustomURL#", _rec.WebSiteAffiliates.sCustomURL.ToString());
                sReturn = sReturn.Replace("#sURL1#", _rec.WebSiteAffiliates.sURL1.ToString());
                sReturn = sReturn.Replace("#sURL2#", _rec.WebSiteAffiliates.sURL2.ToString());
                sReturn = sReturn.Replace("#sURL3#", _rec.WebSiteAffiliates.sURL3.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.WebSiteAffiliates.bDisabled.ToString());
                sReturn = sReturn.Replace("#bSuspended#", _rec.WebSiteAffiliates.bSuspended.ToString());
                sReturn = sReturn.Replace("#bNegative#", _rec.WebSiteAffiliates.bNegative.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.WebSiteAffiliates.bHidden.ToString());
                sReturn = sReturn.Replace("#sCategories#", _rec.WebSiteAffiliates.sCategories.ToString());
                sReturn = sReturn.Replace("#sSpecialty#", _rec.WebSiteAffiliates.sSpecialty.ToString());
                sReturn = sReturn.Replace("#sTitle#", _rec.WebSiteAffiliates.sTitle.ToString());
                sReturn = sReturn.Replace("#sFocus#", _rec.WebSiteAffiliates.sFocus.ToString());
                sReturn = sReturn.Replace("#sContactPhone#", _rec.WebSiteAffiliates.sContactPhone.ToString());
                sReturn = sReturn.Replace("#sContactEMail#", _rec.WebSiteAffiliates.sContactEMail.ToString());
                sReturn = sReturn.Replace("#sContactAddress#", _rec.WebSiteAffiliates.sContactAddress.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteAnnouncementsValues(string _OriginalMessage, AriesCMS.Models.WebSiteAnnouncementsDBView _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteAnnouncements
                sReturn = sReturn.Replace("#ID#", _rec.WebSiteAnnouncements.ID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.WebSiteAnnouncements.sControl.ToString());
                sReturn = sReturn.Replace("#sSync#", _rec.WebSiteAnnouncements.sSync.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.WebSiteAnnouncements.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.WebSiteAnnouncements.sParentID.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.WebSiteAnnouncements.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.WebSiteAnnouncements.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.WebSiteAnnouncements.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.WebSiteAnnouncements.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.WebSiteAnnouncements.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.WebSiteAnnouncements.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.WebSiteAnnouncements.sName.ToString());
                sReturn = sReturn.Replace("#sDescription#", _rec.WebSiteAnnouncements.sDescription.ToString());
                sReturn = sReturn.Replace("#sContent#", _rec.WebSiteAnnouncements.sContent.ToString());
                sReturn = sReturn.Replace("#sVersion#", _rec.WebSiteAnnouncements.sVersion.ToString());
                sReturn = sReturn.Replace("#bRemoved#", _rec.WebSiteAnnouncements.bRemoved.ToString());
                sReturn = sReturn.Replace("#bAnswered#", _rec.WebSiteAnnouncements.bAnswered.ToString());
                sReturn = sReturn.Replace("#iAnsweredByID#", _rec.WebSiteAnnouncements.iAnsweredByID.ToString());
                sReturn = sReturn.Replace("#sAnsweredByID#", _rec.WebSiteAnnouncements.sAnsweredByID.ToString());
                sReturn = sReturn.Replace("#iAnsweredByResponseID#", _rec.WebSiteAnnouncements.iAnsweredByResponseID.ToString());
                sReturn = sReturn.Replace("#sAnsweredByResponseID#", _rec.WebSiteAnnouncements.sAnsweredByResponseID.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.WebSiteAnnouncements.bDisabled.ToString());
                sReturn = sReturn.Replace("#bSuspended#", _rec.WebSiteAnnouncements.bSuspended.ToString());
                sReturn = sReturn.Replace("#bNegative#", _rec.WebSiteAnnouncements.bNegative.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.WebSiteAnnouncements.bHidden.ToString());
                sReturn = sReturn.Replace("#iTypeID#", _rec.WebSiteAnnouncements.iTypeID.ToString());
                sReturn = sReturn.Replace("#sTypeID#", _rec.WebSiteAnnouncements.sTypeID.ToString());
                sReturn = sReturn.Replace("#sURL1#", _rec.WebSiteAnnouncements.sURL1.ToString());
                sReturn = sReturn.Replace("#sURL2#", _rec.WebSiteAnnouncements.sURL2.ToString());
                sReturn = sReturn.Replace("#sURL3#", _rec.WebSiteAnnouncements.sURL3.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.WebSiteAnnouncements.sImageURL.ToString());
                sReturn = sReturn.Replace("#sImageURL2#", _rec.WebSiteAnnouncements.sImageURL2.ToString());
                sReturn = sReturn.Replace("#sImageURL3#", _rec.WebSiteAnnouncements.sImageURL3.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteAdGroupAdsValues(string _OriginalMessage, AriesCMSDefinition.DEF_WebSiteAdGroupAds.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteAdGroupAds
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.sName.ToString());
                sReturn = sReturn.Replace("#sDescription#", _rec.sDescription.ToString());
                sReturn = sReturn.Replace("#dClicks#", _rec.dClicks.ToString());
                sReturn = sReturn.Replace("#dConversion#", _rec.dConversion.ToString());
                sReturn = sReturn.Replace("#dTotalRevenue#", _rec.dTotalRevenue.ToString());
                sReturn = sReturn.Replace("#dTotalCustomerProfit#", _rec.dTotalCustomerProfit.ToString());
                sReturn = sReturn.Replace("#sAdvertisementContentHTML#", _rec.sAdvertisementContentHTML.ToString());
                sReturn = sReturn.Replace("#sAdImgURL#", _rec.sAdImgURL.ToString());
                sReturn = sReturn.Replace("#sAdImgURI#", _rec.sAdImgURI.ToString());
                sReturn = sReturn.Replace("#sAdShortHTML#", _rec.sAdShortHTML.ToString());
                sReturn = sReturn.Replace("#dAdPayPerClick#", _rec.dAdPayPerClick.ToString());
                sReturn = sReturn.Replace("#dAdCostPerClick#", _rec.dAdCostPerClick.ToString());
                sReturn = sReturn.Replace("#dAdPayPerView#", _rec.dAdPayPerView.ToString());
                sReturn = sReturn.Replace("#dAdCostPerView#", _rec.dAdCostPerView.ToString());
                sReturn = sReturn.Replace("#dAdClickBudget#", _rec.dAdClickBudget.ToString());
                sReturn = sReturn.Replace("#dAdViewBudget#", _rec.dAdViewBudget.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.bDisabled.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.bHidden.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteAdvertisementGroupValues(string _OriginalMessage, AriesCMSDefinition.DEF_WebSiteAdvertisementGroup.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteAdvertisementGroup
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sName#", _rec.sName.ToString());
                sReturn = sReturn.Replace("#sDescription#", _rec.sDescription.ToString());
                sReturn = sReturn.Replace("#dClicks#", _rec.dClicks.ToString());
                sReturn = sReturn.Replace("#dConversion#", _rec.dConversion.ToString());
                sReturn = sReturn.Replace("#dTotalRevenue#", _rec.dTotalRevenue.ToString());
                sReturn = sReturn.Replace("#dTotalCustomerProfit#", _rec.dTotalCustomerProfit.ToString());
                sReturn = sReturn.Replace("#bDisabled#", _rec.bDisabled.ToString());
                sReturn = sReturn.Replace("#bHidden#", _rec.bHidden.ToString());


            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteBlogValues(string _OriginalMessage, AriesCMSDefinition.DEF_WebSiteBlog.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteBlog
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sTitle#", _rec.sTitle.ToString());
                sReturn = sReturn.Replace("#sSubject#", _rec.sSubject.ToString());
                sReturn = sReturn.Replace("#sDescription#", _rec.sDescription.ToString());
                sReturn = sReturn.Replace("#iPrimaryContributorID#", _rec.iPrimaryContributorID.ToString());
                sReturn = sReturn.Replace("#sPrimaryContributorID#", _rec.sPrimaryContributorID.ToString());
                sReturn = sReturn.Replace("#sKeyWords#", _rec.sKeyWords.ToString());
                sReturn = sReturn.Replace("#iAltContributorID#", _rec.iAltContributorID.ToString());
                sReturn = sReturn.Replace("#sAltContributorID#", _rec.sAltContributorID.ToString());
                sReturn = sReturn.Replace("#bRestrictAccess#", _rec.bRestrictAccess.ToString());
                sReturn = sReturn.Replace("#iSiteTemplateID#", _rec.iSiteTemplateID.ToString());
                sReturn = sReturn.Replace("#sSiteTemplateID#", _rec.sSiteTemplateID.ToString());
                sReturn = sReturn.Replace("#sSiteTemplateURI#", _rec.sSiteTemplateURI.ToString());
                sReturn = sReturn.Replace("#sSiteTempalteURL#", _rec.sSiteTempalteURL.ToString());
                sReturn = sReturn.Replace("#sLoadIncludeURI#", _rec.sLoadIncludeURI.ToString());
                sReturn = sReturn.Replace("#bLoadPartialPage#", _rec.bLoadPartialPage.ToString());
                sReturn = sReturn.Replace("#iZoneID#", _rec.iZoneID.ToString());
                sReturn = sReturn.Replace("#sZoneID#", _rec.sZoneID.ToString());
                sReturn = sReturn.Replace("#iSiteTemplatePageID#", _rec.iSiteTemplatePageID.ToString());
                sReturn = sReturn.Replace("#sSiteTemplatePageID#", _rec.sSiteTemplatePageID.ToString());
                sReturn = sReturn.Replace("#dCommentCount#", _rec.dCommentCount.ToString());
                sReturn = sReturn.Replace("#iAdScheduleID#", _rec.iAdScheduleID.ToString());
                sReturn = sReturn.Replace("#sAdScheduleID#", _rec.sAdScheduleID.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteBlogCommentsValues(string _OriginalMessage, AriesCMSDefinition.DEF_WebSiteBlogComments.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteBlogComments
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#iParentCommentID#", _rec.iParentCommentID.ToString());
                sReturn = sReturn.Replace("#sParentCommentID#", _rec.sParentCommentID.ToString());
                sReturn = sReturn.Replace("#sComment#", _rec.sComment.ToString());
                sReturn = sReturn.Replace("#bRestrictAccess#", _rec.bRestrictAccess.ToString());
                sReturn = sReturn.Replace("#iUserID#", _rec.iUserID.ToString());
                sReturn = sReturn.Replace("#sUserID#", _rec.sUserID.ToString());
                sReturn = sReturn.Replace("#sUserThumbNail#", _rec.sUserThumbNail.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }
        public string Parse_WebSite_Messaging_Template_WebSiteBlogEntryValues(string _OriginalMessage, AriesCMSDefinition.DEF_WebSiteBlogEntry.RecordObject _rec)
        {
            string sReturn = _OriginalMessage;
            try
            {
                //WebSiteBlogEntry
                sReturn = sReturn.Replace("#ID#", _rec.ID.ToString());
                sReturn = sReturn.Replace("#iParentID#", _rec.iParentID.ToString());
                sReturn = sReturn.Replace("#sParentID#", _rec.sParentID.ToString());
                sReturn = sReturn.Replace("#sControl#", _rec.sControl.ToString());
                sReturn = sReturn.Replace("#dtDateCreated#", _rec.dtDateCreated.ToString());
                sReturn = sReturn.Replace("#dtLastUpdated#", _rec.dtLastUpdated.ToString());
                sReturn = sReturn.Replace("#iCreatedByID#", _rec.iCreatedByID.ToString());
                sReturn = sReturn.Replace("#sCreatedByID#", _rec.sCreatedByID.ToString());
                sReturn = sReturn.Replace("#iUpdatedByID#", _rec.iUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sUpdatedByID#", _rec.sUpdatedByID.ToString());
                sReturn = sReturn.Replace("#sTitle#", _rec.sTitle.ToString());
                sReturn = sReturn.Replace("#sSubject#", _rec.sSubject.ToString());
                sReturn = sReturn.Replace("#sKeyWords#", _rec.sKeyWords.ToString());
                sReturn = sReturn.Replace("#sContent#", _rec.sContent.ToString());
                sReturn = sReturn.Replace("#bOpenToComments#", _rec.bOpenToComments.ToString());
                sReturn = sReturn.Replace("#bMustBeLoggedInToComment#", _rec.bMustBeLoggedInToComment.ToString());
                sReturn = sReturn.Replace("#bIsLive#", _rec.bIsLive.ToString());
                sReturn = sReturn.Replace("#dtStart#", _rec.dtStart.ToString());
                sReturn = sReturn.Replace("#dtEnd#", _rec.dtEnd.ToString());
                sReturn = sReturn.Replace("#bRestrictAccess#", _rec.bRestrictAccess.ToString());
                sReturn = sReturn.Replace("#bArchived#", _rec.bArchived.ToString());
                sReturn = sReturn.Replace("#iLanguageID#", _rec.iLanguageID.ToString());
                sReturn = sReturn.Replace("#sLanguageID#", _rec.sLanguageID.ToString());
                sReturn = sReturn.Replace("#sImageURL#", _rec.sImageURL.ToString());

            }
            catch (Exception s)
            {
                return _OriginalMessage;
            }
            return sReturn;
        }


        public AriesCMSInteractions.DINT_UsersMessages odbUsersMessages;
        public List<AriesCMSDefinition.DEF_UsersMessages.RecordObject> lstUsersMessages;
        public AriesCMSDefinition.DEF_UsersMessages.RecordObject recUsersMessages;
        public bool UsersMessages_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process

            odbUsersMessages = new DINT_UsersMessages(cnCon);
            int iTotalRows = 0;

            lstUsersMessages = null;
            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;

            if (_iParentID > 0)
            {
                pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }


            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                lstParameters = new List<DataParameter>();
                if (_iParentID > 0)
                {
                    pParameter = new DataParameter("sTitle", "'%" + Search + "%'", "string", 11, "sTitle", " LIKE ", " AND ");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
                }
                else
                {
                    pParameter = new DataParameter("sTitle", "'%" + Search + "%'", "string", 11, "sTitle", " LIKE ", "");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
                }
                iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbUsersMessages.GetRowCount(lstParameters);
            }

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstUsersMessages = odbUsersMessages.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool UsersMessages_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbUsersMessages = new DINT_UsersMessages(cnCon);
                recUsersMessages = new DEF_UsersMessages.RecordObject();
                List<AriesCMSDefinition.DEF_UsersMessages.RecordObject> dbSearch = odbUsersMessages.Get(lstParameters);
                if (dbSearch != null)
                {
                    if (dbSearch.Count > 0)
                    {
                        recUsersMessages = dbSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbUsersMessages = new DINT_UsersMessages(cnCon);
                recUsersMessages = new DEF_UsersMessages.RecordObject();
                List<AriesCMSDefinition.DEF_UsersMessages.RecordObject> dbSearch = odbUsersMessages.Get(lstParameters);
                if (dbSearch != null)
                {
                    if (dbSearch.Count > 0)
                    {
                        recUsersMessages = dbSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_UsersMessages()
        {
            try
            {
                lstUsersMessages = new List<DEF_UsersMessages.RecordObject>();
                recUsersMessages = new DEF_UsersMessages.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSitePageComments odbWebSitePageComments;
        public List<AriesCMSDefinition.DEF_WebSitePageComments.RecordObject> lstWebSitePageComments;
        public AriesCMSDefinition.DEF_WebSitePageComments.RecordObject recWebSitePageComments;
        public bool WebSitePageComments_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process

            odbWebSitePageComments = new DINT_WebSitePageComments(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSitePageComments.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSitePageComments = odbWebSitePageComments.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSitePageComments_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process

            if (id > 0)
            {
                #region ID Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSitePageComments = new DINT_WebSitePageComments(cnCon);
                recWebSitePageComments = new DEF_WebSitePageComments.RecordObject();
                List<AriesCMSDefinition.DEF_WebSitePageComments.RecordObject> lstSearch = odbWebSitePageComments.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSitePageComments = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSitePageComments = new DINT_WebSitePageComments(cnCon);
                recWebSitePageComments = new DEF_WebSitePageComments.RecordObject();
                List<AriesCMSDefinition.DEF_WebSitePageComments.RecordObject> lstSearch = odbWebSitePageComments.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSitePageComments = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_WebSitePageComments()
        {
            try
            {
                lstWebSitePageComments = new List<DEF_WebSitePageComments.RecordObject>();
                recWebSitePageComments = new DEF_WebSitePageComments.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_UsersPosts odbUsersPosts;
        public List<AriesCMSDefinition.DEF_UsersPosts.RecordObject> lstUsersPosts;
        public AriesCMSDefinition.DEF_UsersPosts.RecordObject recUsersPosts;
        public bool UsersPosts_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            odbUsersPosts = new DINT_UsersPosts(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;

            if (_iParentID > 0)
            {
                pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }


            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                lstParameters = new List<DataParameter>();
                if (_iParentID > 0)
                {
                    pParameter = new DataParameter("sSubject", "'%" + Search + "%'", "string", 11, "sSubject", " LIKE ", " AND ");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersPosts.GetRowCount(lstParameters);
                }
                else
                {
                    pParameter = new DataParameter("sSubject", "'%" + Search + "%'", "string", 11, "sSubject", " LIKE ", "");
                    lstParameters.Add(pParameter);
                    iTotalRows = odbUsersPosts.GetRowCount(lstParameters);
                }
                iTotalRows = odbUsersPosts.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbUsersPosts.GetRowCount(lstParameters);
            }

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstUsersPosts = odbUsersPosts.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool UsersPosts_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbUsersPosts = new DINT_UsersPosts(cnCon);
                recUsersPosts = new DEF_UsersPosts.RecordObject();
                List<AriesCMSDefinition.DEF_UsersPosts.RecordObject> lstSearch = odbUsersPosts.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recUsersPosts = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbUsersPosts = new DINT_UsersPosts(cnCon);
                recUsersPosts = new DEF_UsersPosts.RecordObject();
                List<AriesCMSDefinition.DEF_UsersPosts.RecordObject> lstSearch = odbUsersPosts.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recUsersPosts = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_UsersPosts()
        {
            try
            {
                lstUsersPosts = new List<DEF_UsersPosts.RecordObject>();
                recUsersPosts = new DEF_UsersPosts.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteBlog odbWebSiteBlog;
        public List<AriesCMSDefinition.DEF_WebSiteBlog.RecordObject> lstWebSiteBlog;
        public AriesCMSDefinition.DEF_WebSiteBlog.RecordObject recWebSiteBlog;
        public bool WebSiteBlog_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process
            odbWebSiteBlog = new DINT_WebSiteBlog(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            if (_iParentID > 0)
            {
                DataParameter pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }

            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                DataParameter pParameter = new DataParameter("sTitle", "'" + Search + "'", "string", 10, "sTitle", " = ", "");
                lstParameters.Add(pParameter);
                iTotalRows = odbWebSiteBlog.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbWebSiteBlog.GetRowCount(lstParameters);
            }

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

                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteBlog = odbWebSiteBlog.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }

            #endregion
        }
        public bool WebSiteBlog_FindBlog_ByName(string Search)
        {
            #region Process
            odbWebSiteBlog = new DINT_WebSiteBlog(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();

            DataParameter pParameter = new DataParameter("sTitle", "'" + Search + "'", "string", 10, "sTitle", " = ", "");
            lstParameters.Add(pParameter);

            List<AriesCMSDefinition.DEF_WebSiteBlog.RecordObject> lstSearch = odbWebSiteBlog.Get(lstParameters);
            if (lstSearch != null)
            {
                if (lstSearch.Count > 0)
                {
                    foreach (AriesCMSDefinition.DEF_WebSiteBlog.RecordObject oRec in lstSearch)
                    {
                        if (oRec.sTitle == Search)
                        {
                            recWebSiteBlog = oRec;
                            return true;
                        }
                    }
                    return false;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }



            #endregion
        }
        public bool WebSiteBlog_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteBlog = new DINT_WebSiteBlog(cnCon);
                recWebSiteBlog = new DEF_WebSiteBlog.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteBlog.RecordObject> lstSearch = odbWebSiteBlog.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteBlog = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 1, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteBlog = new DINT_WebSiteBlog(cnCon);
                recWebSiteBlog = new DEF_WebSiteBlog.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteBlog.RecordObject> lstSearch = odbWebSiteBlog.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteBlog = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }
        }
        public void Ini_WebSiteBlog()
        {
            try
            {
                lstWebSiteBlog = new List<DEF_WebSiteBlog.RecordObject>();
                recWebSiteBlog = new DEF_WebSiteBlog.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteBlogEntry odbWebSiteBlogEntry;
        public List<AriesCMSDefinition.DEF_WebSiteBlogEntry.RecordObject> lstWebSiteBlogEntry;
        public AriesCMSDefinition.DEF_WebSiteBlogEntry.RecordObject recWebSiteBlogEntry;
        public bool WebSiteBlogEntry_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process
            odbWebSiteBlogEntry = new DINT_WebSiteBlogEntry(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            if (_iParentID > 0)
            {
                DataParameter pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }

            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                DataParameter pParameter = new DataParameter("sTitle", "'" + Search + "'", "string", 10, "sTitle", " = ", "");
                lstParameters.Add(pParameter);
                iTotalRows = odbWebSiteBlogEntry.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbWebSiteBlogEntry.GetRowCount(lstParameters);
            }

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

                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteBlogEntry = odbWebSiteBlogEntry.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }

            #endregion
        }
        public bool WebSiteBlogEntry_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteBlogEntry = new DINT_WebSiteBlogEntry(cnCon);
                recWebSiteBlogEntry = new DEF_WebSiteBlogEntry.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteBlogEntry.RecordObject> lstSearch = odbWebSiteBlogEntry.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteBlogEntry = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 1, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteBlogEntry = new DINT_WebSiteBlogEntry(cnCon);
                recWebSiteBlogEntry = new DEF_WebSiteBlogEntry.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteBlogEntry.RecordObject> lstSearch = odbWebSiteBlogEntry.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteBlogEntry = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }
        }
        public void Ini_WebSiteBlogEntry()
        {
            try
            {
                lstWebSiteBlogEntry = new List<DEF_WebSiteBlogEntry.RecordObject>();
                recWebSiteBlogEntry = new DEF_WebSiteBlogEntry.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteBlogComments odbWebSiteBlogComments;
        public List<AriesCMSDefinition.DEF_WebSiteBlogComments.RecordObject> lstWebSiteBlogComments;
        public ACMSDBView.WebSiteBlogCommentsViewModel recWebSiteBlogCommentsView;
        public bool WebSiteBlogComments_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process

            odbWebSiteBlogComments = new DINT_WebSiteBlogComments(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            if (_iParentID > 0)
            {
                DataParameter pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
                lstParameters.Add(pParameter);
            }

            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                DataParameter pParameter = new DataParameter("sComment", "'%" + Search + "%'", "string", 12, "sComment", " LIKE ", "");
                lstParameters.Add(pParameter);
                iTotalRows = odbWebSiteBlogComments.GetRowCount(lstParameters);
            }
            else
            {
                iTotalRows = odbWebSiteBlogComments.GetRowCount(lstParameters);
            }

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteBlogComments = odbWebSiteBlogComments.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }

            #endregion
        }
        public bool WebSiteBlogComments_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull
                recWebSiteBlogCommentsView = new WebSiteBlogCommentsViewModel();
                if (recWebSiteBlogCommentsView.GetView(cnCon, id))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 1, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteBlogComments = new DINT_WebSiteBlogComments(cnCon);
                List<AriesCMSDefinition.DEF_WebSiteBlogComments.RecordObject> lstSearch = odbWebSiteBlogComments.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteBlogCommentsView = new WebSiteBlogCommentsViewModel();
                        recWebSiteBlogCommentsView.WebSiteBlogComments = lstSearch[0];
                        recWebSiteBlogCommentsView.Get_ParentComment(cnCon);
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_WebSiteBlogComments()
        {
            try
            {
                lstWebSiteBlogComments = new List<DEF_WebSiteBlogComments.RecordObject>();
                recWebSiteBlogCommentsView = new WebSiteBlogCommentsViewModel();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteForum odbWebSiteForum;
        public List<AriesCMSDefinition.DEF_WebSiteForum.RecordObject> lstWebSiteForum;
        public AriesCMSDefinition.DEF_WebSiteForum.RecordObject recWebSiteForum;
        public bool WebSiteForum_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {

            odbWebSiteForum = new DINT_WebSiteForum(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();


                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteForum.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteForum = odbWebSiteForum.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool WebSiteForum_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForum = new DINT_WebSiteForum(cnCon);
                recWebSiteForum = new DEF_WebSiteForum.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForum.RecordObject> lstSearch = odbWebSiteForum.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForum = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForum = new DINT_WebSiteForum(cnCon);
                recWebSiteForum = new DEF_WebSiteForum.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForum.RecordObject> lstSearch = odbWebSiteForum.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForum = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }
            #endregion
        }
        public void Ini_WebSiteForum()
        {
            try
            {
                lstWebSiteForum = new List<DEF_WebSiteForum.RecordObject>();
                recWebSiteForum = new DEF_WebSiteForum.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteForumiAnnouncements odbWebSiteForumiAnnouncements;
        public List<AriesCMSDefinition.DEF_WebSiteForumiAnnouncements.RecordObject> lstWebSiteForumiAnnouncements;
        public AriesCMSDefinition.DEF_WebSiteForumiAnnouncements.RecordObject recWebSiteForumiAnnouncements;
        public bool WebSiteForumiAnnouncements_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process
            odbWebSiteForumiAnnouncements = new DINT_WebSiteForumiAnnouncements(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteForumiAnnouncements.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteForumiAnnouncements = odbWebSiteForumiAnnouncements.Get(lstParameters, iRow, iNextTop);

                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSiteForumiAnnouncements_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumiAnnouncements = new DINT_WebSiteForumiAnnouncements(cnCon);
                recWebSiteForumiAnnouncements = new DEF_WebSiteForumiAnnouncements.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumiAnnouncements.RecordObject> lstSearch = odbWebSiteForumiAnnouncements.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumiAnnouncements = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumiAnnouncements = new DINT_WebSiteForumiAnnouncements(cnCon);
                recWebSiteForumiAnnouncements = new DEF_WebSiteForumiAnnouncements.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumiAnnouncements.RecordObject> lstSearch = odbWebSiteForumiAnnouncements.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumiAnnouncements = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }
        }
        public void Ini_WebSiteForumiAnnouncements()
        {
            try
            {
                lstWebSiteForumiAnnouncements = new List<DEF_WebSiteForumiAnnouncements.RecordObject>();
                recWebSiteForumiAnnouncements = new DEF_WebSiteForumiAnnouncements.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteForumTopics odbWebSiteForumTopics;
        public List<AriesCMSDefinition.DEF_WebSiteForumTopics.RecordObject> lstWebSiteForumTopics;
        public AriesCMSDefinition.DEF_WebSiteForumTopics.RecordObject recWebSiteForumTopics;
        public bool WebSiteForumTopics_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process
            odbWebSiteForumTopics = new DINT_WebSiteForumTopics(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteForumTopics.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteForumTopics = odbWebSiteForumTopics.Get(lstParameters, iRow, iNextTop);

                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSiteForumTopics_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process

            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopics = new DINT_WebSiteForumTopics(cnCon);
                recWebSiteForumTopics = new DEF_WebSiteForumTopics.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopics.RecordObject> lstSearch = odbWebSiteForumTopics.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopics = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopics = new DINT_WebSiteForumTopics(cnCon);
                recWebSiteForumTopics = new DEF_WebSiteForumTopics.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopics.RecordObject> lstSearch = odbWebSiteForumTopics.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopics = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_WebSiteForumTopics()
        {
            try
            {
                lstWebSiteForumTopics = new List<DEF_WebSiteForumTopics.RecordObject>();
                recWebSiteForumTopics = new DEF_WebSiteForumTopics.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteForumTopiAnnouncements odbWebSiteForumTopiAnnouncements;
        public List<AriesCMSDefinition.DEF_WebSiteForumTopiAnnouncements.RecordObject> lstWebSiteForumTopiAnnouncements;
        public AriesCMSDefinition.DEF_WebSiteForumTopiAnnouncements.RecordObject recWebSiteForumTopiAnnouncements;
        public bool WebSiteForumTopiAnnouncements_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process
            odbWebSiteForumTopiAnnouncements = new DINT_WebSiteForumTopiAnnouncements(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteForumTopiAnnouncements.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteForumTopiAnnouncements = odbWebSiteForumTopiAnnouncements.Get(lstParameters, iRow, iNextTop);

                return true;
            }
            else
            {
                return true;
            }
            #endregion
        }
        public bool WebSiteForumTopiAnnouncements_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            if (id > 0)
            {
                #region ID Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopiAnnouncements = new DINT_WebSiteForumTopiAnnouncements(cnCon);
                recWebSiteForumTopiAnnouncements = new DEF_WebSiteForumTopiAnnouncements.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopiAnnouncements.RecordObject> lstSearch = odbWebSiteForumTopiAnnouncements.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopiAnnouncements = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopiAnnouncements = new DINT_WebSiteForumTopiAnnouncements(cnCon);
                recWebSiteForumTopiAnnouncements = new DEF_WebSiteForumTopiAnnouncements.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopiAnnouncements.RecordObject> lstSearch = odbWebSiteForumTopiAnnouncements.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopiAnnouncements = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }
        }
        public void Ini_WebSiteForumTopiAnnouncements()
        {
            try
            {
                lstWebSiteForumTopiAnnouncements = new List<DEF_WebSiteForumTopiAnnouncements.RecordObject>();
                recWebSiteForumTopiAnnouncements = new DEF_WebSiteForumTopiAnnouncements.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteForumTopicPosts odbWebSiteForumTopicPosts;
        public List<AriesCMSDefinition.DEF_WebSiteForumTopicPosts.RecordObject> lstWebSiteForumTopicPosts;
        public AriesCMSDefinition.DEF_WebSiteForumTopicPosts.RecordObject recWebSiteForumTopicPosts;
        public bool WebSiteForumTopicPosts_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process
            odbWebSiteForumTopicPosts = new DINT_WebSiteForumTopicPosts(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteForumTopicPosts.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteForumTopicPosts = odbWebSiteForumTopicPosts.Get(lstParameters, iRow, iNextTop);

                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSiteForumTopicPosts_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopicPosts = new DINT_WebSiteForumTopicPosts(cnCon);
                recWebSiteForumTopicPosts = new DEF_WebSiteForumTopicPosts.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopicPosts.RecordObject> lstSearch = odbWebSiteForumTopicPosts.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopicPosts = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopicPosts = new DINT_WebSiteForumTopicPosts(cnCon);
                recWebSiteForumTopicPosts = new DEF_WebSiteForumTopicPosts.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopicPosts.RecordObject> lstSearch = odbWebSiteForumTopicPosts.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopicPosts = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }
        }
        public void Ini_WebSiteForumTopicPosts()
        {
            try
            {
                lstWebSiteForumTopicPosts = new List<DEF_WebSiteForumTopicPosts.RecordObject>();
                recWebSiteForumTopicPosts = new DEF_WebSiteForumTopicPosts.RecordObject();
            }
            catch
            {
            }
        }

        public AriesCMSInteractions.DINT_WebSiteForumTopicPostsResponses odbWebSiteForumTopicPostsResponses;
        public List<AriesCMSDefinition.DEF_WebSiteForumTopicPostsResponses.RecordObject> lstWebSiteForumTopicPostsResponses;
        public AriesCMSDefinition.DEF_WebSiteForumTopicPostsResponses.RecordObject recWebSiteForumTopicPostsResponses;
        public bool WebSiteForumTopicPostsResponses_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process

            odbWebSiteForumTopicPostsResponses = new DINT_WebSiteForumTopicPostsResponses(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();


                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteForumTopicPostsResponses.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteForumTopicPostsResponses = odbWebSiteForumTopicPostsResponses.Get(lstParameters, iRow, iNextTop);
                return true;
            }
            else
            {
                return true;
            }
            #endregion
        }
        public bool WebSiteForumTopicPostsResponses_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process
            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopicPostsResponses = new DINT_WebSiteForumTopicPostsResponses(cnCon);
                recWebSiteForumTopicPostsResponses = new DEF_WebSiteForumTopicPostsResponses.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopicPostsResponses.RecordObject> lstSearch = odbWebSiteForumTopicPostsResponses.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopicPostsResponses = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull

                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteForumTopicPostsResponses = new DINT_WebSiteForumTopicPostsResponses(cnCon);
                recWebSiteForumTopicPostsResponses = new DEF_WebSiteForumTopicPostsResponses.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteForumTopicPostsResponses.RecordObject> lstSearch = odbWebSiteForumTopicPostsResponses.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteForumTopicPostsResponses = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }
        public void Ini_WebSiteForumTopicPostsResponses()
        {
            try
            {
                lstWebSiteForumTopicPostsResponses = new List<DEF_WebSiteForumTopicPostsResponses.RecordObject>();
                recWebSiteForumTopicPostsResponses = new DEF_WebSiteForumTopicPostsResponses.RecordObject();
            }
            catch
            {
            }
        }




        public AriesCMSInteractions.DINT_WebSiteJobs odbWebSiteJobs;
        public List<AriesCMSDefinition.DEF_WebSiteJobs.RecordObject> lstWebSiteJobs;
        public AriesCMSDefinition.DEF_WebSiteJobs.RecordObject recWebSiteJobs;
        public bool WebSiteJobs_List(string Search, int _iParentID = 0, string _sParentID = "", int page = 1)
        {
            #region Process


            odbWebSiteJobs = new DINT_WebSiteJobs(cnCon);
            int iTotalRows = 0;

            List<DataParameter> lstParameters = new List<DataParameter>();
            DataParameter pParameter = null;
            bool bParameterSet = false;
            string sPRelationsToOthers = "";
            //if (_iParentID > 0)
            //{
            pParameter = new DataParameter("iParentID", "'" + _iParentID + "'", "int", 1, "iParentID", " = ", "");
            lstParameters.Add(pParameter);
            bParameterSet = true;
            //}



            if (!String.IsNullOrEmpty(Search))
            {
                Search = Search.TrimEnd();
                Search = Search.TrimStart();

                bool bIsNumber = false;
                bool bIsDate = false;
                bool bIsBool = false;
                #region Test For Number
                try
                {
                    int iTest = System.Convert.ToInt32(Search);
                    bIsNumber = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Date
                try
                {
                    DateTime dtTest = System.Convert.ToDateTime(Search);
                    bIsDate = true;
                }
                catch
                {
                }
                #endregion
                #region Test For Boolean
                try
                {
                    bool bTest = System.Convert.ToBoolean(Search);
                    bIsBool = true;
                }
                catch
                {
                }
                #endregion


                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }
                //if (_iParentID > 0)
                //{
                //if (bIsNumber == true)
                //{
                //}
                //}
                if (bParameterSet == true)
                {
                    sPRelationsToOthers = " AND ";
                }
                else
                {
                    sPRelationsToOthers = "";
                }

            }

            iTotalRows = odbWebSiteJobs.GetRowCount(lstParameters);

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
                if (page <= iNumberOfPages)
                {
                    if (page > 1)
                    {
                        iRow = ((page - 1) * iMaxRows) + 1;
                        iNextTop = (page * iMaxRows);
                    }
                    else
                    {
                        iRow = 0;
                        iNextTop = page * iMaxRows;
                    }
                }
                else
                {
                    page = iNumberOfPages;
                    iRow = ((page - 1) * iMaxRows) + 1;
                    iNextTop = iNumberOfPages * iMaxRows;
                }
                #endregion
                lstWebSiteJobs = odbWebSiteJobs.Get(lstParameters, iRow, iNextTop);

                return true;
            }
            else
            {
                return false;
            }
            #endregion
        }
        public bool WebSiteJobs_Details(int id = 0, string key = "", bool _UseParameterResults = false, bool _AddNew = false, bool _Saved = false)
        {
            #region Process

            if (id > 0)
            {
                #region ID Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("ID", id.ToString(), "int", 0, "ID", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteJobs = new DINT_WebSiteJobs(cnCon);
                recWebSiteJobs = new DEF_WebSiteJobs.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteJobs.RecordObject> lstSearch = odbWebSiteJobs.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteJobs = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else if (!String.IsNullOrEmpty(key))
            {
                #region key Based pull
                List<DataParameter> lstParameters = new List<DataParameter>();
                DataParameter pParameter = new DataParameter("sControl", "'" + key + "'", "string", 3, "sControl", " = ", "");
                lstParameters.Add(pParameter);

                odbWebSiteJobs = new DINT_WebSiteJobs(cnCon);
                recWebSiteJobs = new DEF_WebSiteJobs.RecordObject();
                List<AriesCMSDefinition.DEF_WebSiteJobs.RecordObject> lstSearch = odbWebSiteJobs.Get(lstParameters);
                if (lstSearch != null)
                {
                    if (lstSearch.Count > 0)
                    {
                        recWebSiteJobs = lstSearch[0];
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
                #endregion
            }
            else
            {
                return false;
            }

            #endregion
        }


        public AriesCMSDefinition.DEF_WebSiteJobApplicant.RecordObject recWebSiteJobApplicant;
        public void Ini_WebSiteJobs()
        {
            try
            {
                lstWebSiteJobs = new List<DEF_WebSiteJobs.RecordObject>();
                recWebSiteJobs = new DEF_WebSiteJobs.RecordObject();
            }
            catch
            {

            }
        }



        public SiteCoreHelper()
        {
            UserCookie = new AriesCMS.Helpers.SiteCookieHelper(rsGlobalVeriables.CookieName);
            if (!UserCookie.GetCookie())
            {
                UserCookie.SetCookie();
            }

            CurrentUser = new ACMSUser.UserSecurity();
            try
            {
                BaseURL = HttpContext.Current.Request.Url.Scheme + "://" + HttpContext.Current.Request.Url.Authority + "/";
            }
            catch
            {
            }

            //try
            //{
            //    AutoLogIn();
            //}
            //catch
            //{
            //}

            Ini_SiteCoreHelper();
        }

    }

    [Serializable]
    public partial class SitAnalytics
    {
        //Select count(*) From WebSiteEvents Where dtDateCreated >= '03/01/2015 12:00:01 AM' and dtDateCreated <= '03/1/2015 11:59:59 PM' - this gives you view count
        //Select * From WebSiteEvents Where dtDateCreated >= '03/01/2015 12:00:01 AM' and dtDateCreated <= '03/1/2015 11:59:59 PM'  Order by sEvent - this gives you count by page
        //Select * From WebSiteEvents Where dtDateCreated >= '03/01/2015 12:00:01 AM' and dtDateCreated <= '03/1/2015 11:59:59 PM'  Order by iCreatedByID - this gives you count by user
        //SELECT iTypeID, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where dtDateCreated >= '06/8/2015 12:00:01 AM' and dtDateCreated <= '06/8/2015 11:59:59 PM' GROUP BY iTypeID HAVING COUNT(*) > 1 ORDER BY COUNT(*) DESC
        //SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '01/01/2015 12:00:01 AM' and dtDateCreated <= '06/8/2015 11:59:59 PM') and (iTypeID = 0) GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))
        //Select sEvent, count(sEvent) as TotalCount From WebSiteEvents with(nolock) where dtDateCreated >= '01/1/2015 12:00:01 AM' and dtDateCreated <= '06/8/2015 11:59:59 PM' GROUP BY sEvent


        public List<SiteAnalytics> Get_Views_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";
                    
                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {
                                            
                                            foreach(DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).Date.ToShortDateString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch(Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Clicks_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).Date.ToShortDateString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Visits_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {
                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).Date.ToShortDateString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Views_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).DayOfWeek.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Clicks_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).DayOfWeek.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Visits_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).DayOfWeek.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Views_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(hour,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY dateadd(hour,0, datediff(hour,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Clicks_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(hour,0, datediff(hour,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY dateadd(hour,0, datediff(hour,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Visits_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(hour,0, datediff(hour,0, dtDateCreated)) as created, COUNT(*) TotalCount FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY dateadd(hour,0, datediff(hour,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        

        public List<SiteAnalytics> Get_Views_ByUser_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).Date.ToShortDateString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Clicks_ByUser_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).Date.ToShortDateString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Visits_ByUser_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).Date.ToShortDateString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Views_ByUser_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).DayOfWeek.ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Clicks_ByUser_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).DayOfWeek.ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Visits_ByUser_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).DayOfWeek.ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Views_ByUser_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).TimeOfDay.Hours.ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Clicks_ByUser_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).TimeOfDay.Hours.ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_Visits_ByUser_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sCreatedByID, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).TimeOfDay.Hours.ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }




        public List<SiteAnalytics> Get_PageViews_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).Date.ToShortDateString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageClicks_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).Date.ToShortDateString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageVisits_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {
                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).Date.ToShortDateString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageViews_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).DayOfWeek.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageClicks_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).DayOfWeek.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageVisits_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).DayOfWeek.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageViews_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(DAY,0, datediff(hour,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sEvent, dateadd(hour,0, datediff(hour,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageClicks_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(hour,0, datediff(hour,0, dtDateCreated)) as created, COUNT(*) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sEvent, dateadd(hour,0, datediff(hour,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageVisits_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "SELECT dateadd(hour,0, datediff(hour,0, dtDateCreated)) as created, COUNT(sEvent) TotalCount, sEvent FROM WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sEvent, dateadd(hour,0, datediff(hour,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = System.Convert.ToDateTime(drRow[0].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value = drRow[1].ToString();
                                                oR.Value2 = drRow[2].ToString();
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }




        public List<SiteAnalytics> Get_PageViews_ByUser_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).Date.ToShortDateString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageClicks_ByUser_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).Date.ToShortDateString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageVisits_ByUser_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).Date.ToShortDateString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageViews_ByUser_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).DayOfWeek.ToString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageClicks_ByUser_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).DayOfWeek.ToString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageVisits_ByUser_ByDayOfWeek(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).DayOfWeek.ToString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageViews_ByUser_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 0) GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageClicks_ByUser_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') and (iTypeID = 1) GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }
        public List<SiteAnalytics> Get_PageVisits_ByUser_ByHour(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select sCreatedByID, count(sCreatedByID) as TotalCount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created, sEvent From WebSiteEvents with(nolock) where (dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM') GROUP BY sCreatedByID, sEvent, dateadd(DAY,0, datediff(day,0, dtDateCreated))";

                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "WebSiteEvents");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {

                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = drRow[0].ToString();//User
                                                oR.Value = drRow[1].ToString();//Count
                                                oR.Value2 = System.Convert.ToDateTime(drRow[2].ToString()).TimeOfDay.Hours.ToString();
                                                oR.Value3 = drRow[3].ToString();//Count
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }


        public List<SiteAnalytics> Get_UserCount_ByDate(DateTime dtFrom, DateTime dtTo, IDataConnection cnCon)
        {
            try
            {
                List<SiteAnalytics> oData = new List<SiteAnalytics>();
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    DataInteractionManagerFactory DataInteractionFactory = new DataInteractionManagerFactory();
                    IADataInteraction DataInteractionsManager;
                    string _sSQL = "Select Count(iCreatedByID) as numcount, dateadd(DAY,0, datediff(day,0, dtDateCreated)) as created From Users with(nolock) Where dtDateCreated >= '" + dtFrom.Date.ToShortDateString() + " 12:00:01 AM' and dtDateCreated <= '" + dtTo.Date.ToShortDateString() + " 11:59:59 PM'  GROUP BY dateadd(DAY,0, datediff(day,0, dtDateCreated))";
                    
                    #region DB Get
                    try
                    {
                        DataInteractionsManager = DataInteractionFactory.GetManager(cnCon, null, null, "", "", "Users");
                        DataInteractionsManager.Initialize_DataInteractionManager_SelectAll(_sSQL);

                        System.Data.DataSet dsDataSet = DataInteractionsManager.Get_DataSet();

                        if (dsDataSet != null)
                        {
                            if (dsDataSet.Tables != null)
                            {
                                if (dsDataSet.Tables.Count > 0)
                                {
                                    if (dsDataSet.Tables[0] != null)
                                    {
                                        if (dsDataSet.Tables[0].Rows.Count > 0)
                                        {
                                            foreach (DataRow drRow in dsDataSet.Tables[0].Rows)
                                            {
                                                SiteAnalytics oR = new SiteAnalytics();
                                                oR.Label = "Count";
                                                oR.Value = drRow[0].ToString();//User
                                                oData.Add(oR);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }
                return oData;
            }
            catch (Exception s)
            {
                return null;
            }
        }


        public class SiteAnalytics
        {
            public string Label { get; set; }
            public string Value { get; set; }
            public string Value2 { get; set; }
            public string Value3 { get; set; }
        }

    }

    [Serializable]
    public partial class GlobalValidation
    {
        bool bGResponse = false;

        public bool Validate_ContactLead(AriesCMS.Models.ContactLeadView _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                if (String.IsNullOrEmpty(_rec.FirstName))
                {
                    _rec.ErrorMessage += " First Name field is not correct or empty.<br/>";
                    bResponse = false;
                }
                if (String.IsNullOrEmpty(_rec.LastName))
                {
                    _rec.ErrorMessage += " Last Name field is not correct or empty.<br/>";
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.Email))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    bResponse = false;
                }
                else if (!_rec.Email.Contains('@'))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    bResponse = false;
                }
                else if (!IsValidEmail(_rec.Email))
                {
                    _rec.ErrorMessage += " EMail invalid.<br/>";
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.CompanyName))
                {
                    _rec.ErrorMessage += " Company Name field is not correct or empty.<br/>";
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.CompanyURL))
                {
                    _rec.ErrorMessage += " Company URL field is not correct or empty.<br/>";
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.GrossAnnualRevenues))
                //{
                //    _rec.ErrorMessage += " Gross Annual Revenues field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.HowManyEmployees))
                //{
                //    _rec.ErrorMessage += " How Many Employees field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                if (String.IsNullOrEmpty(_rec.Phone))
                {
                    _rec.ErrorMessage += " Phone field is not correct or empty.<br/>";
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.PhoneExt))
                //{
                //    _rec.ErrorMessage += " Phone Ext. field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.RefferalCode))
                //{
                //    _rec.ErrorMessage += " Refferal Code field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.Title))
                //{
                //    _rec.ErrorMessage += " Title field is not correct or empty.<br/>";
                //    bResponse = false;
                //}


                _ProcessMessage = _rec.ErrorMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ErrorMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_ContactUs(AriesCMS.Models.ContactUsView _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                if (String.IsNullOrEmpty(_rec.Name))
                {
                    _rec.ErrorMessage += " Name field is not correct or empty.<br/>";
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.Email))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    bResponse = false;
                }
                else if (!_rec.Email.Contains('@'))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    bResponse = false;
                }
                else if (!IsValidEmail(_rec.Email))
                {
                    _rec.ErrorMessage += " EMail invalid.<br/>";
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.Phone))
                //{
                //    _rec.ErrorMessage += " Phone field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                if (String.IsNullOrEmpty(_rec.Subject))
                {
                    _rec.ErrorMessage += " Message Subject field is not correct or empty.<br/>";
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.Message))
                {
                    _rec.ErrorMessage += " Message field is not correct or empty.<br/>";
                    bResponse = false;
                }


                _ProcessMessage = _rec.ErrorMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ErrorMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_NewNewsLetter(AriesCMS.Models.NewNewsLetter _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                if (String.IsNullOrEmpty(_rec.FirstName))
                {
                    _rec.ErrorMessage += " First Name field is not correct or empty.<br/>";
                    _rec.FirstNameError = true;
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.LastName))
                {
                    _rec.ErrorMessage += " Last Name field is not correct or empty.<br/>";
                    _rec.LastNameError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.EMail))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    _rec.EMailError = true;
                    _rec.EMailErrorMessage = " EMail field is not correct or empty.<br/>"; ;
                    bResponse = false;
                }
                else if (!_rec.EMail.Contains('@'))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    _rec.EMailError = true;
                    _rec.EMailErrorMessage = " EMail field is not correct or empty.<br/>"; ;
                    bResponse = false;
                }
                else if (!IsValidEmail(_rec.EMail))
                {
                    _rec.ErrorMessage += " EMail invalid.<br/>";
                    _rec.EMailError = true;
                    _rec.EMailErrorMessage = " EMail invalid.<br/>";
                    bResponse = false;
                }



                //if (String.IsNullOrEmpty(_rec.OptingInMail))
                //{
                //    _rec.PublicFormResponseMessage += " Please Opt. into our news letter to sign up.<br/>";
                //    _rec.OptingInMailError = true;
                //    bResponse = false;
                //}


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }

                _ProcessMessage = _rec.ErrorMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.DebugFormResponseMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_NewUserRegistration(AriesCMS.Models.NewUserRegistration _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                if (String.IsNullOrEmpty(_rec.FirstName))
                {
                    _rec.ErrorMessage += " First Name field is not correct or empty.<br/>";
                    _rec.FirstNameError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.LastName))
                {
                    _rec.ErrorMessage += " Last Name field is not correct or empty.<br/>";
                    _rec.LastNameError = true;
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.MiddleName))
                //{
                //    _rec.PublicFormResponseMessage += " Middle Name field is not correct or empty.<br/>";
                //    _rec.MiddleNameError = true;
                //    bResponse = false;
                //}

                if (String.IsNullOrEmpty(_rec.UserName))
                {
                    _rec.ErrorMessage += " User Name field is not correct or empty.<br/>";
                    _rec.UserNameError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.EMail))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    _rec.EMailError = true;
                    bResponse = false;
                }
                else if (!_rec.EMail.Contains('@'))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    _rec.EMailError = true;
                    bResponse = false;
                }
                else if (!IsValidEmail(_rec.EMail))
                {
                    _rec.ErrorMessage += " EMail invalid.<br/>";
                    _rec.EMailError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.Password))
                {
                    _rec.ErrorMessage += " Password field is not correct or empty.<br/>";
                    _rec.PasswordErrorMessage = " Password field is not correct or empty.<br/>";
                    _rec.PasswordError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.PasswordConfirm))
                {
                    _rec.ErrorMessage += " Confirmation Password field is not correct or empty.<br/>";
                    _rec.PasswordErrorMessage += " Confirmation Password field is not correct or empty.<br/>";
                    _rec.PasswordConfirmError = true;
                    bResponse = false;
                }

                if ((!String.IsNullOrEmpty(_rec.Password)) && (!String.IsNullOrEmpty(_rec.PasswordConfirm)))
                {
                    if (_rec.Password != _rec.PasswordConfirm)
                    {
                        _rec.ErrorMessage += " Password and Confirmation Password Do Not match.<br/>";
                        _rec.PasswordErrorMessage = " Password and Confirmation Password Do Not match.<br/>";
                        _rec.PasswordError = true;
                        _rec.PasswordConfirmError = true;
                        bResponse = false;
                    }
                }


                //if (String.IsNullOrEmpty(_rec.CellPhone))
                //{
                //    _rec.PublicFormResponseMessage += " Cell Phone field is not correct or empty.<br/>";
                //    _rec.CellPhoneError = true;
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.CuponCodes))
                //{
                //    _rec.PublicFormResponseMessage += " Coupon Code field is not correct or empty.<br/>";                    
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.DateOfBirth))
                //{
                //    _rec.PublicFormResponseMessage += " Date of Birth field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.DOBDay))
                //{
                //    _rec.PublicFormResponseMessage += " Date of Birth Day field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.DOBMonth))
                //{
                //    _rec.PublicFormResponseMessage += " Date of Birth Month field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.DOBYear))
                //{
                //    _rec.PublicFormResponseMessage += " Date of Birth Year field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.Fax))
                //{
                //    _rec.PublicFormResponseMessage += " Fax field is not correct or empty.<br/>";
                //    _rec.FaxError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.OptingInMail))
                //{
                //    _rec.PublicFormResponseMessage += " Please select to Opt. in to our news letter.<br/>";
                //    _rec.OptingInMailError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.Phone))
                //{
                //    _rec.PublicFormResponseMessage += " Phone field is not correct or empty.<br/>";
                //    _rec.PhoneError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.PromoCodes))
                //{
                //    _rec.PublicFormResponseMessage += " Promotion Code field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.Sex))
                //{
                //    _rec.PublicFormResponseMessage += " Sex field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                if (_rec.AddressInfo != null)
                {
                    string sTempAddressMessageOut = "";
                    bResponse = Validate_UserAddressInfo(_rec.AddressInfo, out sTempAddressMessageOut);
                    _rec.ErrorMessage += sTempAddressMessageOut;
                }

                if (_rec.Company != null)
                {
                    string sTempCompanyMessageOut = "";
                    bResponse = Validate_UserCompanyInfo(_rec.Company, out sTempCompanyMessageOut);
                    _rec.ErrorMessage += sTempCompanyMessageOut;
                }

                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }


                _ProcessMessage = _rec.ErrorMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.DebugFormResponseMessage += s.ToString();
                _rec.ValidationErrors = true;
                return false;
            }
        }

        public bool Validate_UserCompanyInfo(AriesCMS.Models.UserCompanyInfo _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;


                //if (String.IsNullOrEmpty(_rec.EMail))
                //{
                //    _rec.AdditionalMessage += " EMail field is not correct or empty.<br/>";
                //    _rec.EMailError = true;
                //    bResponse = false;
                //}
                //else if (!_rec.EMail.Contains('@'))
                //{
                //    _rec.AdditionalMessage += " EMail field is not correct or empty.<br/>";
                //    _rec.EMailError = true;
                //    bResponse = false;
                //}
                //else if (!IsValidEmail(_rec.EMail))
                //{
                //    _rec.AdditionalMessage += " EMail invalid.<br/>";
                //    _rec.EMailError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.AvailableTimes))
                //{
                //    _rec.AdditionalMessage += " Available Times field is not correct or empty.<br/>";
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CellPhone))
                //{
                //    _rec.AdditionalMessage += " Cell Phone field is not correct or empty.<br/>";
                //    _rec.CellPhoneError= true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyAddressLine1))
                //{
                //    _rec.AdditionalMessage += " Address Line 1 field is not correct or empty.<br/>";
                //    _rec.CompanyAddressLine1Error= true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyAddressLine2))
                //{
                //    _rec.AdditionalMessage += " Address Line 2 field is not correct or empty.<br/>";
                //    _rec.CompanyAddressLine2Error= true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyAddressLine3))
                //{
                //    _rec.AdditionalMessage += " Address Line 3 field is not correct or empty.<br/>";
                //    _rec.CompanyAddressLine3Error = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyCellPhone))
                //{
                //    _rec.AdditionalMessage += " Cell Phone field is not correct or empty.<br/>";
                //    _rec.CompanyCellPhoneError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyCity))
                //{
                //    _rec.AdditionalMessage += " City field is not correct or empty.<br/>";
                //    _rec.CompanyCityError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyCountry))
                //{
                //    _rec.AdditionalMessage += " Country field is not correct or empty.<br/>";
                //    _rec.CompanyCountryError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyCountryID))
                //{
                //    _rec.AdditionalMessage += " Country field is not correct or empty.<br/>";
                //    _rec.CompanyCountryIDError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyFax))
                //{
                //    _rec.AdditionalMessage += " Fax field is not correct or empty.<br/>";
                //    _rec.CompanyFaxError = true;
                //    bResponse = false;
                //}


                if (String.IsNullOrEmpty(_rec.CompanyName))
                {
                    _rec.AdditionalMessage += " Company Name field is not correct or empty.<br/>";
                    bResponse = false;
                }


                //if (String.IsNullOrEmpty(_rec.CompanyPhone))
                //{
                //    _rec.AdditionalMessage += " Phone field is not correct or empty.<br/>";
                //    _rec.CompanyPhoneError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyPhoneExt))
                //{
                //    _rec.AdditionalMessage += " Phone Ext. field is not correct or empty.<br/>";
                //    _rec.CompanyPhoneExtError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyPostalCode))
                //{
                //    _rec.AdditionalMessage += " Postal Code field is not correct or empty.<br/>";
                //    _rec.CompanyPostalCodeError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyState))
                //{
                //    _rec.AdditionalMessage += " State field is not correct or empty.<br/>";
                //    _rec.CompanyStateError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CompanyStateID))
                //{
                //    _rec.AdditionalMessage += " State field is not correct or empty.<br/>";
                //    _rec.CompanyStateIDError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.Fax))
                //{
                //    _rec.AdditionalMessage += " Fax field is not correct or empty.<br/>";
                //    _rec.FaxError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.OptingInMail))
                //{
                //    _rec.AdditionalMessage += " Please select Opt. into out marketing.<br/>";
                //    _rec.OptingInMailError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.Phone))
                //{
                //    _rec.AdditionalMessage += " Phone field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (_rec.AddressInfo != null)
                //{
                //    bResponse = Validate_UserAddressInfo(_rec.AddressInfo);
                //}


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }

                _ProcessMessage = _rec.AdditionalMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.AdditionalMessage += s.ToString();
                _rec.ValidationErrors = true;
                return false;
            }
        }

        public bool Validate_UserBillingInfo(AriesCMS.Models.UserBillingInfo _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                //if (String.IsNullOrEmpty(_rec.EMail))
                //{
                //    _rec.PublicFormResponseMessage += " EMail field is not correct or empty.<br/>";
                //    _rec.EMailError = true;
                //    bResponse = false;
                //}
                //else if (!_rec.EMail.Contains('@'))
                //{
                //    _rec.PublicFormResponseMessage += " EMail field is not correct or empty.<br/>";
                //    _rec.EMailError = true;
                //    bResponse = false;
                //}
                //else if (!IsValidEmail(_rec.EMail))
                //{
                //    _rec.PublicFormResponseMessage += " EMail invalid.<br/>";
                //    _rec.EMailError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.CellPhone))
                //{
                //    _rec.PublicFormResponseMessage += " Cell Phone field is not correct or empty.<br/>";
                //    _rec.CellPhoneError = true;
                //    bResponse = false;
                //}


                if (String.IsNullOrEmpty(_rec.CreditCardCVV))
                {
                    _rec.ErrorMessage += " Verification Code (CVV) field is not correct or empty.<br/>";
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.CreditCardExpDate))
                {
                    _rec.ErrorMessage += " Expiration Date field is not correct or empty.<br/>";
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.CreditCardExpDateMonth))
                {
                    _rec.ErrorMessage += " Expiration Month field is not correct or empty.<br/>";
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.CreditCardExpDateYear))
                {
                    _rec.ErrorMessage += " Expiration Year field is not correct or empty.<br/>";
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.CreditCardNumber))
                {
                    _rec.ErrorMessage += " Credit Card Number field is not correct or empty.<br/>";
                    bResponse = false;
                }


                //if (String.IsNullOrEmpty(_rec.Fax))
                //{
                //    _rec.PublicFormResponseMessage += " Fax field is not correct or empty.<br/>";
                //    _rec.FaxError = true;
                //    bResponse = false;
                //}


                if (String.IsNullOrEmpty(_rec.FirstName))
                {
                    _rec.ErrorMessage += " First Name field is not correct or empty.<br/>";
                    _rec.FirstNameError = true;
                    bResponse = false;
                }


                if (String.IsNullOrEmpty(_rec.LastName))
                {
                    _rec.ErrorMessage += " Last Name field is not correct or empty.<br/>";
                    _rec.LastNameError = true;
                    bResponse = false;
                }


                //if (String.IsNullOrEmpty(_rec.MiddleName))
                //{
                //    _rec.PublicFormResponseMessage += " Middle Name field is not correct or empty.<br/>";
                //    _rec.MiddleNameError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.OptingInMail))
                //{
                //    _rec.PublicFormResponseMessage += " Please Opt. into our marketing.<br/>";
                //    _rec.OptingInMailError = true;
                //    bResponse = false;
                //}


                //if (String.IsNullOrEmpty(_rec.Phone))
                //{
                //    _rec.PublicFormResponseMessage += " Phone field is not correct or empty.<br/>";
                //    _rec.PhoneError = true;
                //    bResponse = false;
                //}

                //if (_rec.AddressInfo != null)
                //{
                //    bResponse = Validate_UserAddressInfo(_rec.AddressInfo);
                //}


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }

                _ProcessMessage = _rec.ErrorMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ValidationErrors = true;
                _rec.DebugFormResponseMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_UserAddressInfo(AriesCMS.Models.UserAddressInfo _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                if (String.IsNullOrEmpty(_rec.AddressLine1))
                {
                    _rec.PublicFormResponseMessage += " Address Line 1 field is not correct or empty.<br/>";
                    _rec.AddressLine1Error = true;
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.AddressLine2))
                //{
                //    _rec.PublicFormResponseMessage += " Address Line 2 field is not correct or empty.<br/>";
                //    _rec.AddressLine2Error = true;
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.AddressLine3))
                //{
                //    _rec.PublicFormResponseMessage += " Address Line 3 field is not correct or empty.<br/>";
                //    _rec.AddressLine3Error = true;
                //    bResponse = false;
                //}

                if (String.IsNullOrEmpty(_rec.City))
                {
                    _rec.PublicFormResponseMessage += " City field is not correct or empty.<br/>";
                    _rec.CityError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.Country))
                {
                    _rec.PublicFormResponseMessage += " Country field is not correct or empty.<br/>";
                    _rec.CountryError = true;
                    bResponse = false;
                }

                if (_rec.CountryID > 0)
                {
                    _rec.PublicFormResponseMessage += " Country field is not correct or empty.<br/>";
                    _rec.CountryIDError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.PostalCode))
                {
                    _rec.PublicFormResponseMessage += " Postal Code field is not correct or empty.<br/>";
                    _rec.PostalCodeError = true;
                    bResponse = false;
                }

                if (String.IsNullOrEmpty(_rec.State))
                {
                    _rec.PublicFormResponseMessage += " State field is not correct or empty.<br/>";
                    _rec.StateIDError = true;
                    bResponse = false;
                }

                if (_rec.StateID > 0)
                {
                    _rec.PublicFormResponseMessage += " State field is not correct or empty.<br/>";
                    _rec.StateIDError = true;
                    bResponse = false;
                }


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }

                _ProcessMessage = _rec.PublicFormResponseMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ValidationErrors = true;
                _rec.DebugFormResponseMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_BillingItems(AriesCMS.Models.BillingItems _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                //if (String.IsNullOrEmpty(_rec.ID))
                //{
                //    _rec.PublicFormResponseMessage += " ID field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                if (String.IsNullOrEmpty(_rec.Item))
                {
                    _rec.PublicFormResponseMessage += " Item field is not correct or empty.<br/>";
                    _rec.ItemError = true;
                    bResponse = false;
                }

                if (_rec.ItemCost >= 0)
                {
                    _rec.PublicFormResponseMessage += " Cost field is not correct or empty.<br/>";
                    _rec.ItemCostError = true;
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.ItemDescription))
                //{
                //    _rec.PublicFormResponseMessage += " Description field is not correct or empty.<br/>";
                //    _rec.ItemDescriptionError = true;
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.ItemImageLarge))
                //{
                //    _rec.PublicFormResponseMessage += " Large Image field is not correct or empty.<br/>";
                //    _rec.ItemImageLargeError = true;
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.ItemImageSmall))
                //{
                //    _rec.PublicFormResponseMessage += " Small Image field is not correct or empty.<br/>";
                //    _rec.ItemImageSmallError = true;
                //    bResponse = false;
                //}

                if (_rec.ItemQty >= 0)
                {
                    _rec.PublicFormResponseMessage += " Quantity field is not correct or empty.<br/>";
                    _rec.ItemQtyError = true;
                    bResponse = false;
                }


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }


                _ProcessMessage = _rec.PublicFormResponseMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ValidationErrors = true;
                _rec.DebugFormResponseMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_CouponsPromos(AriesCMS.Models.CouponsPromos _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                if (String.IsNullOrEmpty(_rec.CPCode))
                {
                    _rec.PublicFormResponseMessage += " Code field is not correct or empty.<br/>";
                    bResponse = false;
                }

                //if (String.IsNullOrEmpty(_rec.DiscountAmount))
                //{
                //    _rec.PublicFormResponseMessage += " Discount Amount field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.RelatedToItems))
                //{
                //    _rec.PublicFormResponseMessage += " Related To Item field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.WasApplied))
                //{
                //    _rec.PublicFormResponseMessage += " Was Applied field is not correct or empty.<br/>";
                //    bResponse = false;
                //}


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }

                _ProcessMessage = _rec.PublicFormResponseMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ValidationErrors = true;
                _rec.DebugFormResponseMessage += s.ToString();
                return false;
            }
        }

        public bool Validate_ProfileRecovery(AriesCMS.Models.ProfileRecovery _rec, out string _ProcessMessage)
        {
            _ProcessMessage = "";
            try
            {
                bool bResponse = true;

                //if (String.IsNullOrEmpty(_rec.FullName))
                //{
                //    _rec.PublicFormResponseMessage += " Name field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                //if (String.IsNullOrEmpty(_rec.FirstName))
                //{
                //    _rec.PublicFormResponseMessage += " First Name field is not correct or empty.<br/>";
                //    bResponse = false;
                //}
                //if (String.IsNullOrEmpty(_rec.LastName))
                //{
                //    _rec.PublicFormResponseMessage += " Last Name field is not correct or empty.<br/>";
                //    bResponse = false;
                //}

                if (String.IsNullOrEmpty(_rec.Email))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    bResponse = false;
                }
                else if (!_rec.Email.Contains('@'))
                {
                    _rec.ErrorMessage += " EMail field is not correct or empty.<br/>";
                    bResponse = false;
                }
                else if (!IsValidEmail(_rec.Email))
                {
                    _rec.ErrorMessage += " EMail invalid.<br/>";
                    bResponse = false;
                }


                if (bResponse == false)
                {
                    _rec.ValidationErrors = true;
                }
                else
                {
                    _rec.ValidationErrors = false;
                }

                _ProcessMessage = _rec.ErrorMessage;
                return bResponse;

            }
            catch (Exception s)
            {
                _rec.ValidationErrors = true;
                _rec.DebugFormResponseMessage += s.ToString();
                return false;
            }
        }


        public bool IsValidEmail(string sEMail)
        {
            bGResponse = false;
            if (String.IsNullOrEmpty(sEMail))
            {
                return false;
            }

            // Use IdnMapping class to convert Unicode domain names. 
            try
            {
                sEMail = Regex.Replace(sEMail, @"(@)(.+)$", this.DomainMapper, RegexOptions.None, TimeSpan.FromMilliseconds(200));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }

            if (bGResponse)
            {
                return false;
            }

            // Return true if strIn is in valid e-mail format. 
            try
            {
                return Regex.IsMatch(sEMail, @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" + @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$", RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }
        private string DomainMapper(Match match)
        {
            // IdnMapping class with default property values.
            IdnMapping idn = new IdnMapping();

            string domainName = match.Groups[2].Value;
            try
            {
                domainName = idn.GetAscii(domainName);
            }
            catch (ArgumentException)
            {
                bGResponse = true;
            }
            return match.Groups[1].Value + domainName;
        }

        /// <summary>
        /// Check Full User duplication, name, user name, email, and phone combination
        /// </summary>
        /// <param name="_rec">AriesCMS.Models.NewUserRegistration</param>
        /// <param name="cnCon">IDataConnection</param>
        /// <returns>-1 Is Error, 0 Is None Found, > 0 Is found and their Count</returns>
        public int Check_DuplicateUser(AriesCMS.Models.NewUserRegistration _rec, IDataConnection cnCon)
        {
            try
            {
                int iResponse = -1;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (!String.IsNullOrEmpty(_rec.UserName))
                    {
                        DINT_Users dbInteraction = new DINT_Users(cnCon);
                        int iTotalRows = 0;

                        List<DEF_Users.RecordObject> dbSearch = null;
                        List<DataParameter> lstParameters = new List<DataParameter>();

                        DataParameter pParameter = new DataParameter("sUserName", "'" + _rec.UserName + "'", "string", 11, "sUserName", " = ", "");
                        lstParameters.Add(pParameter);

                        if (!String.IsNullOrEmpty(_rec.FirstName))
                        {
                            pParameter = new DataParameter("sFName", "'" + _rec.FirstName + "'", "string", 14, "sFName", " = ", " and ");
                            lstParameters.Add(pParameter);
                        }


                        if (!String.IsNullOrEmpty(_rec.LastName))
                        {
                            pParameter = new DataParameter("sLName", "'" + _rec.LastName + "'", "string", 16, "sLName", " = ", " and ");
                            lstParameters.Add(pParameter);
                        }



                        if (!String.IsNullOrEmpty(_rec.EMail))
                        {
                            pParameter = new DataParameter("sPrimaryEMail", "'" + _rec.EMail + "'", "string", 42, "sPrimaryEMail", " = ", " and ");
                            lstParameters.Add(pParameter);
                        }

                        if (!String.IsNullOrEmpty(_rec.Phone))
                        {
                            pParameter = new DataParameter("sPrimaryPhone", "'" + _rec.Phone + "'", "string", 43, "sPrimaryPhone", " = ", " and ");
                            lstParameters.Add(pParameter);
                        }

                        dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                iResponse = dbSearch.Count;
                                return iResponse;
                            }
                            else
                            {
                                iResponse = 0;
                                return iResponse;
                            }
                        }
                        else
                        {
                            iResponse = 0;
                            return iResponse;
                        }
                    }
                }

                return iResponse;
            }
            catch (Exception s)
            {
                return -1;
            }


        }
        
        /// <summary>
        /// Check Full User duplication, user name
        /// </summary>
        /// <param name="_rec">AriesCMS.Models.NewUserRegistration</param>
        /// <param name="cnCon">IDataConnection</param>
        /// <returns>-1 Is Error, 0 Is None Found, > 0 Is found and their Count</returns>
        public int Check_DuplicateUserName(AriesCMS.Models.NewUserRegistration _rec, IDataConnection cnCon)
        {
            try
            {
                int iResponse = -1;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (!String.IsNullOrEmpty(_rec.UserName))
                    {
                        DINT_Users dbInteraction = new DINT_Users(cnCon);
                        int iTotalRows = 0;

                        List<DEF_Users.RecordObject> dbSearch = null;
                        List<DataParameter> lstParameters = new List<DataParameter>();

                        DataParameter pParameter = new DataParameter("sUserName", "'" + _rec.UserName + "'", "string", 11, "sUserName", " = ", "");
                        lstParameters.Add(pParameter);
                        

                        dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                iResponse = dbSearch.Count;
                                return iResponse;
                            }
                            else
                            {
                                iResponse = 0;
                                return iResponse;
                            }
                        }
                        else
                        {
                            iResponse = 0;
                            return iResponse;
                        }
                    }
                }

                return iResponse;
            }
            catch (Exception s)
            {
                return -1;
            }
        }
        
        /// <summary>
        /// Check Full User duplication, email
        /// </summary>
        /// <param name="_rec">AriesCMS.Models.NewUserRegistration</param>
        /// <param name="cnCon">IDataConnection</param>
        /// <returns>-1 Is Error, 0 Is None Found, > 0 Is found and their Count</returns>
        public int Check_DuplicateUserEmail(AriesCMS.Models.NewUserRegistration _rec, IDataConnection cnCon)
        {
            try
            {
                int iResponse = -1;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (!String.IsNullOrEmpty(_rec.EMail))
                    {
                        DINT_Users dbInteraction = new DINT_Users(cnCon);
                        int iTotalRows = 0;

                        List<DEF_Users.RecordObject> dbSearch = null;
                        List<DataParameter> lstParameters = new List<DataParameter>();

                        DataParameter pParameter = new DataParameter("sUserName", "'" + _rec.EMail + "'", "string", 43, "sUserName", " = ", "");
                        lstParameters.Add(pParameter);
                        

                        dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                iResponse = dbSearch.Count;
                                return iResponse;
                            }
                            else
                            {
                                iResponse = 0;
                                return iResponse;
                            }
                        }
                        else
                        {
                            iResponse = 0;
                            return iResponse;
                        }
                    }
                }

                return iResponse;
            }
            catch (Exception s)
            {
                return -1;
            }
        }
        
        /// <summary>
        /// Check Full User phone 
        /// </summary>
        /// <param name="_rec">AriesCMS.Models.NewUserRegistration</param>
        /// <param name="cnCon">IDataConnection</param>
        /// <returns>-1 Is Error, 0 Is None Found, > 0 Is found and their Count</returns>
        public int Check_DuplicateUserPhone(AriesCMS.Models.NewUserRegistration _rec, IDataConnection cnCon)
        {
            try
            {
                int iResponse = -1;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (!String.IsNullOrEmpty(_rec.Phone))
                    {
                        DINT_Users dbInteraction = new DINT_Users(cnCon);
                        int iTotalRows = 0;

                        List<DEF_Users.RecordObject> dbSearch = null;
                        List<DataParameter> lstParameters = new List<DataParameter>();

                        DataParameter pParameter = new DataParameter("sUserName", "'" + _rec.Phone + "'", "string", 43, "sUserName", " = ", "");
                        lstParameters.Add(pParameter);
                        
                        dbSearch = dbInteraction.Get(lstParameters);

                        if (dbSearch != null)
                        {
                            if (dbSearch.Count > 0)
                            {
                                iResponse = dbSearch.Count;
                                return iResponse;
                            }
                            else
                            {
                                iResponse = 0;
                                return iResponse;
                            }
                        }
                        else
                        {
                            iResponse = 0;
                            return iResponse;
                        }
                    }
                }

                return iResponse;
            }
            catch (Exception s)
            {
                return -1;
            }


        }

        /// <summary>
        /// Check Full User duplication, full name combination
        /// </summary>
        /// <param name="_rec">AriesCMS.Models.NewUserRegistration</param>
        /// <param name="cnCon">IDataConnection</param>
        /// <returns>-1 Is Error, 0 Is None Found, > 0 Is found and their Count</returns>
        public int Check_DuplicateUserFullName(AriesCMS.Models.NewUserRegistration _rec, IDataConnection cnCon)
        {
            try
            {
                int iResponse = -1;
                if (cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                {
                    if (!String.IsNullOrEmpty(_rec.FirstName))
                    {
                        if (!String.IsNullOrEmpty(_rec.LastName))
                        {
                            DINT_Users dbInteraction = new DINT_Users(cnCon);
                            int iTotalRows = 0;

                            List<DEF_Users.RecordObject> dbSearch = null;
                            List<DataParameter> lstParameters = new List<DataParameter>();

                            DataParameter pParameter = new DataParameter("sUserName", "'" + _rec.FirstName + "'", "string", 14, "sUserName", " = ", "");
                            lstParameters.Add(pParameter);


                            pParameter = new DataParameter("sLName", "'" + _rec.LastName + "'", "string", 16, "sLName", " = ", " and ");
                            lstParameters.Add(pParameter);

                            dbSearch = dbInteraction.Get(lstParameters);

                            if (dbSearch != null)
                            {
                                if (dbSearch.Count > 0)
                                {
                                    iResponse = dbSearch.Count;
                                    return iResponse;
                                }
                                else
                                {
                                    iResponse = 0;
                                    return iResponse;
                                }
                            }
                            else
                            {
                                iResponse = 0;
                                return iResponse;
                            }
                        }
                    }
                }

                return iResponse;
            }
            catch (Exception s)
            {
                return -1;
            }


        }

    }
    
    [Serializable]
    public partial class PageBuilder
    {
        public string ProcessError = "";
        public bool ProcessErrorResult = false;

        public ACMSDBView.WebSitePageViewModel BuildPage(SiteCoreHelper oSystem, ACMSDBView.WebSitePageViewModel _Page, int _iTemplateID, int _iTemplatePageID, string _sPageTitle, string _sPageName,
            string _sClassification, string _sPageDescription, string _sKeyWords, string _sMetaTags,
            int _iZoneContent, string _PartialViewToLoad = "", string _ContentToLoad = "", Object oResponse = null)
        {
            try
            {
                string sLocalError = "";
                bool bLocalConnectionOpen = false;
                if (_iZoneContent > 0)
                {
                    if (oSystem.cnCon != null)
                    {
                        if (oSystem.cnCon.ConnectionStatus != ConnectionStatusTypes.Open)
                        {
                            oSystem.OpenDataConnection();
                            bLocalConnectionOpen = true;
                        }


                        if (oSystem.cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                        {


                            //Base class that creates the base content and translates any dynamic scripting etc.
                            CMSCoreContentTranslator.CMSTranslator _AriesCMS = new CMSCoreContentTranslator.CMSTranslator();

                            //Base class used to take all the content and translated content and build the page
                            CMSPageBuilder.BasePageBuilder oPageBuilder = new CMSPageBuilder.BasePageBuilder();

                            //Check to see if user has inline editing rights
                            #region Check To See if in line content editing is enabled and see if user can do this
                            //try
                            //{
                            //    if (oSystem.CurrentUser.AuthenticatedUser == true)
                            //    {
                            //        if (oSystem.rsGlobalVeriables.AllowInLineEditing == true)
                            //        {
                            //            if (oSystem.CurrentUser.CanEditContent(oSystem.rsGlobalVeriables.AllowInLineEditingMaxRoleID))
                            //            {
                            //            }
                            //        }
                            //    }
                            //}
                            //catch
                            //{
                            //}
                            #endregion

                            //Build the base page, taking all the zones and content to prep it for translation later
                            ////This process will use a cms nav value to get the root template and build the page based upon that template
                            //_Page = oPageBuilder.BuildPage(oSystem.CurrentUser, oSystem.cnCon, "/", oSystem.BaseURL, false, oResponse,
                            //    oSystem.VisitorHTTPValues.UserCultureInfo, oSystem.VisitorHTTPValues.UserRegionInfo);
                            _Page = oPageBuilder.BuildPageByTemplateID(oSystem.CurrentUser, oSystem.cnCon, 
                                _iTemplateID, _iTemplatePageID, _sPageTitle, _sPageName, _sClassification, 
                                _sPageDescription, _sKeyWords, _sMetaTags, oSystem.BaseURL, false, 
                                oResponse, oSystem.VisitorHTTPValues.UserCultureInfo, oSystem.VisitorHTTPValues.UserRegionInfo);

                            //Checks for any process errors
                            if (_Page.ProcessError == false)
                            {

                                string sTempResponse = "";
                                ////Translate content into single set of HTML code
                                //sTempResponse = _AriesCMS.Translate(objPage.PageBody, objPage.WebSitePage.sPageName, objPage, typeof(WebSitePageViewModel), true);

                                //Translate content into single set of HTML code
                                for (int i = 0; i < _Page.PageContent.Count; i++)
                                {
                                    _Page.PageContent[i].Conent = _AriesCMS.Translate(_Page.PageContent[i].Conent,
                                        _Page.WebSitePage.sPageName + _Page.PageContent[i].ZoneID.ToString(),
                                        _Page, typeof(WebSitePageViewModel), true);
                                    sTempResponse += _Page.PageContent[i].Conent;

                                    if (_Page.PageContent[i].ZoneID == _iZoneContent)
                                    {
                                        if (!String.IsNullOrEmpty(_PartialViewToLoad))
                                        {
                                            _Page.PageContent[i].IsPartialView = true;
                                            _Page.PageContent[i].PartialPageURI = _PartialViewToLoad;
                                        }
                                        else if (!String.IsNullOrEmpty(_ContentToLoad))
                                        {
                                            _Page.PageContent[i].IsPartialView = false;
                                            _Page.PageContent[i].Conent = _ContentToLoad;
                                        }
                                    }

                                }

                                //If no error set the respone to the Page Body
                                if (_AriesCMS.ProcessError == false)
                                {
                                    _Page.PageBody = sTempResponse;
                                }
                            }


                            if (bLocalConnectionOpen == true)
                            {
                                oSystem.cnCon.CloseConnection(out sLocalError);
                            }
                        }
                        else
                        {
                            ProcessErrorResult = true;
                            ProcessError = "No data connection";
                        }
                    }
                    else
                    {
                        ProcessErrorResult = true;
                        ProcessError = "No data connection";
                    }
                }
                else
                {
                    ProcessErrorResult = true;
                    ProcessError = "Need to identify proper zone id";
                }


                return _Page;
            }
            catch (Exception s)
            {
                ProcessErrorResult = true;
                ProcessError = s.ToString();
                return _Page;
            }
        }

        public PageBuilder()
        {

        }
    }

    [Serializable]
    public partial class CreditCardProcessing
    {

        public class AuthorizeNETProcess
        {
            public class AuthorizeNETResponseRecord
            {
                public string ResultCode { get; set; }

                //1—Approved
                //2—Declined
                //3—Error
                //4—Held for Review
                public int Status { get; set; }
                public string Message { get; set; }

                public string AuthorizationCode { get; set; }

                //M—Match
                //N—No Match
                //P—Not Processed
                //S—Should have been present
                //U—Issuer unable to process request
                public string CVVAuthorizationCode { get; set; }

                //A—Address (Street) matches, ZIP does not
                //B—Address information not provided for AVS check
                //E—AVS error
                //G—Non-U.S. Card Issuing Bank
                //N—No Match on Address (Street) or ZIP
                //P—AVS not applicable for this transaction
                //R—Retry—System unavailable or timed out
                //S—Service not supported by issuer
                //U—Address information is unavailable
                //W—Nine digit ZIP matches, Address (Street) does not
                //X—Address (Street) and nine digit ZIP match
                //Y—Address (Street) and five digit ZIP match
                //Z—Five digit ZIP matches, Address (Street) does not
                public string AddressAuthorizationCode { get; set; }
                public string CardAuthenticationCode { get; set; }
                public string TransactionID { get; set; }

                public string ErrorCodes { get; set; }

            }

            private bool IsTestCard(AriesCMS.Models.ChargeRecord oCharge)
            {
                try
                {
                    if (oCharge.CardNumber == "40070000000000027")
                    {
                        if (oCharge.CVV == "999")
                        {
                            if (oCharge.ExpirationDate == "042027")
                            {
                                return true;
                            }
                            if (oCharge.ExpirationDate == "42027")
                            {
                                return true;
                            }
                        }
                    }

                    return false;
                }
                catch
                {
                    return false;
                }
            }

            public AuthorizeNETResponseRecord Authoirze(ref AriesCMS.Models.ChargeRecord oCharge)
            {
                AuthorizeNETResponseRecord oResponse = new AuthorizeNETResponseRecord();
                try
                {

                    if (IsTestCard(oCharge))
                    {
                        oResponse.Status = 1;
                        oResponse.Message = "Test card was used!";
                        return oResponse;
                    }

                    string post_url = "https://secure.authorize.net/gateway/transact.dll";
                    //string post_url = "https://test.authorize.net/gateway/transact.dll";

                    Dictionary<string, string> post_values = new Dictionary<string, string>();
                    //the API Login ID and Transaction Key must be replaced with valid values
                    //post_values.Add("x_login", "555pLUnM");
                    //post_values.Add("x_tran_key", "9a8G6Dz58CqAR43y");
                    //post_values.Add("x_login", "88ShBq6um");
                    //post_values.Add("x_tran_key", "3rde5UNr7TH85V6A");


                    post_values.Add("x_login", "");
                    post_values.Add("x_tran_key", "");
                    post_values.Add("x_delim_data", "TRUE");
                    post_values.Add("x_delim_char", "|");
                    post_values.Add("x_relay_response", "FALSE");

                    if (!String.IsNullOrEmpty(oCharge.ClientIPAddress))
                    {
                        //this will pass the customer ip address
                        post_values.Add("x_customer_ip", oCharge.ClientIPAddress);
                    }

                    post_values.Add("x_type", "AUTH_ONLY");
                    post_values.Add("x_method", "CC");
                    post_values.Add("x_card_num", oCharge.CardNumber);
                    post_values.Add("x_exp_date", oCharge.ExpirationDate);

                    post_values.Add("x_amount", oCharge.ChargeAmount);
                    //post_values.Add("x_amount", "1.00");
                    post_values.Add("x_description", " CHARGE DESCRIPTION - " + oCharge.PhoneNumber);

                    post_values.Add("x_first_name", oCharge.FirstName);
                    post_values.Add("x_last_name", oCharge.LastName);
                    //post_values.Add("x_address", "1234 Street");
                    //post_values.Add("x_state", "WA");
                    post_values.Add("x_zip", oCharge.PostalCode);
                    post_values.Add("x_phone", oCharge.PhoneNumber);
                    post_values.Add("x_card_code", oCharge.CVV);


                    string post_string = "";

                    foreach (KeyValuePair<string, string> post_value in post_values)
                    {
                        post_string += post_value.Key + "=" + HttpUtility.UrlEncode(post_value.Value) + "&";
                    }
                    post_string = post_string.TrimEnd('&');

                    HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(post_url);
                    objRequest.Method = "POST";
                    objRequest.ContentLength = post_string.Length;
                    objRequest.ContentType = "application/x-www-form-urlencoded";

                    // post data is sent as a stream
                    StreamWriter myWriter = null;
                    myWriter = new StreamWriter(objRequest.GetRequestStream());
                    myWriter.Write(post_string);
                    myWriter.Close();

                    // returned values are returned as a stream, then read into a string
                    String post_response;
                    HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                    using (StreamReader responseStream = new StreamReader(objResponse.GetResponseStream()))
                    {
                        post_response = responseStream.ReadToEnd();
                        responseStream.Close();
                    }
                    //Approved - 1|1|1|This transaction has been approved.|033113|Z|7410289222||SIN PIN Online Recharge - 5613137299|1.00|CC|auth_only||Peman|Allage|||||33418||5613137299||||||||||||||||9F28A43D4B3ADB277BFBE6756EC70A05
                    //Declined - 2|1|2|This transaction has been declined.||Y|7410262532||SIN PIN Online Recharge - 5613137299|1.00|CC|auth_only||Paiman|Allage|||||33418||5613137299||||||||||||||||808E0474C223EB6A110E0BD0BF5A6246
                    string[] response_array = post_response.Split('|');

                    string sTemp = response_array[0].ToString();
                    try
                    {
                        oResponse.Status = System.Convert.ToInt32(sTemp);
                        oResponse.AuthorizationCode = response_array[4];
                        oResponse.Message = post_response;
                    }
                    catch
                    {

                    }
                    return oResponse;
                }
                catch (Exception s)
                {
                    oResponse.Message = s.ToString();
                    return oResponse;
                }
            }
            public AuthorizeNETResponseRecord CaptureAuthoirzed(ref AriesCMS.Models.ChargeRecord oCharge)
            {
                AuthorizeNETResponseRecord oResponse = new AuthorizeNETResponseRecord();
                try
                {

                    if (IsTestCard(oCharge))
                    {
                        oResponse.Status = 1;
                        oResponse.Message = "Test card was used!";
                        return oResponse;
                    }

                    string post_url = "https://secure.authorize.net/gateway/transact.dll";
                    //string post_url = "https://test.authorize.net/gateway/transact.dll";

                    Dictionary<string, string> post_values = new Dictionary<string, string>();
                    //the API Login ID and Transaction Key must be replaced with valid values
                    //post_values.Add("x_login", "555pLUnM");
                    //post_values.Add("x_tran_key", "9a8G6Dz58CqAR43y");
                    //post_values.Add("x_login", "88ShBq6um");
                    //post_values.Add("x_tran_key", "3rde5UNr7TH85V6A");

                    post_values.Add("x_login", " ");
                    post_values.Add("x_tran_key", " ");
                    post_values.Add("x_delim_data", "TRUE");
                    post_values.Add("x_delim_char", "|");
                    post_values.Add("x_relay_response", "FALSE");

                    if (!String.IsNullOrEmpty(oCharge.ClientIPAddress))
                    {
                        //this will pass the customer ip address
                        post_values.Add("x_customer_ip", oCharge.ClientIPAddress);
                    }
                    post_values.Add("x_type", "Capture_Only");
                    post_values.Add("x_auth_code", oCharge.AuthorizationCode);
                    post_values.Add("x_method", "CC");
                    post_values.Add("x_card_num", oCharge.CardNumber);
                    post_values.Add("x_exp_date", oCharge.ExpirationDate);

                    post_values.Add("x_amount", oCharge.ChargeAmount);
                    //post_values.Add("x_amount", "1.00");
                    post_values.Add("x_description", " CHARGE DESCRIPTION - " + oCharge.PhoneNumber);

                    post_values.Add("x_first_name", oCharge.FirstName);
                    post_values.Add("x_last_name", oCharge.LastName);
                    //post_values.Add("x_address", "1234 Street");
                    //post_values.Add("x_state", "WA");
                    post_values.Add("x_zip", oCharge.PostalCode);
                    post_values.Add("x_phone", oCharge.PhoneNumber);
                    post_values.Add("x_card_code", oCharge.CVV);


                    string post_string = "";

                    foreach (KeyValuePair<string, string> post_value in post_values)
                    {
                        post_string += post_value.Key + "=" + HttpUtility.UrlEncode(post_value.Value) + "&";
                    }
                    post_string = post_string.TrimEnd('&');

                    HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(post_url);
                    objRequest.Method = "POST";
                    objRequest.ContentLength = post_string.Length;
                    objRequest.ContentType = "application/x-www-form-urlencoded";

                    // post data is sent as a stream
                    StreamWriter myWriter = null;
                    myWriter = new StreamWriter(objRequest.GetRequestStream());
                    myWriter.Write(post_string);
                    myWriter.Close();

                    // returned values are returned as a stream, then read into a string
                    String post_response;
                    HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                    using (StreamReader responseStream = new StreamReader(objResponse.GetResponseStream()))
                    {
                        post_response = responseStream.ReadToEnd();
                        responseStream.Close();
                    }
                    //Approved - 1|1|1|This transaction has been approved.|033113|Z|7410289222||SIN PIN Online Recharge - 5613137299|1.00|CC|auth_only||Peman|Allage|||||33418||5613137299||||||||||||||||9F28A43D4B3ADB277BFBE6756EC70A05
                    //Declined - 2|1|2|This transaction has been declined.||Y|7410262532||SIN PIN Online Recharge - 5613137299|1.00|CC|auth_only||Paiman|Allage|||||33418||5613137299||||||||||||||||808E0474C223EB6A110E0BD0BF5A6246

                    string[] response_array = post_response.Split('|');

                    string sTemp = response_array[0].ToString();
                    try
                    {
                        oResponse.Status = System.Convert.ToInt32(sTemp);
                        oResponse.Message = post_response;
                        oResponse.ResultCode = response_array[4];
                        oResponse.AuthorizationCode = response_array[4];
                    }
                    catch
                    {

                    }
                    return oResponse;
                }
                catch (Exception s)
                {
                    oResponse.Message = s.ToString();
                    return oResponse;
                }
            }
            public AuthorizeNETResponseRecord ChargeCard(ref AriesCMS.Models.ChargeRecord oCharge)
            {
                AuthorizeNETResponseRecord oResponse = new AuthorizeNETResponseRecord();
                try
                {

                    if (IsTestCard(oCharge))
                    {
                        oResponse.Status = 1;
                        oResponse.Message = "Test card was used!";
                        return oResponse;
                    }

                    string post_url = "https://secure.authorize.net/gateway/transact.dll";
                    //string post_url = "https://test.authorize.net/gateway/transact.dll";

                    Dictionary<string, string> post_values = new Dictionary<string, string>();
                    //the API Login ID and Transaction Key must be replaced with valid values
                    //post_values.Add("x_login", "555pLUnM");
                    //post_values.Add("x_tran_key", "9a8G6Dz58CqAR43y");
                    //post_values.Add("x_login", "88ShBq6um");
                    //post_values.Add("x_tran_key", "3rde5UNr7TH85V6A");
                    post_values.Add("x_login", " ");
                    post_values.Add("x_tran_key", " ");
                    post_values.Add("x_delim_data", "TRUE");
                    post_values.Add("x_delim_char", "|");
                    post_values.Add("x_relay_response", "FALSE");

                    if (!String.IsNullOrEmpty(oCharge.ClientIPAddress))
                    {
                        //this will pass the customer ip address
                        post_values.Add("x_customer_ip", oCharge.ClientIPAddress);
                    }


                    post_values.Add("x_type", "AUTH_CAPTURE");
                    post_values.Add("x_method", "CC");
                    post_values.Add("x_card_num", oCharge.CardNumber);
                    post_values.Add("x_exp_date", oCharge.ExpirationDate);

                    post_values.Add("x_amount", oCharge.ChargeAmount);
                    post_values.Add("x_description", " CHARGE DESCRIPTION - " + oCharge.PhoneNumber);

                    post_values.Add("x_first_name", oCharge.FirstName);
                    post_values.Add("x_last_name", oCharge.LastName);
                    //post_values.Add("x_address", "1234 Street");
                    //post_values.Add("x_state", "WA");
                    post_values.Add("x_zip", oCharge.PostalCode);
                    post_values.Add("x_phone", oCharge.PhoneNumber);
                    post_values.Add("x_card_code", oCharge.CVV);

                    string post_string = "";

                    foreach (KeyValuePair<string, string> post_value in post_values)
                    {
                        post_string += post_value.Key + "=" + HttpUtility.UrlEncode(post_value.Value) + "&";
                    }
                    post_string = post_string.TrimEnd('&');

                    HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(post_url);
                    objRequest.Method = "POST";
                    objRequest.ContentLength = post_string.Length;
                    objRequest.ContentType = "application/x-www-form-urlencoded";

                    // post data is sent as a stream
                    StreamWriter myWriter = null;
                    myWriter = new StreamWriter(objRequest.GetRequestStream());
                    myWriter.Write(post_string);
                    myWriter.Close();

                    // returned values are returned as a stream, then read into a string
                    String post_response;
                    HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                    using (StreamReader responseStream = new StreamReader(objResponse.GetResponseStream()))
                    {
                        post_response = responseStream.ReadToEnd();
                        responseStream.Close();
                    }

                    string[] response_array = post_response.Split('|');

                    string sTemp = response_array[0].ToString();
                    try
                    {
                        oResponse.Status = System.Convert.ToInt32(sTemp);
                        oResponse.Message = post_response;
                        oResponse.ResultCode = response_array[4];
                        oResponse.AuthorizationCode = response_array[4];
                    }
                    catch
                    {

                    }
                    return oResponse;
                }
                catch (Exception s)
                {
                    oResponse.Message = s.ToString();
                    return oResponse;
                }
            }

        }

        public class PayPalProcess
        {
            public string ClientId;
            public string ClientSecret;
            public string AccessToken;
            public PayPalProcess(string _ClientId, string _ClientSecret)
            {
                ClientId = _ClientId;
                ClientSecret = _ClientSecret;
            }

            private bool IsTestCard(AriesCMS.Models.ChargeRecord oCharge)
            {
                try
                {
                    if (oCharge.CardNumber == "40070000000000027")
                    {
                        if (oCharge.CVV == "999")
                        {
                            if (oCharge.ExpirationDate == "042027")
                            {
                                return true;
                            }
                            if (oCharge.ExpirationDate == "42027")
                            {
                                return true;
                            }
                        }
                    }

                    return false;
                }
                catch
                {
                    return false;
                }
            }

            public bool Authorize(ref AriesCMS.Models.ChargeRecord oCharge)
            {
                bool bResponse = false;
                if (!IsTestCard(oCharge))
                {
                    #region
                    //< !--Replace the mode to `security - test - sandbox` to test if your server supports TLSv1.2.For more information follow README instructions.-- >
                    Dictionary<string, string> oConfig = new Dictionary<string, string>();
                    //oConfig.Add("mode", "sandbox");
                    oConfig.Add("mode", "live");
                    oConfig.Add("connectionTimeout", "360000");
                    oConfig.Add("requestRetries", "1");
                    oConfig.Add("clientId", ClientId);
                    oConfig.Add("clientSecret", ClientSecret);

                    //PayPal.Api.OAuthTokenCredential oAccount = new PayPal.Api.OAuthTokenCredential(oConfig);
                    PayPal.Api.OAuthTokenCredential oAccount = new PayPal.Api.OAuthTokenCredential(ClientId, ClientSecret, oConfig);

                    AccessToken = oAccount.GetAccessToken();
                    PayPal.Api.APIContext oAPIContext = new PayPal.Api.APIContext(AccessToken);

                    oAPIContext.Config = oConfig;

                    // ###Payment
                    // A Payment Resource; create one with its intent set to `sale`, `authorize`, or `order`
                    var payment = new PayPal.Api.Payment()
                    {
                        intent = "sale",
                        // A resource representing a Payer that funds a payment. Use the List of `FundingInstrument` and the Payment Method as 'credit_card'
                        payer = new PayPal.Api.Payer()
                        {
                            // The Payment creation API requires a list of
                            // FundingInstrument; add the created `FundingInstrument`
                            // to a List
                            funding_instruments = new List<PayPal.Api.FundingInstrument>()
                        {
                        // A resource representing a Payeer's funding instrument.
                        // Use a Payer ID (A unique identifier of the payer generated
                        // and provided by the facilitator. This is required when
                        // creating or using a tokenized funding instrument)
                        // and the `CreditCardDetails`
                        new PayPal.Api.FundingInstrument()
                        {
                            // A resource representing a credit card that can be used to fund a payment.
                            credit_card = new PayPal.Api.CreditCard()
                            {
                                billing_address = new PayPal.Api.Address()
                                {
                                    city = oCharge.City,
                                    country_code = oCharge.Country,
                                    line1 = oCharge.Address,
                                    postal_code = oCharge.PostalCode,
                                    state = oCharge.State
                                },
                                cvv2 = oCharge.CVV,
                                expire_month = System.Convert.ToInt32(oCharge.Month),
                                expire_year = System.Convert.ToInt32(oCharge.Year),
                                first_name = oCharge.FirstName,
                                last_name = oCharge.LastName,
                                number = oCharge.CardNumber
                                //type = oCharge.CardType
                            }
                        }
                    },
                            //payment_method = "credit_card"
                            payment_method = "paypal",
                            payer_info = new PayPal.Api.PayerInfo
                            {
                                email = oCharge.EMail
                            }
                        },
                        // The Payment creation API requires a list of transactions; add the created `Transaction` to a List
                        transactions = new List<PayPal.Api.Transaction>()
                    {
                    // A transaction defines the contract of a payment - what is the payment for and who is fulfilling it. Transaction is created with a `Payee` and `Amount` types
                    new PayPal.Api.Transaction()
                    {
                        // Let's you specify a payment amount.
                        amount = new PayPal.Api.Amount()
                        {
                            currency = "USD",
                            // Total must be equal to sum of shipping, tax and subtotal.
                            total = oCharge.ChargeAmount,
                            details = new PayPal.Api.Details()
                            {
                                shipping = oCharge.ShippingCharge,
                                subtotal = oCharge.Subtotal,
                                tax = oCharge.Tax
                            }
                        },
                        //invoice_number = "1111111",
                        description = oCharge.ChargeDescription
                    }
                }
                    };


                    // Create a payment by posting to the APIService
                    // using a valid APIContext
                    var createdPayment = payment.Create(oAPIContext);

                    // ###Authorization
                    // when using paypal as payment method then you just get the transaction codes you don't need to capture
                    var authorization = createdPayment.transactions[0].related_resources[0].sale.receipt_id;
                    oCharge.AuthorizationCode = createdPayment.transactions[0].related_resources[0].sale.receipt_id;
                    oCharge.ChargeResponse = createdPayment.transactions[0].related_resources[0].sale.reason_code;

                    #region used when payment method is set to "credit_card"
                    //// ###Authorization
                    //// Once the payment with intent set to `authorize` has been created, retrieve its authorization object.
                    //var authorization = createdPayment.transactions[0].related_resources[0].authorization;

                    //// Specify an amount to capture.  By setting 'is_final_capture' to true, all remaining funds held by the authorization will be released from the funding instrument.
                    //var capture = new PayPal.Api.Capture()
                    //{
                    //    amount = new PayPal.Api.Amount()
                    //    {
                    //        currency = "USD",
                    //        total = oCharge.ChargeAmount
                    //    },
                    //    is_final_capture = true
                    //};

                    //// Capture an authorized payment by POSTing to
                    //// URI v1/payments/authorization/{authorization_id}/capture
                    //var responseCapture = authorization.Capture(oAPIContext, capture);
                    #endregion


                    #endregion
                    if (createdPayment.transactions[0].related_resources[0].sale.state == "completed")
                    {
                        bResponse = true;
                    }
                }
                else
                {
                    bResponse = true;
                }
                return bResponse;
            }

        }

        public class FirstData
        {
            public string ClientId;
            public string ClientSecret;
            public string AccessToken;
            public FirstData(string _ClientId, string _ClientSecret)
            {
                ClientId = _ClientId;
                ClientSecret = _ClientSecret;
            }


            public bool Authorize(ref AriesCMS.Models.ChargeRecord oCharge)
            {


                return false;
            }

        }
    }


}