
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
}