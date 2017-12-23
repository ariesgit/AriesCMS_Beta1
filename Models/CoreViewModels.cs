
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
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Data;
using System.Data.Entity;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections;
using System.Web.Mvc;
using AriesGlobal;
using AriesDBConnector;
using AriesDBManager;
using AriesCMSInteractions;
using AriesCMSDefinition;


namespace AriesCMS.Models
{
    public enum GenderType
    {
        undefined = 0,
        male = 1,
        female = 2
    };

    [Serializable]
    public partial class GenderTypes
    {
        public List<SelectListItem> ListOfTypes = new List<SelectListItem>
        {
            new SelectListItem {Text = "", Value = "0", Selected=false},
            new SelectListItem {Text = "Male", Value = "1", Selected=false},
            new SelectListItem {Text = "Female", Value = "2", Selected=false}
        };

    }
    
    [Serializable]
    public partial class LocalPageView
    {

        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }

        public LocalPageView()
        {
        }


    }

    [Serializable]
    public partial class FileManagerList
    {
        public string ID { get; set; }


        [Required(ErrorMessage = "Name is required")]
        public string sName { get; set; }
        public string URI { get; set; }
        public string URL { get; set; }
        public bool IsFolder { get; set; }
        public string ThumbNailImage { get; set; }
        public bool IsImage { get; set; }
        public List<FileManagerList> Children { get; set; }
    }

    [Serializable]
    public partial class ShareContent
    {
        public string ID { get; set; }

        [Required(ErrorMessage = "Subject is required")]
        public string sSubject { get; set; }
        public string sMessage { get; set; }
        public string sFromName { get; set; }
        public string sFromEmail { get; set; }
        public string sFromCellPhone { get; set; }
        public string sToEmails { get; set; }
        public string sToCellPhones { get; set; }
        public string URI { get; set; }
        public string URL { get; set; }
        public string ThumbNailImage { get; set; }
        public bool IsImage { get; set; }

        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }
    }

    [Serializable]
    public partial class ContactUsView
    {
        #region Example of using validation settings
        //[Required(ErrorMessage = "you must enter firstname")]
        //public string name { get; set; }

        //[EmailAddress(ErrorMessage = "enter valid email")]
        //public string email { get; set; }

        //[Required(ErrorMessage = "you must your age")]
        //[Range(18, 70, ErrorMessage = "age must be from 18 : 70")]
        //public int age { get; set; }
        #endregion

        [Required(ErrorMessage = "you must enter your full name")]
        public string Name { get; set; }        
        public string Subject { get; set; }        
        public string Message { get; set; }

        [Required(ErrorMessage = "you must enter your valid email")]
        [EmailAddress(ErrorMessage = "you must enter your valid email")]
        public string Email { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Phone { get; set; }

        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }

    }

    [Serializable]
    public partial class ContactLeadView
    {
        #region Example of using validation settings
        //[Required(ErrorMessage = "you must enter firstname")]
        //public string name { get; set; }

        //[EmailAddress(ErrorMessage = "enter valid email")]
        //public string email { get; set; }

        //[Required(ErrorMessage = "you must your age")]
        //[Range(18, 70, ErrorMessage = "age must be from 18 : 70")]
        //public int age { get; set; }
        #endregion


        [Required(ErrorMessage = "first name is required")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "last name is required")]
        public string LastName { get; set; }
        public string CompanyName { get; set; }
        public string Title { get; set; }
        public string CompanyURL { get; set; }
        public string Phone { get; set; }
        public string PhoneExt { get; set; }

        [EmailAddress(ErrorMessage = "enter valid email")]
        public string Email { get; set; }
        public string Notes { get; set; }
        public string GrossAnnualRevenues { get; set; }
        public string HowManyEmployees { get; set; }
        public string RefferalCode { get; set; }

        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }


    }

    [Serializable]
    public partial class NewNewsLetter
    {
        #region Example of using validation settings
        //[Required(ErrorMessage = "you must enter firstname")]
        //public string name { get; set; }

        //[EmailAddress(ErrorMessage = "enter valid email")]
        //public string email { get; set; }

        //[Required(ErrorMessage = "you must your age")]
        //[Range(18, 70, ErrorMessage = "age must be from 18 : 70")]
        //public int age { get; set; }
        #endregion


        public bool ValidationErrors { get; set; }

        [Required(ErrorMessage = "first name is required")]
        public string FirstName { get; set; }
        public bool FirstNameError { get; set; }

        [Required(ErrorMessage = "last name is required")]
        public string LastName { get; set; }
        public bool LastNameError { get; set; }

        [EmailAddress(ErrorMessage = "enter valid email")]
        public string EMail { get; set; }
        public bool EMailError { get; set; }
        public string EMailErrorMessage { get; set; }

        public bool OptingInMail { get; set; }
        public bool OptingInMailError { get; set; }

        public string TrackingCode { get; set; }
        public string HTTPLog { get; set; }

        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }
    }

    [Serializable]
    public partial class NewUserRegistration
    {
        #region Example of using validation settings
        //[Required(ErrorMessage = "you must enter firstname")]
        //public string name { get; set; }

        //[EmailAddress(ErrorMessage = "enter valid email")]
        //public string email { get; set; }

        //[Required(ErrorMessage = "you must your age")]
        //[Range(18, 70, ErrorMessage = "age must be from 18 : 70")]
        //public int age { get; set; }
        #endregion

        public int UserID { get; set; }
        public bool ValidationErrors { get; set; }

        [Required(ErrorMessage = "please provide a valid user name")]
        public string UserName { get; set; }
        public bool UserNameError { get; set; }
        public string UserNameErrorMessage { get; set; }


        [Required(ErrorMessage = "please provide a valid password")]
        public string Password { get; set; }
        public bool PasswordError { get; set; }


        [Required(ErrorMessage = "please provide a valid password")]
        public string PasswordConfirm { get; set; }
        public bool PasswordConfirmError { get; set; }
        public string PasswordErrorMessage { get; set; }


        [Required(ErrorMessage = "please provide a valid first name")]
        public string FirstName { get; set; }
        public bool FirstNameError { get; set; }


        [Required(ErrorMessage = "please provide a valid last name")]
        public string LastName { get; set; }
        public bool LastNameError { get; set; }


        public string MiddleName { get; set; }
        public bool MiddleNameError { get; set; }


        [Required]
        [EmailAddress(ErrorMessage = "enter valid email")]
        public string EMail { get; set; }
        public bool EMailError { get; set; }


        public bool OptingInMail { get; set; }
        public bool OptingInMailError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Phone { get; set; }
        public bool PhoneError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Fax { get; set; }
        public bool FaxError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string CellPhone { get; set; }
        public bool CellPhoneError { get; set; }


        public string DateOfBirth { get; set; }
        public bool DateOfBirthError { get; set; }

        public string DOBMonth { get; set; }
        public List<SelectListItem> DOBMonths { get; set; }
        public void Build_DOBMonths()
        {
            DOBMonths = new List<SelectListItem>();
            DOBMonths.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "January", Value = "01" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "February", Value = "02" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "March", Value = "03" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "April", Value = "04" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "May", Value = "05" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "June", Value = "06" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "July", Value = "07" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "August", Value = "08" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "September", Value = "09" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "October", Value = "10" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "November", Value = "11" });
            DOBMonths.Add(new SelectListItem { Selected = false, Text = "December", Value = "12" });
        }

        public string DOBDay { get; set; }
        public List<SelectListItem> DOBDays { get; set; }
        public void Build_DOBDays()
        {
            DOBDays = new List<SelectListItem>();
            DOBDays.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "01", Value = "01" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "02", Value = "02" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "03", Value = "03" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "04", Value = "04" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "05", Value = "05" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "06", Value = "06" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "07", Value = "07" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "08", Value = "08" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "09", Value = "09" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "10", Value = "10" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "11", Value = "11" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "12", Value = "12" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "13", Value = "13" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "14", Value = "14" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "15", Value = "15" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "16", Value = "16" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "17", Value = "17" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "18", Value = "18" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "19", Value = "19" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "20", Value = "20" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "21", Value = "21" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "22", Value = "22" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "23", Value = "23" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "24", Value = "24" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "25", Value = "25" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "26", Value = "26" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "27", Value = "27" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "28", Value = "28" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "29", Value = "29" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "30", Value = "30" });
            DOBDays.Add(new SelectListItem { Selected = false, Text = "31", Value = "31" });
        }

        public string DOBYear { get; set; }
        public List<SelectListItem> DOBYears { get; set; }
        public void Build_DOBYears()
        {
            DOBYears = new List<SelectListItem>();
            DOBYears.Add(new SelectListItem { Selected = false, Text = " ", Value = "1901" });

            int iCounter = DateTime.Now.Year - DateTime.Parse("01/01/1901").Year;

            for (int i = 0; i < iCounter; i++)
            {
                DOBYears.Add(new SelectListItem { Selected = false, Text = DateTime.Parse("01/01/1901").AddYears(i).Year.ToString(), Value = DateTime.Parse("01/01/1901").AddYears(i).Year.ToString() });
            }

        }

        public string Sex { get; set; }
        public int SexID { get; set; }
        public List<SelectListItem> SexType = new List<SelectListItem>();

        public string ItemIDs { get; set; }
        public List<BillingItems> CartItems = new List<BillingItems>();

        public string CuponCodes { get; set; }
        public List<CouponsPromos> Coupons = new List<CouponsPromos>();

        public string PromoCodes { get; set; }
        public List<CouponsPromos> Promos = new List<CouponsPromos>();

        public string CompanyName { get; set; }
        public bool CompanyNameError { get; set; }

        public UserCompanyInfo Company { get; set; }
        public UserAddressInfo AddressInfo { get; set; }
        public UserBillingInfo BillingInfo { get; set; }


        public string TrackingCode { get; set; }
        public string ScreenName { get; set; }
        public string Avitar { get; set; }
        public string FullPicture { get; set; }
        public string ProfileBackGrdPicture { get; set; }
        public string ProfileLink { get; set; }
        public string ProfileSummary { get; set; }
        public string HomeTown { get; set; }


        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }

        public NewUserRegistration()
        {
            UserID = -1;
            GenderTypes oGen = new GenderTypes();
            SexType = oGen.ListOfTypes;
            Build_DOBMonths();
            Build_DOBDays();
            Build_DOBYears();
            Company = new UserCompanyInfo();
            AddressInfo = new UserAddressInfo();
            BillingInfo = new UserBillingInfo();
        }
    }

    [Serializable]
    public partial class IntegrationUser
    {
        public string _id { get; set; }
        public string _email { get; set; }
        public string _name { get; set; }
        public string _first_name { get; set; }
        public string _last_name { get; set; }
        public string _short_namepublic { get; set; }
        public string _about { get; set; }
        public string _birthday { get; set; }
        public string _cover { get; set; }
        public string _gender { get; set; }
        public string _hometown { get; set; }
        public string _link { get; set; }
        public string _picture { get; set; }


        public bool FromArray(Object[] _ValueObjectArray)
        {
            try
            {

                bool bReturn = false;
                if (_ValueObjectArray != null)
                {
                    #region _id - 0;
                    try
                    {
                        if (_ValueObjectArray[0] != null)
                        {
                            _id = _ValueObjectArray.GetValue(0).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _email - 1;
                    try
                    {
                        if (_ValueObjectArray[1] != null)
                        {
                            _email = _ValueObjectArray.GetValue(1).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _name - 2;
                    try
                    {
                        if (_ValueObjectArray[2] != null)
                        {
                            _name = _ValueObjectArray.GetValue(2).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _first_name - 3;
                    try
                    {
                        if (_ValueObjectArray[3] != null)
                        {
                            _first_name = _ValueObjectArray.GetValue(3).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _last_name - 4;
                    try
                    {
                        if (_ValueObjectArray[1] != null)
                        {
                            _last_name = _ValueObjectArray.GetValue(4).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _short_namepublic - 5;
                    try
                    {
                        if (_ValueObjectArray[5] != null)
                        {
                            _short_namepublic = _ValueObjectArray.GetValue(5).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _about - 6;
                    try
                    {
                        if (_ValueObjectArray[6] != null)
                        {
                            _about = _ValueObjectArray.GetValue(6).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _birthday - 7;
                    try
                    {
                        if (_ValueObjectArray[7] != null)
                        {
                            _birthday = _ValueObjectArray.GetValue(7).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _cover - 8;
                    try
                    {
                        if (_ValueObjectArray[8] != null)
                        {
                            _cover = _ValueObjectArray.GetValue(8).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _gender - 9;
                    try
                    {
                        if (_ValueObjectArray[9] != null)
                        {
                            _gender = _ValueObjectArray.GetValue(9).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _hometown - 10;
                    try
                    {
                        if (_ValueObjectArray[10] != null)
                        {
                            _hometown = _ValueObjectArray.GetValue(10).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _link - 11;
                    try
                    {
                        if (_ValueObjectArray[11] != null)
                        {
                            _link = _ValueObjectArray.GetValue(11).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion

                    #region _picture - 12;
                    try
                    {
                        if (_ValueObjectArray[12] != null)
                        {
                            _picture = _ValueObjectArray.GetValue(12).ToString();
                        }
                    }
                    catch
                    {
                    }
                    #endregion
                }


                return bReturn;
            }
            catch (Exception s)
            {
                return false;
            }
        }

    }

    [Serializable]
    public partial class UserCompanyInfo
    {
        public bool ValidationErrors { get; set; }

        [Required(ErrorMessage = "enter a valid company name")]
        public string CompanyName { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string CompanyPhone { get; set; }
        public bool CompanyPhoneError { get; set; }

        public string CompanyPhoneExt { get; set; }
        public bool CompanyPhoneExtError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string CompanyFax { get; set; }
        public bool CompanyFaxError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string CompanyCellPhone { get; set; }
        public bool CompanyCellPhoneError { get; set; }


        [Required(ErrorMessage = "enter valid address")]
        public string CompanyAddressLine1 { get; set; }
        public bool CompanyAddressLine1Error { get; set; }

        public string CompanyAddressLine2 { get; set; }
        public bool CompanyAddressLine2Error { get; set; }


        public string CompanyAddressLine3 { get; set; }
        public bool CompanyAddressLine3Error { get; set; }


        [Required(ErrorMessage = "enter valid city")]
        public string CompanyCity { get; set; }
        public bool CompanyCityError { get; set; }

        public string CompanyState { get; set; }
        public bool CompanyStateError { get; set; }

        public int CompanyStateID { get; set; }
        public bool CompanyStateIDError { get; set; }

        public string CompanyCountry { get; set; }
        public bool CompanyCountryError { get; set; }

        public int CompanyCountryID { get; set; }
        public bool CompanyCountryIDError { get; set; }


        [Required(ErrorMessage = "enter valid postal code")]
        public string CompanyPostalCode { get; set; }
        public bool CompanyPostalCodeError { get; set; }

        [EmailAddress(ErrorMessage = "enter valid email")]
        public string EMail { get; set; }
        public bool EMailError { get; set; }

        public string OptingInMail { get; set; }
        public bool OptingInMailError { get; set; }

        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Phone { get; set; }
        public bool PhoneError { get; set; }

        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Fax { get; set; }
        public bool FaxError { get; set; }

        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string CellPhone { get; set; }
        public bool CellPhoneError { get; set; }

        public string AvailableTimes { get; set; }
        public string AdditionalMessage { get; set; }

        public UserAddressInfo AddressInfo { get; set; }
        

        public UserCompanyInfo()
        {
            AddressInfo = new UserAddressInfo();
        }

    }

    [Serializable]
    public partial class UserBillingInfo
    {
        public bool ValidationErrors { get; set; }


        [Required(ErrorMessage = "enter your name")]
        public string FullName { get; set; }
        public bool FullNameError { get; set; }


        [Required(ErrorMessage = "enter your first name")]
        public string FirstName { get; set; }
        public bool FirstNameError { get; set; }


        [Required(ErrorMessage = "enter your last name")]
        public string LastName { get; set; }
        public bool LastNameError { get; set; }

        public string MiddleName { get; set; }
        public bool MiddleNameError { get; set; }


        [Required(ErrorMessage = "enter valid credit card number")]
        public string CreditCardNumber { get; set; }
        public bool CreditCardNumberError { get; set; }


        [Required(ErrorMessage = "enter valid credit card cvv")]
        public string CreditCardCVV { get; set; }
        public bool CreditCardCVVError { get; set; }


        public string CreditCardExpDate { get; set; }
        public bool CreditCardExpDateError { get; set; }


        public string CreditCardExpDateMonth { get; set; }
        public bool CreditCardExpDateMonthError { get; set; }

        public List<SelectListItem> ExpMonth { get; set; }
        public void Build_ExpMonth()
        {
            ExpMonth = new List<SelectListItem>();
            ExpMonth.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "January", Value = "01" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "February", Value = "02" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "March", Value = "03" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "April", Value = "04" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "May", Value = "05" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "June", Value = "06" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "July", Value = "07" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "August", Value = "08" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "September", Value = "09" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "October", Value = "10" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "November", Value = "11" });
            ExpMonth.Add(new SelectListItem { Selected = false, Text = "December", Value = "12" });
        }

        public int Get_ExpMonth_Number(string _Month)
        {
            try
            {
                int iMonth = 0;
                switch (_Month)
                {
                    case "January":
                        iMonth = 1;
                        break;
                    case "january":
                        iMonth = 1;
                        break;
                    case "February":
                        iMonth = 2;
                        break;
                    case "february":
                        iMonth = 2;
                        break;
                    case "March":
                        iMonth = 3;
                        break;
                    case "march":
                        iMonth = 3;
                        break;
                    case "April":
                        iMonth = 4;
                        break;
                    case "april":
                        iMonth = 4;
                        break;
                    case "May":
                        iMonth = 5;
                        break;
                    case "may":
                        iMonth = 5;
                        break;
                    case "June":
                        iMonth = 6;
                        break;
                    case "june":
                        iMonth = 6;
                        break;
                    case "July":
                        iMonth = 7;
                        break;
                    case "july":
                        iMonth = 7;
                        break;
                    case "August":
                        iMonth = 8;
                        break;
                    case "august":
                        iMonth = 8;
                        break;
                    case "September":
                        iMonth = 9;
                        break;
                    case "september":
                        iMonth = 9;
                        break;
                    case "October":
                        iMonth = 10;
                        break;
                    case "october":
                        iMonth = 10;
                        break;
                    case "November":
                        iMonth = 11;
                        break;
                    case "november":
                        iMonth = 11;
                        break;
                    case "December":
                        iMonth = 12;
                        break;
                    case "december":
                        iMonth = 12;
                        break;
                }

                return iMonth;
            }
            catch
            {
                return -1;
            }
        }

        public string CreditCardExpDateYear { get; set; }
        public bool CreditCardExpDateYearError { get; set; }

        public List<SelectListItem> ExpYear { get; set; }
        public void Build_ExpYear()
        {
            ExpYear = new List<SelectListItem>();
            ExpYear.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });

            int iCounter = 15;

            for (int i = 0; i < iCounter; i++)
            {
                ExpYear.Add(new SelectListItem { Selected = false, Text = DateTime.Now.AddYears(i).Year.ToString(), Value = DateTime.Now.AddYears(i).Year.ToString() });
            }

        }



        public string EMail { get; set; }
        public bool EMailError { get; set; }

        public bool OptingInMail { get; set; }
        public bool OptingInMailError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Phone { get; set; }
        public bool PhoneError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string Fax { get; set; }
        public bool FaxError { get; set; }


        //[Required(ErrorMessage = "you must enter your valid phone number, no dashes, just numbers")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid US Phone number")]
        public string CellPhone { get; set; }
        public bool CellPhoneError { get; set; }

        public UserAddressInfo AddressInfo { get; set; }


        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }


        public UserBillingInfo()
        {
            AddressInfo = new UserAddressInfo();
            Build_ExpMonth();
            Build_ExpYear();
        }

    }

    [Serializable]
    public partial class UserAddressInfo
    {
        public bool ValidationErrors { get; set; }

        [Required(ErrorMessage = "enter valid address")]
        public string AddressLine1 { get; set; }
        public bool AddressLine1Error { get; set; }

        public string AddressLine2 { get; set; }
        public bool AddressLine2Error { get; set; }

        public string AddressLine3 { get; set; }
        public bool AddressLine3Error { get; set; }

        [Required(ErrorMessage = "enter valid city")]
        public string City { get; set; }
        public bool CityError { get; set; }

        public string State { get; set; }
        public bool StateError { get; set; }

        public int StateID { get; set; }
        public bool StateIDError { get; set; }

        public string Country { get; set; }
        public bool CountryError { get; set; }

        public int CountryID { get; set; }
        public bool CountryIDError { get; set; }

        [Required(ErrorMessage = "enter valid postal code")]
        public string PostalCode { get; set; }
        public bool PostalCodeError { get; set; }

        public string PublicFormResponseMessage { get; set; }
        public string DebugFormResponseMessage { get; set; }
        public UserAddressInfo()
        {
        }
    }

    [Serializable]
    public partial class BillingItems
    {
        public bool ValidationErrors { get; set; }

        public string ID { get; set; }

        [Required(ErrorMessage = "enter valid Item")]
        public string Item { get; set; }
        public bool ItemError { get; set; }

        public string ItemDescription { get; set; }
        public bool ItemDescriptionError { get; set; }

        public string ItemImageLarge { get; set; }
        public bool ItemImageLargeError { get; set; }

        public string ItemImageSmall { get; set; }
        public bool ItemImageSmallError { get; set; }

        public double ItemCost { get; set; }
        public bool ItemCostError { get; set; }

        public double ItemQty { get; set; }
        public bool ItemQtyError { get; set; }

        public string PublicFormResponseMessage { get; set; }
        public string DebugFormResponseMessage { get; set; }
    }

    [Serializable]
    public partial class CouponsPromos
    {
        public bool ValidationErrors { get; set; }


        [Required(ErrorMessage = "enter valid code")]
        public string CPCode { get; set; }
        public bool WasApplied { get; set; }
        public double DiscountAmount { get; set; }
        public string RelatedToItems { get; set; }

        public string PublicFormResponseMessage { get; set; }
        public string DebugFormResponseMessage { get; set; }

    }

    [Serializable]
    public partial class ProfileRecovery
    {
        public bool ValidationErrors { get; set; }

        public string FullName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        [EmailAddress(ErrorMessage = "enter valid email")]
        public string Email { get; set; }


        [EmailAddress(ErrorMessage = "enter valid user name")]
        public string Username { get; set; }

        //This will hold any error message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

        //Use this veriable to debug any form process to 
        public string DebugFormResponseMessage { get; set; }
    }
    
    [Serializable]
    public class ChargeRecord
    {
        public string AuthorizationCode { get; set; }
        public string CardNumber { get; set; }
        public string CardType { get; set; }
        public string CardNumberMask { get; set; }
        public string CVV { get; set; }
        public string ExpirationDate { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
        public string ChargeAmount { get; set; }
        public string ShippingCharge { get; set; }
        public string Subtotal { get; set; }
        public string ChargeDescription { get; set; }
        public string Tax { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string PostalCode { get; set; }
        public string Country { get; set; }
        public string PhoneNumber { get; set; }
        public string EMail { get; set; }
        public string ClientIPAddress { get; set; }

        public string PaymentID { get; set; }


        //This will hold any error message from the server side process
        public string ChargeResponse { get; set; }


        //This will hold any response message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

    }
    
    [Serializable]
    public class ChartData
    {
        public string AuthorizationCode { get; set; }
        public string CardNumber { get; set; }
        public string CardType { get; set; }
        public string CardNumberMask { get; set; }
        public string CVV { get; set; }
        public string ExpirationDate { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
        public string ChargeAmount { get; set; }
        public string ShippingCharge { get; set; }
        public string Subtotal { get; set; }
        public string ChargeDescription { get; set; }
        public string Tax { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string PostalCode { get; set; }
        public string Country { get; set; }
        public string PhoneNumber { get; set; }
        public string EMail { get; set; }
        public string ClientIPAddress { get; set; }

        public string PaymentID { get; set; }


        //This will hold any error message from the server side process
        public string ChargeResponse { get; set; }


        //This will hold any response message from the server side process
        public string ErrorMessage { get; set; }

        //This is a full url to an error page to handel any errors which occure during processing
        public string ErrorPageURL { get; set; }

        //This is to handel any success page after a good server side process
        public string SuccessPageURL { get; set; }

        //This is for when the form is in an cshtml file, allowing you to specify that file
        public string SourceForm { get; set; }

        //Set to "true" if the form is created via the cms rather than in a cshtml file --- set via hidden form field value
        public string IsCMSForm { get; set; }

    }
    
    [Serializable]
    public partial class WebSiteSponsorsDBView
    {
        int iID = 0;
        public DEF_WebSiteSponsors.RecordObject WebSiteSponsors { get; set; }

        public List<SelectListItem> Sponsorshiptypes { get; set; }
        public void Build_Sponsorshiptypes(IEnumerable<DEF_WebSiteSponsorShipTypes.RecordObject> lsrWebSiteSponsorShipTypes)
        {
            Sponsorshiptypes = new List<SelectListItem>();
            Sponsorshiptypes.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteSponsorShipTypes != null)
            {
                foreach (DEF_WebSiteSponsorShipTypes.RecordObject oV in lsrWebSiteSponsorShipTypes)
                {
                    Sponsorshiptypes.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_Sponsorshiptypes(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteSponsorShipTypes dbInteraction = new DINT_WebSiteSponsorShipTypes(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        Build_Sponsorshiptypes(dbInteraction.Get(lstParameters));
                    }
                }
            }
            catch
            {
            }
        }

        public List<SelectListItem> AssociatedUsers { get; set; }
        public void Build_AssociatedUsers(IEnumerable<DEF_Users.RecordObject> lsrUsers)
        {
            AssociatedUsers = new List<SelectListItem>();
            AssociatedUsers.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrUsers != null)
            {
                foreach (DEF_Users.RecordObject oV in lsrUsers)
                {
                    AssociatedUsers.Add(new SelectListItem { Selected = false, Text = oV.sFName + " " + oV.sLName + " (" + oV.sPrimaryEMail + ")", Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_AssociatedUsers(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_Users dbInteraction = new DINT_Users(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        Build_AssociatedUsers(dbInteraction.Get(lstParameters));
                    }
                }
            }
            catch
            {
            }
        }

        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSiteSponsors dbWebSiteSponsors = new DINT_WebSiteSponsors(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSiteSponsors.RecordObject> oSearch = dbWebSiteSponsors.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSiteSponsors = oSearch[0];
                                    if (WebSiteSponsors != null)
                                    {
                                        bResponse = true;
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

        public WebSiteSponsorsDBView()
        {
            WebSiteSponsors = new DEF_WebSiteSponsors.RecordObject();
            Build_Sponsorshiptypes(null);
            Build_AssociatedUsers(null);
        }

    }
    
    [Serializable]
    public partial class WebSiteEventCalendarSponsorsDBView
    {
        int iID = 0;
        public DEF_WebSiteEventCalendarSponsors.RecordObject WebSiteEventCalendarSponsors { get; set; }

        public List<SelectListItem> WebSiteSponsors { get; set; }
        public List<DEF_WebSiteSponsors.RecordObject> lstWebSiteSponsors;
        public void Build_WebSiteSponsors(IEnumerable<DEF_WebSiteSponsors.RecordObject> lsrWebSiteSponsors)
        {
            WebSiteSponsors = new List<SelectListItem>();
            WebSiteSponsors.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteSponsors != null)
            {
                foreach (DEF_WebSiteSponsors.RecordObject oV in lsrWebSiteSponsors)
                {
                    WebSiteSponsors.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSiteSponsors(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteSponsors dbInteraction = new DINT_WebSiteSponsors(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        lstWebSiteSponsors = dbInteraction.Get(lstParameters);
                        Build_WebSiteSponsors(lstWebSiteSponsors);
                    }
                }
            }
            catch
            {
            }
        }


        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSiteEventCalendarSponsors dbWebSiteEventCalendarSponsors = new DINT_WebSiteEventCalendarSponsors(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSiteEventCalendarSponsors.RecordObject> oSearch = dbWebSiteEventCalendarSponsors.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSiteEventCalendarSponsors = oSearch[0];
                                    if (WebSiteEventCalendarSponsors != null)
                                    {
                                        bResponse = true;
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

        public WebSiteEventCalendarSponsorsDBView()
        {
            WebSiteEventCalendarSponsors = new DEF_WebSiteEventCalendarSponsors.RecordObject();
            Build_WebSiteSponsors(null);
        }

    }
    
    [Serializable]
    public partial class WebSiteMembersDBView
    {
        int iID = 0;
        public DEF_WebSiteMembers.RecordObject WebSiteMembers { get; set; }


        public List<DEF_WebSiteMemberShips.RecordObject> lstWebSiteMemberShips;
        public List<SelectListItem> WebSiteMemberShips { get; set; }
        public void Build_WebSiteMemberShips(IEnumerable<DEF_WebSiteMemberShips.RecordObject> lsrWebSiteMemberShips)
        {
            WebSiteMemberShips = new List<SelectListItem>();
            WebSiteMemberShips.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteMemberShips != null)
            {
                foreach (DEF_WebSiteMemberShips.RecordObject oV in lsrWebSiteMemberShips)
                {
                    WebSiteMemberShips.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSiteMemberShips(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteMemberShips dbInteraction = new DINT_WebSiteMemberShips(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        lstWebSiteMemberShips = dbInteraction.Get(lstParameters);

                        Build_WebSiteMemberShips(lstWebSiteMemberShips);
                    }
                }
            }
            catch
            {
            }
        }


        public List<SelectListItem> AssociatedUsers { get; set; }
        public void Build_AssociatedUsers(IEnumerable<DEF_Users.RecordObject> lsrUsers)
        {
            AssociatedUsers = new List<SelectListItem>();
            AssociatedUsers.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrUsers != null)
            {
                foreach (DEF_Users.RecordObject oV in lsrUsers)
                {
                    AssociatedUsers.Add(new SelectListItem { Selected = false, Text = oV.sFName + " " + oV.sLName + " (" + oV.sPrimaryEMail + ")", Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_AssociatedUsers(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_Users dbInteraction = new DINT_Users(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        Build_AssociatedUsers(dbInteraction.Get(lstParameters));
                    }
                }
            }
            catch
            {
            }
        }



        public List<DEF_WebSiteMemberShipsCategories.RecordObject> lstWebSiteMemberShipsCategories;
        public List<SelectListItem> WebSiteMemberShipsCategories { get; set; }
        public void Build_WebSiteMemberShipsCategories(IEnumerable<DEF_WebSiteMemberShipsCategories.RecordObject> _lsrWebSiteMemberShipsCategories)
        {
            WebSiteMemberShipsCategories = new List<SelectListItem>();
            WebSiteMemberShipsCategories.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (_lsrWebSiteMemberShipsCategories != null)
            {
                foreach (DEF_WebSiteMemberShipsCategories.RecordObject oV in _lsrWebSiteMemberShipsCategories)
                {
                    WebSiteMemberShipsCategories.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSiteMemberShipsCategories(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteMemberShipsCategories dbInteraction = new DINT_WebSiteMemberShipsCategories(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();
                        lstWebSiteMemberShipsCategories = dbInteraction.Get(lstParameters);
                        Build_WebSiteMemberShipsCategories(lstWebSiteMemberShipsCategories);
                    }
                }
            }
            catch
            {
            }
        }


        public List<DEF_WebSiteMemberCats.RecordObject> lstWebSiteMemberCats;
        public List<SelectListItem> WebSiteMemberCats { get; set; }
        public void Build_WebSiteMemberCats(IEnumerable<DEF_WebSiteMemberCats.RecordObject> lsrWebSiteMemberCats)
        {
            WebSiteMemberCats = new List<SelectListItem>();
            WebSiteMemberCats.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteMemberCats != null)
            {
                foreach (DEF_WebSiteMemberCats.RecordObject oV in lsrWebSiteMemberCats)
                {
                    WebSiteMemberCats.Add(new SelectListItem { Selected = false, Text = oV.sCategoryID, Value = oV.iCategoryID.ToString() });
                }
            }
        }
        public void Get_WebSiteMemberCats(IDataConnection _cnCon, int _iParentID)
        {
            try
            {
                if (_iParentID > 0)
                {
                    if (_cnCon != null)
                    {
                        if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                        {
                            DINT_WebSiteMemberCats dbInteraction = new DINT_WebSiteMemberCats(_cnCon);

                            List<DataParameter> lstParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("iParentID", _iParentID.ToString(), "int", 0, "iParentID", " = ", "");
                            lstParameters.Add(pParameter);

                            lstWebSiteMemberCats = dbInteraction.Get(lstParameters);

                            Build_WebSiteMemberCats(lstWebSiteMemberCats);
                        }
                    }
                }
            }
            catch
            {
            }
        }
        

        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSiteMembers dbWebSiteMembers = new DINT_WebSiteMembers(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSiteMembers.RecordObject> oSearch = dbWebSiteMembers.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSiteMembers = oSearch[0];
                                    if (WebSiteMembers != null)
                                    {
                                        bResponse = true;
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

        public WebSiteMembersDBView()
        {
            WebSiteMembers = new DEF_WebSiteMembers.RecordObject();
            Build_AssociatedUsers(null);
            Build_WebSiteMemberShips(null);
        }

    }

    [Serializable]
    public partial class WebSiteMemberCatsDBView
    {
        int iID = 0;
        public DEF_WebSiteMemberCats.RecordObject WebSiteMemberCats { get; set; }


        public List<DEF_WebSiteMemberShipsCategories.RecordObject> lstWebSiteMemberShipsCategories;
        public List<SelectListItem> WebSiteMemberShipsCategories { get; set; }
        public void Build_WebSiteMemberShipsCategories(IEnumerable<DEF_WebSiteMemberShipsCategories.RecordObject> lsrWebSiteMemberShipsCategories)
        {
            WebSiteMemberShipsCategories = new List<SelectListItem>();
            WebSiteMemberShipsCategories.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteMemberShipsCategories != null)
            {
                foreach (DEF_WebSiteMemberShipsCategories.RecordObject oV in lsrWebSiteMemberShipsCategories)
                {
                    WebSiteMemberShipsCategories.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSiteMemberShipsCategories(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteMemberShipsCategories dbInteraction = new DINT_WebSiteMemberShipsCategories(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        lstWebSiteMemberShipsCategories = dbInteraction.Get(lstParameters);

                        Build_WebSiteMemberShipsCategories(lstWebSiteMemberShipsCategories);
                    }
                }
            }
            catch
            {
            }
        }

               

        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSiteMemberCats dbWebSiteMemberCats = new DINT_WebSiteMemberCats(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSiteMemberCats.RecordObject> oSearch = dbWebSiteMemberCats.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSiteMemberCats = oSearch[0];
                                    if (WebSiteMemberCats != null)
                                    {
                                        bResponse = true;
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

        public WebSiteMemberCatsDBView()
        {
            WebSiteMemberCats = new DEF_WebSiteMemberCats.RecordObject();
            Build_WebSiteMemberShipsCategories(null);
        }

    }
    
    [Serializable]
    public partial class WebSitePartnersDBView
    {
        int iID = 0;
        public DEF_WebSitePartners.RecordObject WebSitePartners { get; set; }


        public List<DEF_WebSitePartnerTypes.RecordObject> lstWebSitePartnerTypes;
        public List<SelectListItem> WebSitePartnerTypes { get; set; }
        public void Build_WebSitePartnerTypes(IEnumerable<DEF_WebSitePartnerTypes.RecordObject> lsrWebSitePartnerTypes)
        {
            WebSitePartnerTypes = new List<SelectListItem>();
            WebSitePartnerTypes.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSitePartnerTypes != null)
            {
                foreach (DEF_WebSitePartnerTypes.RecordObject oV in lsrWebSitePartnerTypes)
                {
                    WebSitePartnerTypes.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSitePartnerTypes(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSitePartnerTypes dbInteraction = new DINT_WebSitePartnerTypes(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        lstWebSitePartnerTypes = dbInteraction.Get(lstParameters);

                        Build_WebSitePartnerTypes(lstWebSitePartnerTypes);
                    }
                }
            }
            catch
            {
            }
        }


        public List<SelectListItem> AssociatedUsers { get; set; }
        public void Build_AssociatedUsers(IEnumerable<DEF_Users.RecordObject> lsrUsers)
        {
            AssociatedUsers = new List<SelectListItem>();
            AssociatedUsers.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrUsers != null)
            {
                foreach (DEF_Users.RecordObject oV in lsrUsers)
                {
                    AssociatedUsers.Add(new SelectListItem { Selected = false, Text = oV.sFName + " " + oV.sLName + " (" + oV.sPrimaryEMail + ")", Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_AssociatedUsers(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_Users dbInteraction = new DINT_Users(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        Build_AssociatedUsers(dbInteraction.Get(lstParameters));
                    }
                }
            }
            catch
            {
            }
        }

        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSitePartners dbWebSitePartners = new DINT_WebSitePartners(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSitePartners.RecordObject> oSearch = dbWebSitePartners.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSitePartners = oSearch[0];
                                    if (WebSitePartners != null)
                                    {
                                        bResponse = true;
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

        public WebSitePartnersDBView()
        {
            WebSitePartners = new DEF_WebSitePartners.RecordObject();
            Build_AssociatedUsers(null);
            Build_WebSitePartnerTypes(null);
        }

    }
    
    [Serializable]
    public partial class WebSiteAffiliatesDBView
    {
        int iID = 0;
        public DEF_WebSiteAffiliates.RecordObject WebSiteAffiliates { get; set; }


        public List<DEF_WebSiteAffiliateTypes.RecordObject> lstWebSiteAffiliateTypes;
        public List<SelectListItem> WebSiteAffiliateTypes { get; set; }
        public void Build_WebSiteAffiliateTypes(IEnumerable<DEF_WebSiteAffiliateTypes.RecordObject> lsrWebSiteAffiliateTypes)
        {
            WebSiteAffiliateTypes = new List<SelectListItem>();
            WebSiteAffiliateTypes.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteAffiliateTypes != null)
            {
                foreach (DEF_WebSiteAffiliateTypes.RecordObject oV in lsrWebSiteAffiliateTypes)
                {
                    WebSiteAffiliateTypes.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSiteAffiliateTypes(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteAffiliateTypes dbInteraction = new DINT_WebSiteAffiliateTypes(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        lstWebSiteAffiliateTypes = dbInteraction.Get(lstParameters);

                        Build_WebSiteAffiliateTypes(lstWebSiteAffiliateTypes);
                    }
                }
            }
            catch
            {
            }
        }


        public List<SelectListItem> AssociatedUsers { get; set; }
        public void Build_AssociatedUsers(IEnumerable<DEF_Users.RecordObject> lsrUsers)
        {
            AssociatedUsers = new List<SelectListItem>();
            AssociatedUsers.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrUsers != null)
            {
                foreach (DEF_Users.RecordObject oV in lsrUsers)
                {
                    AssociatedUsers.Add(new SelectListItem { Selected = false, Text = oV.sFName + " " + oV.sLName + " (" + oV.sPrimaryEMail + ")", Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_AssociatedUsers(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_Users dbInteraction = new DINT_Users(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        Build_AssociatedUsers(dbInteraction.Get(lstParameters));
                    }
                }
            }
            catch
            {
            }
        }

        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSiteAffiliates dbWebSiteAffiliates = new DINT_WebSiteAffiliates(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSiteAffiliates.RecordObject> oSearch = dbWebSiteAffiliates.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSiteAffiliates = oSearch[0];
                                    if (WebSiteAffiliates != null)
                                    {
                                        bResponse = true;
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

        public WebSiteAffiliatesDBView()
        {
            WebSiteAffiliates = new DEF_WebSiteAffiliates.RecordObject();
            Build_AssociatedUsers(null);
            Build_WebSiteAffiliateTypes(null);
        }

    }

    [Serializable]
    public partial class WebSite_MessagingDBView
    {
        int iID = 0;
        public DEF_WebSite_Messaging.RecordObject WebSite_Messaging { get; set; }


        public List<DEF_CountryLanguages.RecordObject> lstCountryLanguages;
        public List<SelectListItem> CountryLanguages { get; set; }
        public void Build_CountryLanguages(IEnumerable<DEF_CountryLanguages.RecordObject> lsrCountryLanguages)
        {
            CountryLanguages = new List<SelectListItem>();
            CountryLanguages.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrCountryLanguages != null)
            {
                foreach (DEF_CountryLanguages.RecordObject oV in lsrCountryLanguages)
                {
                    CountryLanguages.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_CountryLanguages(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_CountryLanguages dbInteraction = new DINT_CountryLanguages(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        lstCountryLanguages = dbInteraction.Get(lstParameters);

                        Build_CountryLanguages(lstCountryLanguages);
                    }
                }
            }
            catch
            {
            }
        }
                

        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSite_Messaging dbWebSite_Messaging = new DINT_WebSite_Messaging(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSite_Messaging.RecordObject> oSearch = dbWebSite_Messaging.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSite_Messaging = oSearch[0];
                                    if (WebSite_Messaging != null)
                                    {
                                        bResponse = true;
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

        public WebSite_MessagingDBView()
        {
            WebSite_Messaging = new DEF_WebSite_Messaging.RecordObject();
            Build_CountryLanguages(null);
        }

    }
    
    [Serializable]
    public partial class WebSiteAnnouncementsDBView
    {
        int iID = 0;
        public DEF_WebSiteAnnouncements.RecordObject WebSiteAnnouncements { get; set; }

        public List<SelectListItem> WebSiteAnnouncementsType { get; set; }
        public void Build_WebSiteAnnouncementsType(IEnumerable<DEF_WebSiteAnnouncementsType.RecordObject> lsrWebSiteAnnouncementsType)
        {
            WebSiteAnnouncementsType = new List<SelectListItem>();
            WebSiteAnnouncementsType.Add(new SelectListItem { Selected = false, Text = " ", Value = "0" });
            if (lsrWebSiteAnnouncementsType != null)
            {
                foreach (DEF_WebSiteAnnouncementsType.RecordObject oV in lsrWebSiteAnnouncementsType)
                {
                    WebSiteAnnouncementsType.Add(new SelectListItem { Selected = false, Text = oV.sName, Value = oV.ID.ToString() });
                }
            }
        }
        public void Get_WebSiteAnnouncementsType(IDataConnection _cnCon)
        {
            try
            {
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        DINT_WebSiteAnnouncementsType dbInteraction = new DINT_WebSiteAnnouncementsType(_cnCon);

                        List<DataParameter> lstParameters = new List<DataParameter>();

                        Build_WebSiteAnnouncementsType(dbInteraction.Get(lstParameters));
                    }
                }
            }
            catch
            {
            }
        }



        public bool GetView(IDataConnection _cnCon, int _Id = 0)
        {
            try
            {
                bool bResponse = false;
                if (_cnCon != null)
                {
                    if (_cnCon.ConnectionStatus == ConnectionStatusTypes.Open)
                    {
                        if (_Id > 0)
                        {
                            iID = _Id;

                            DINT_WebSiteAnnouncements dbWebSiteAnnouncements = new DINT_WebSiteAnnouncements(_cnCon);

                            List<DataParameter> lspParameters = new List<DataParameter>();
                            DataParameter pParameter = new DataParameter("ID", _Id.ToString(), "int", 0, "ID", " = ", "");
                            lspParameters.Add(pParameter);

                            List<DEF_WebSiteAnnouncements.RecordObject> oSearch = dbWebSiteAnnouncements.Get(lspParameters);
                            if (oSearch != null)
                            {
                                if (oSearch.Count > 0)
                                {
                                    WebSiteAnnouncements = oSearch[0];
                                    if (WebSiteAnnouncements != null)
                                    {
                                        bResponse = true;
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

        public WebSiteAnnouncementsDBView()
        {
            WebSiteAnnouncements = new DEF_WebSiteAnnouncements.RecordObject();
            Build_WebSiteAnnouncementsType(null);
        }

    }

    [Serializable]
    public partial class WebSiteBlog_Navigation
    {

    }
    
    [Serializable]
    public partial class FaceBookUser
    {
        public string _id { get; set; }
        public string _email { get; set; }
        public string _name { get; set; }
        public string _first_name { get; set; }
        public string _last_name { get; set; }
        public string _short_namepublic { get; set; }
        public string _about { get; set; }
        public string _birthday { get; set; }
        public string _cover { get; set; }
        public string _gender { get; set; }
        public string _hometown { get; set; }
        public string _link { get; set; }
        public string _picture { get; set; }


    }
    
    [Serializable]
    public partial class LeasUserSearch
    {
        public int SourceID { get; set; }
        public int Id { get; set; }
        public string Email { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Phone { get; set; }


    }


}