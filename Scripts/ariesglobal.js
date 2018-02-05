

var sBaseURL = window.location.protocol + "//" + window.location.host + "/";


function Ini_Page() {
	
	  $( function() {
		//$( document ).tooltip();
	  } );
    //alert("Stuff and thigns");

    //$(function () {
    //    $("#acmAddNewPGDialog").dialog({
    //        autoOpen: false,
    //        maxWidth: 550,
    //        maxHeight: 450,
    //        width: 550,
    //        height: 450, closeText: "X"
    //    });
    //});
    //$(function () {
    //    $("#acmUserLogIn").dialog({
    //        autoOpen: false,
    //        maxWidth: 350,
    //        maxHeight: 270,
    //        width: 350,
    //        height: 270, closeText: "X"
    //    });
    //});
    //$(function () {
    //    $("#acmUserRegistration").dialog({
    //        autoOpen: false,
    //        maxWidth: 350,
    //        maxHeight: 270,
    //        width: 350,
    //        height: 270, closeText: "X"
    //    });
    //});
}



function SetSessionTimeOut_AskToExtend(dTimeOut) {
    try {
        //18 min = 1080000
        //2 min = 120000
        //2 hours = 720000
        setTimeout("AskToExtendSession()", dTimeOut);
    }
    catch (e) {
    }
}

function AskToExtendSession() {
    try {
        var nRslt = confirm("Your Session Is About To Time Out, Would you like to extend it?");

        if (nRslt) {
            location.reload(true);
        }
    }
    catch (e) {
    }
}
function SetSessionTimeOut_AutoExtend(dTimeOut) {

    try {
        //1 sec = 1000
        //1 min = 60000

        //alert("Time out Set To: " + dTimeOut);
        setTimeout("AutoExtendSession()", dTimeOut);
    }
    catch (e) {
    }
}
function AutoExtendSession() {
    try {
        //alert("Time Out About To Fire");
        __doPostBack('TSAutoRefresh', '0');
    }
    catch (e) {
    }
}

//this breaks query string in to array
function querySt(ji) {
    hu = window.location.search.substring(1);
    gy = hu.split("&");
    for (i = 0; i < gy.length; i++) {
        ft = gy[i].split("=");
        if (ft[0] == ji) {
            return ft[1];
        }
    }
}


////Function to disable button after clicked
//function EndRequestHandler(sender, args) {
//    try {
//        if (args.get_error() != undefined) {
//            var errorMessage;
//            if (args.get_response().get_statusCode() == '12029') {
//                args.set_errorHandled(true);
//            }
//            else {
//                //not my error so let the default behavior happen     
//            }
//        }
//    }
//    catch (e) {
//    }
//}

