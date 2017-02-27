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

function OpenSightMaxChatWindow() {
    try {
        var e = window.open("https://ecs.sightmaxondemand.com/SightMaxAgentInterface/PreChatSurvey.aspx?accountID=181&siteID=191&queueID=205&skipsurvey=false", "chatWindow","width=490,height=404,resizable=0,scrollbars=no,menubar=no,status=no");
    }
    catch (e) {
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
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '990' + ", height=" + '990';
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
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '990' + ", height=" + '990';
        window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}
function OpenWindowDefault_Size(sURL, sWindowName, sTitle, sWidth, sHeight) {
    try {
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + sWidth + ", height=" + sHeight;
        window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}
function OpenWindowDefault1(sURL) {
    try {
        var sWindowName = "TheSystem";
        var sTitle = "The System";
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '990' + ", height=" + '990';
        window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}

function OpenWindowDefault2(sURL, sWindowName, sTitle) {
    try {
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '990' + ", height=" + '990';
        return window.open(sURL, sWindowName, config = sConfigArg);
    }
    catch (e) {
    }
}
function OpenWindowDefault3(sURL) {
    try {
        var sWindowName = "TheSystem";
        var sTitle = "The System";
        var sConfigArg = "status=" + 'no' + ",scrollbars=" + 'yes' + ",resizable=" + 'yes' + ",toolbar=" + 'no' + ", location=" + 'no' + " directories=" + 'no' + ",width=" + '990' + ", height=" + '990';
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