function ResizeWindowTo(w, h) {
    try {
        window.resizeTo(w, h);
    }
    catch (e) {
    }
}
function NavigateToWindow(sURL) {
    try {
        window.location.href = sURL;
    }
    catch (e) {
    }
}
function NavigateWindowDefault(sURL, sWindowName, sTitle) {
    try {
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '1250' + ", height=" + '850';
        window.location.href = sURL;
    }
    catch (e) {
    }
}
function OpenWindow(sURL, sWindowName, iShowStatusBar, iScrollBars, iIsResizable, iShowToolBar, iLocation, iDirectories, sWidth, sHeight, sTitle) {
    try {
        var sConfigArg = "status=" + iShowStatusBar + ",scrollbars=" + iScrollBars + ",resizable=" + iIsResizable + ",toolbar=" + iShowToolBar + ", location=" + iLocation + " directories=" + iDirectories + ",width=" + sWidth + ", height=" + sHeight;
        window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}
function OpenWindowDefault(sURL, sWindowName, sTitle) {
    try {
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '850' + ", height=" + '850';
        window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}
function OpenWindowDefault1(sURL) {
    try {
        var sWindowName = "TheSystem";
        var sTitle = "The System";
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '850' + ", height=" + '850';
        window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}

function OpenWindowDefault2(sURL, sWindowName, sTitle) {
    try {
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '850' + ", height=" + '850';
        return window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}
function OpenWindowDefault3(sURL) {
    try {
        var sWindowName = "TheSystem";
        var sTitle = "The System";
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '850' + ", height=" + '850';
        return window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}

function getQuerystring(key, default_) {
    try {
        if (default_ == null) default_ = "";
        key = key.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regex = new RegExp("[\\?&]" + key + "=([^&#]*)");
        var qs = regex.exec(window.location.href);
        if (qs == null)
            return default_;
        else
            return qs[1];
    }
    catch (e) {
        return null;
    }
}
function CallAlert(sAlert) {
    try {
        alert(sAlert);
    }
    catch (e) {
    }
}
function CallAlertParentWindow(sAlert) {
    try {
        window.opener.CallAlert(sAlert);
    }
    catch (e) {
    }
}
function CloseChildWindow(sURL, sWindowName) {
    try {
        var mywindow = window.open(sURL, sWindowName, '');
        mywindow.close();
    }
    catch (e) {
    }
}
function ChangeChildWindowTitle(sURL, sWindowName, sTitle) {
    try {
        var mywindow = window.open(sURL, sWindowName, '');
        mywindow.document.title = sTitle;
    }
    catch (e) {
    }
}
function RefreshChildWindowTitle(sURL, sWindowName) {
    try {
        var mywindow = window.open(sURL, sWindowName, '');
        mywindow.location.reload = true;
    }
    catch (e) {
    }
}
function setDropDownList_byText(elementRef, valueToSetTo) {
    try {
        var isFound = false;

        for (var i = 0; i < elementRef.options.length; i++) {

            if (elementRef.options[i].text == valueToSetTo) {
                elementRef.options[i].selected = true;
                isFound = true;
            }
        }

        if (isFound == false)
            elementRef.options[0].selected = true;
    }
    catch (e) {
    }
}
function setDropDownList_byValue(elementRef, valueToSetTo) {
    try {
        var isFound = false;

        for (var i = 0; i < elementRef.options.length; i++) {

            if (elementRef.options[i].value == valueToSetTo) {
                elementRef.options[i].selected = true;
                isFound = true;
            }
        }

        if (isFound == false)
            elementRef.options[0].selected = true;
    }
    catch (e) {
    }
}
function GetClientId(strid) {
    try {
        var count = document.forms[0].length;
        var i = 0;
        var eleName;
        for (i = 0; i < count; i++) {
            eleName = document.forms[0].elements[i].id;
            pos = eleName.indexOf(strid);
            if (pos >= 0) break;
        }

        return eleName;
    }
    catch (e) {
        return null;
    }
}

function grid_GoThroughCheckedItems(grdGrid) {
    try {

        var grid = grdGrid; // cagrid is the id of the componentart grid
        var gridItem;
        var itemIndex = 0;
        var checked = false;

        while (gridItem = grid.Table.GetRow(itemIndex)) {
            if (gridItem.Cells[0].Value) // 0 is the 1st column as it is of checkbox type in this case
            {
                checked = true;
            }

            itemIndex++;
        }

        if (!checked) {
            alert('You have not selected any items.\n Please select atleast one item.');
        }

        return checked;
    }
    catch (e) {
        return false;
    }
}





function GetTemplates() {
    try {


        var procemessage = "<option value='0'> Please wait...</option>";
        $("#NewPage_cboTemplates").html(procemessage).show();
        var url = sBaseURL + "admin/home/GetTemplats/";

        var oMydata = {};
        $.ajax({
            url: url,
            data: oMydata,
            cache: false,
            type: "POST",
            dataType: "json",
            error: function (reponse) {
                alert("error : " + reponse);
            },
            success: function (data) {
                var markup = "<option value='0'> </option>";
                for (var x = 0; x < data.length; x++) {
                    markup += "<option value=" + data[x].Value + ">" + data[x].Text + "</option>";
                }
                $("#NewPage_cboTemplates").html(markup).show();
            }
        });

    }
    catch (e) {
        alert(e);
        $("#NewPage_cboTemplatesD").html("error").show();
    }
}

function on_Index_iSiteTemplateID_Changed() {
    try {
        var cboControl = document.getElementById("NewPage_cboTemplates");
        var selectedText = cboControl[cboControl.selectedIndex].text;


        Get_SiteTemplatePage(cboControl[cboControl.selectedIndex].value);

    }
    catch (e) {
        alert(e);
    }
}

function Get_SiteTemplatePage(_Id) {
    try {
        //alert("Got Here with ID: " + _Id);
        var procemessage = "<option value='0'> Please wait...</option>";
        $("#NewPage_cboTemplatesPage").html(procemessage).show();
        var url = sBaseURL + "admin/home/GetTemplatePage/";

        var oMydata = { _ParentID: _Id };

        $.ajax({
            url: url,
            data: oMydata,
            cache: false,
            type: "POST",
            dataType: "json",
            error: function (jqXHR, textStatus, errorThrown) {

                pnlGlobalError.style.display = "inline";
                pnlPleaseWait.style.display = "none";
            },
            success: function (data) {
                var markup = "<option value='0'> </option>";
                for (var x = 0; x < data.length; x++) {
                    markup += "<option value=" + data[x].Value + ">" + data[x].Text + "</option>";
                }
                $("#NewPage_cboTemplatesPage").html(markup).show();
            }
        });

    }
    catch (e) {
        alert(e);
        $("#NewPage_cboTemplatesPage").html("error").show();
    }
}


function Get_Languages() {
    try {
        //alert("Got Here with ID: " + _Id);
        var procemessage = "<option value='0'> Please wait...</option>";
        $("#NewPage_cboPageLanguage").html(procemessage).show();
        var url = sBaseURL + "admin/home/GetCountryLanguages/";

        var oMydata = {};


        $.ajax({
            url: url,
            data: oMydata,
            cache: false,
            type: "POST",
            dataType: "json",
            error: function (reponse) {
                alert("error : " + reponse);
            },
            success: function (data) {
                var markup = "<option value='0'> </option>";
                for (var x = 0; x < data.length; x++) {
                    if (data[x].Value == 205) {
                        markup += "<option value=" + data[x].Value + " selected>" + data[x].Text + "</option>";
                    }
                    else {
                        markup += "<option value=" + data[x].Value + ">" + data[x].Text + "</option>";
                    }
                }
                $("#NewPage_cboPageLanguage").html(markup).show();
            }
        });

    }
    catch (e) {
        alert(e);
        $("#NewPage_cboPageLanguage").html("error").show();
    }
}

function UpdateContentByID(oEditor) {

    try {

        var url = sBaseURL + "admin/home/UpdateContent";

        var oMydata = { _ContentID: oEditor.id, _Content: tinymce.get(oEditor.id).getContent() };

        $.ajax({
            url: url,
            data: oMydata,
            cache: false,
            type: "POST",
            dataType: "json",
            error: function (reponse) {
                alert("error : " + reponse);
            },
            success: function (data) {
                alert("Your changes were saved!");
            }
        });

    }
    catch (e) {
        alert("UpdateContentByID error : " + e);
        //$("#WebSitePageZoneContent_iContentZoneID").html("error").show();
    }
}


function AddNewPageFrontPage() {

    try {


        var cboThemeControl = document.getElementById("NewPage_cboTemplates");
        var oThemeselectedText = cboControl[cboControl.selectedIndex].text;

        var cboThemePageControl = document.getElementById("NewPage_cboTemplatesPage");
        var oThemePageselectedText = cboControl[cboControl.selectedIndex].text;


        var cboPageLanguageControl = document.getElementById("NewPage_cboPageLanguage");
        var oPageLanguageselectedText = cboControl[cboControl.selectedIndex].text;

        var txtPagename = document.getElementById("NewPage_txtPageName");
        var txtPageurl = document.getElementById("NewPage_txtPageURL");



        var url = sBaseURL + "admin/home/AddNewPageFrontPage";

        var oMydata = { _PageName: txtPagename.value, _PageNav: txtPageurl.value, _TemplateID: cboControl[cboControl.selectedIndex].value, _TemplateName: selectedText };



        $.ajax({
            url: url,
            data: oMydata,
            cache: false,
            type: "POST",
            dataType: "json",
            error: function (reponse) {
                alert("UpdateContentByID error : " + reponse);
            },
            success: function (data) {
                alert("Your page was created!");

                //window.location.href = window.location.protocol + "//" + window.location.hostname + "/" + txtPageurl.value;
                window.location.href = window.location.protocol + "//" + window.location.host + "/" + txtPageurl.value;




            }
        });

    }
    catch (e) {
        alert("AddNewPageFrontPage error : " + e);
        //$("#WebSitePageZoneContent_iContentZoneID").html("error").show();
    }
}

function UpdateTemplateContentByID(oEditor) {

    try {

        var url = sBaseURL + "admin/home/UpdateTemplateContent";

        var oMydata = { _ContentID: oEditor.id, _Content: tinymce.get(oEditor.id).getContent() };


        $.ajax({
            url: url,
            data: oMydata,
            cache: false,
            type: "POST",
            dataType: "json",
            success: function (data) {
                alert("Your changes were saved!");
            },
            error: function (reponse) {
                alert("UpdateContentByID error : " + reponse);
            }
        });

    }
    catch (e) {
        alert("UpdateContentByID error : " + e);
        //$("#WebSitePageZoneContent_iContentZoneID").html("error").show();
    }
}

function ViewFileManager() {
    try {
        var myWindow = window.open(window.location.protocol + "//" + window.location.host + "/" + "portal/home/FilesManager_List", "_blank", "toolbar=no, scrollbars=yes, resizable=yes, width=560, height=700, location=no,status=no,titlebar=no");
    }
    catch (e) {

    }
}

function ShowAddNewPageDialog()
{
    try {
        GetTemplates();
        Get_Languages();
        //$("#acmAddNewPGDialog").dialog("open");
        $("#acmAddNewPGDialog").modal('show');


    }
    catch (e) {
        alert(e);
    }
}

function CloseAddNewPageDialog() {
    try {

        $("#acmAddNewPGDialog").modal('hide');


    }
    catch (e) {
        alert(e);
    }
}

function FrontPageLogIn() {
    try {
        var txtUserName = document.getElementById("UserName");
        var txtPassword = document.getElementById("Password");


        var oValidated = true;

        if (txtUserName != null) {
            if ((!txtUserName.value) || (!txtUserName)) {
                txtUserName.style.backgroundColor = '#FFCCCC';
                oValidated = false;
            }
            else if (txtUserName.value == '') {
                txtUserName.style.backgroundColor = '#FFCCCC';
                oValidated = false;
            }
        }

        if (txtPassword != null) {
            if ((!txtPassword.value) || (!txtPassword)) {
                txtPassword.style.backgroundColor = '#FFCCCC';
                oValidated = false;
            }
            else if (txtPassword.value == '') {
                txtPassword.style.backgroundColor = '#FFCCCC';
                oValidated = false;
            }
        }

        if (oValidated == true) {
            document.getElementById('oFrontPageLongInForm_Button').style.display = 'none';
            document.getElementById('oFrontPageLongInForm_PleaseWaith').style.display = 'inline';

            var url = sBaseURL + "RestService/UserLogIn";
            var oMydata = { _UserName: txtUserName.value, _Password: txtPassword.value };


            $.ajax({
                url: url,
                data: oMydata,
                cache: false,
                type: "POST",
                success: function (data) {

                    if (data.RESPONSE == 'true') {
                        document.getElementById('oFrontPageLongInForm').style.display = 'none';
                        document.getElementById('oFrontPageLoggedInUserInfo').style.display = 'inline';
                        document.getElementById('oLogInFormPortalLink1').setAttribute('href', data.USERPORTAL);
                        //location.reload();
                    }
                    else {
                        alert("Log In error : " + data.MESSAGE);
                        document.getElementById('oFrontPageLongInForm_Button').style.display = 'inline';
                        document.getElementById('oFrontPageLongInForm_PleaseWaith').style.display = 'none';
                    }

                },
                error: function (reponse) {
                    alert("Log In error : " + reponse);
                }
            });
        }
        else {
            alert("Please check your log in info and try again!");
            document.getElementById('oFrontPageLongInForm_Button').style.display = 'inline';
            document.getElementById('oFrontPageLongInForm_PleaseWaith').style.display = 'none';

        }

    }
    catch (e) {
        alert(e);
    }
}

function SetUserIsLoggedIn(_PortalURL) {
    try {

        document.getElementById('oFrontPageLongInForm').style.display = 'none';
        document.getElementById('oFrontPageLoggedInUserInfo').style.display = 'inline';
        document.getElementById('oLogInFormPortalLink1').setAttribute('href', _PortalURL);
    }
    catch (e) {
    }
}


function EnableEditor() {
    try {
        //Properties for editor for inline editing
        //http://www.tinymce.com/wiki.php/API3:class.tinymce.Editor
        tinymce.init({
            selector: "div.editable",
            inline: true,
            force_br_newlines: false,
            force_p_newlines: false,
            forced_root_block: '',
            width: 650,
            height: 400,
            cleanup_on_startup: false,
            trim_span_elements: false,
            verify_html: false,
            cleanup: false,
            convert_urls: false,
            keep_styles: true,
            browser_spellcheck: true,
            plugins: ["advlist autolink lists link image charmap print preview anchor legacyoutput",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table contextmenu paste moxiemanager"],
            menubar: "edit insert format table tools",
            toolbar: "doneeditingpagebutton | aupdatecontentbutton | aupdatetempcontentbutton | aaddnewpagebutton | insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | showfilemanager",
            setup: function (ed) {
                // Add a custom button
                ed.addButton('aupdatecontentbutton', {
                    type: 'button',
                    title: 'Save',
                    text: 'Save Changes',
                    image: '../Themes/Save.png',
                    onclick: function () {
                        // Add you own code to execute something on click
                        UpdateContentByID(ed);
                    }
                });

                ed.addButton('aupdatetempcontentbutton', {
                    type: 'button',
                    title: 'Update Template',
                    text: 'Update Template',
                    image: '../Themes/Save.png',
                    onclick: function () {
                        // Add you own code to execute something on click
                        UpdateTemplateContentByID(ed);
                    }
                });
                ed.addButton('showfilemanager', {
                    type: 'button',
                    title: 'Files',
                    text: 'Show Files',
                    onclick: function () {
                        // Add you own code to execute something on click
                        ViewFileManager();
                    }
                });

                ed.addButton('aaddnewpagebutton', {
                    type: 'button',
                    title: 'Add New Page',
                    text: 'Add New Page',
                    image: '',
                    onclick: function () {
                        // Add you own code to execute something on click
                        ShowAddNewPageDialog();
                    }
                });

                ed.addButton('doneeditingpagebutton', {
                    type: 'button',
                    title: 'Done Editing',
                    text: 'Done Editing',
                    image: '',
                    onclick: function () {
                        // Add you own code to execute something on click
                        location.reload();
                    }
                });
            }

        });


        document.getElementById("dseditbutton").style.display = 'none';

    }
    catch (e) {

    }
}

function ShowLogIn() {
    try {
        $("#acmUserLogIn").dialog("show");

    }
    catch (e) {

    }
}

function CloseLogIn() {
    try {
        $("#acmUserLogIn").dialog("hide");

    }
    catch (e) {

    }
}


function ShowRegistration() {
    try {
        $("#acmUserRegistration").dialog("show");

    }
    catch (e) {
        alert(e);
    }
}

function CloseRegistration() {
    try {
        $("#acmUserRegistration").dialog("hide");

    }
    catch (e) {
        alert(e);
    }
}


function Validate_PopUserRegistrationForm() {
    try {
        var bResponse = true;
        var txt_osFName = document.getElementById('MainPage_txt_sFName');
        var txt_osLName = document.getElementById('MainPage_txt_sLName');
        var txt_oUserName = document.getElementById('MainPage_txt_sEMail');
        var txt_oPassword = document.getElementById('MainPage_txt_sPassword');
        var txt_oConfirmPassword = document.getElementById('MainPage_txt_sConfirmPassword');


        if (txt_osFName != null) {
            if ((!txt_osFName.value) || (!txt_osFName)) {
                txt_osFName.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
            else if (txt_osFName.value == '') {
                txt_osFName.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
        }

        if (txt_osLName != null) {
            if ((!txt_osLName.value) || (!txt_osLName)) {
                txt_osLName.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
            else if (txt_osLName.value == '') {
                txt_osLName.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
        }

        if (txt_oUserName != null) {
            if ((!txt_oUserName.value) || (!txt_oUserName)) {
                txt_oUserName.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
            else if (txt_oUserName.value == '') {
                txt_oUserName.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
        }


        if (txt_oPassword != null) {
            if ((!txt_oPassword.value) || (!txt_oPassword)) {
                txt_oPassword.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
            else if (txt_oPassword.value == '') {
                txt_oPassword.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
        }


        if (txt_oConfirmPassword != null) {
            if ((!txt_oConfirmPassword.value) || (!txt_oConfirmPassword)) {
                txt_oConfirmPassword.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
            else if (txt_oConfirmPassword.value == '') {
                txt_oConfirmPassword.style.backgroundColor = '#FFCCCC';
                bResponse = false;
            }
        }

        return bResponse;
    }
    catch (e) {
        return false;
    }
}
function Pop_UserRegister() {
    try {

        var oFullName = "";
        var oFirstName = "";
        var oLastName = "";
        var oUserName = "";
        var oPassword = "";
        var oConfirmPassword = "";
        var oEmail = "";
        var oPhone = "";

        var txt_osFName = document.getElementById('MainPage_txt_sFName');
        var txt_osLName = document.getElementById('MainPage_txt_sLName');
        var txt_oUserName = document.getElementById('MainPage_txt_sEMail');
        var txt_oPassword = document.getElementById('MainPage_txt_sPassword');
        var txt_oConfirmPassword = document.getElementById('MainPage_txt_sConfirmPassword');

        var lbl_oNewUserID = document.getElementById('NewUserID');


        oFirstName = txt_osFName.value;
        oLastName = txt_osLName.value;

        oFullName = oFirstName + " " + oLastName;

        oUserName = txt_oUserName.value;
        oEmail = txt_oUserName.value;
        oPassword = txt_oPassword.value;
        oConfirmPassword = txt_oConfirmPassword.value;


        var url = sBaseURL + "RestService/UserRegister/";

        var oMydata = { "_UserName": oUserName, "_Password": oPassword, "_ConfirmPassword": oConfirmPassword, "_FirstName": oFirstName, "_LastName": oLastName, "_Email": oEmail, "_Phone": oPhone, "_FullName": oFullName };

        $.ajax({
            type: 'POST',
            url: url,
            data: oMydata,
            dataType: "json",
            error: function (jqXHR, textStatus, errorThrown) {
                alert("Error: " + errorThrown);
                Hide_oMultiRegistrationStep1_Wait();
            },
            success: function (data) {

                if (data.RESPONSE == 'true') {
                    if (lbl_oNewUserID != null) {
                        lbl_oNewUserID.value = data.NEWUSERID;
                    }
                    Hide_PopUseroRegistration_Wait();
                    alert("Success you are now registered!")
                }
                else {
                    var oResponseText = document.getElementById('oRegResponseMessage');
                    oResponseText.innerHTML = data.MESSAGE;
                    Hide_PopUseroRegistration_Wait();
                }
            }
        });
    }
    catch (e) {
        alert(e);
    }
}

function Show_PopUseroRegistration_Wait() {
    try {
        var oDiv_oRegistration_Wai = document.getElementById("oUserRegistration_Wait");
        oDiv_oRegistration_Wai.style.display = 'inline';
    }
    catch (e) {
    }
}
function Hide_PopUseroRegistration_Wait() {
    try {
        var oDiv_oRegistration_Wai = document.getElementById("oUserRegistration_Wait");
        oDiv_oRegistration_Wai.style.display = 'none';
    }
    catch (e) {
    }
}

function Perform_MainPageRegistration() {
    Show_PopUseroRegistration_Wait();
    if (Validate_PopUserRegistrationForm()) {
        Pop_UserRegister();
    }
}



function SetScreen_LoggedInUser() {
    try {



        var oItemArra = document.getElementsByClassName("userloggedin");
        var elementArray = [].slice.call(oItemArra, 0);

        for (var i = 0; i < elementArray.length; ++i) {
            elementArray[i].className = elementArray[i].className.replace(/elementhidden/g, " ");
            elementArray[i].className = elementArray[i].className.replace("  ", "");
            elementArray[i].className += " elementvisible";
        }


        var oItemArra2 = document.getElementsByClassName("usernotloggedin");
        var elementArray2 = [].slice.call(oItemArra2, 0);

        for (var i = 0; i < elementArray2.length; ++i) {
            elementArray2[i].className = elementArray2[i].className.replace(/elementvisible/g, " ");
            elementArray2[i].className = elementArray2[i].className.replace("  ", "");
            elementArray2[i].className += " elementhidden";
        }
    }
    catch (e) {
    }
}
function SetScreen_LoggedOutUser() {
    try {
        //alert("SetScreen_LoggedOutUser");
        var oItemArra = document.getElementsByClassName("userloggedin");
        var elementArray = [].slice.call(oItemArra, 0);
        for (var i = 0; i < elementArray.length; ++i) {
            elementArray[i].className = elementArray[i].className.replace(/elementvisible/g, " ");
            elementArray[i].className = elementArray[i].className.replace("  ", "");
            elementArray[i].className += " elementhidden";
        }


        var oItemArra2 = document.getElementsByClassName("usernotloggedin");
        var elementArray2 = [].slice.call(oItemArra2, 0);
        for (var i = 0; i < elementArray2.length; ++i) {
            elementArray2[i].className = elementArray2[i].className.replace(/elementhidden/g, " ");
            elementArray2[i].className = elementArray2[i].className.replace("  ", "");
            elementArray2[i].className += " elementvisible";
        }
    }
    catch (e) {
    }
}
