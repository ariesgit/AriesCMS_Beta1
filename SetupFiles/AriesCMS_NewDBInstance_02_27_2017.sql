IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries')
    BEGIN
        PRINT N'Creating Table Countries';
        CREATE TABLE Countries
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             sControl nvarchar(max),
             sSyncControl nvarchar(max),
             sName nvarchar(max),
             sAbbreviation nvarchar(max),
             dTimeZoneOffSet float,
             sTimeZoneName nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
             sTaxRate nvarchar(max),
             dTaxRate float,
             bytTaxTable image,
             sCurrencyName nvarchar(max),
             sCurrentcySymbol nvarchar(max),
             dExchangeRateFromDollar float,
             sThreeAbbreviation nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table Countries';
              ALTER TABLE Countries ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dtDateUpdated')
            BEGIN        
              PRINT N'Adding Column dtDateUpdated to Table Countries';
              ALTER TABLE Countries ADD dtDateUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Countries';
              ALTER TABLE Countries ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sSyncControl')
            BEGIN        
              PRINT N'Adding Column sSyncControl to Table Countries';
              ALTER TABLE Countries ADD sSyncControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table Countries';
              ALTER TABLE Countries ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sAbbreviation')
            BEGIN        
              PRINT N'Adding Column sAbbreviation to Table Countries';
              ALTER TABLE Countries ADD sAbbreviation text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dTimeZoneOffSet')
            BEGIN        
              PRINT N'Adding Column dTimeZoneOffSet to Table Countries';
              ALTER TABLE Countries ADD dTimeZoneOffSet money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sTimeZoneName')
            BEGIN        
              PRINT N'Adding Column sTimeZoneName to Table Countries';
              ALTER TABLE Countries ADD sTimeZoneName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table Countries';
              ALTER TABLE Countries ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table Countries';
              ALTER TABLE Countries ADD sLanguageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sTaxRate')
            BEGIN        
              PRINT N'Adding Column sTaxRate to Table Countries';
              ALTER TABLE Countries ADD sTaxRate text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dTaxRate')
            BEGIN        
              PRINT N'Adding Column dTaxRate to Table Countries';
              ALTER TABLE Countries ADD dTaxRate money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'bytTaxTable')
            BEGIN        
              PRINT N'Adding Column bytTaxTable to Table Countries';
              ALTER TABLE Countries ADD bytTaxTable image;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sCurrencyName')
            BEGIN        
              PRINT N'Adding Column sCurrencyName to Table Countries';
              ALTER TABLE Countries ADD sCurrencyName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sCurrentcySymbol')
            BEGIN        
              PRINT N'Adding Column sCurrentcySymbol to Table Countries';
              ALTER TABLE Countries ADD sCurrentcySymbol text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dExchangeRateFromDollar')
            BEGIN        
              PRINT N'Adding Column dExchangeRateFromDollar to Table Countries';
              ALTER TABLE Countries ADD dExchangeRateFromDollar money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sThreeAbbreviation')
            BEGIN        
              PRINT N'Adding Column sThreeAbbreviation to Table Countries';
              ALTER TABLE Countries ADD sThreeAbbreviation text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages')
    BEGIN
        PRINT N'Creating Table CountryLanguages';
        CREATE TABLE CountryLanguages
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             sName nvarchar(max),
             sAbbreviation nvarchar(max),
             iCountryID Int,
             sCountryID nvarchar(max),
             sThreeAbbreviation nvarchar(max),
             sCultorInfoCode nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'dtDateUpdated')
            BEGIN        
              PRINT N'Adding Column dtDateUpdated to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD dtDateUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sAbbreviation')
            BEGIN        
              PRINT N'Adding Column sAbbreviation to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sAbbreviation text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sCountryID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sThreeAbbreviation')
            BEGIN        
              PRINT N'Adding Column sThreeAbbreviation to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sThreeAbbreviation text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sCultorInfoCode')
            BEGIN        
              PRINT N'Adding Column sCultorInfoCode to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sCultorInfoCode text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles')
    BEGIN
        PRINT N'Creating Table Roles';
        CREATE TABLE Roles
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDiscription nvarchar(max),
             sAccessKey nvarchar(max),
             dKey float,
             bIsDefaultForNewRegistration bit,
             sDefaultAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table Roles';
              ALTER TABLE Roles ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table Roles';
              ALTER TABLE Roles ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Roles';
              ALTER TABLE Roles ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table Roles';
              ALTER TABLE Roles ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table Roles';
              ALTER TABLE Roles ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table Roles';
              ALTER TABLE Roles ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table Roles';
              ALTER TABLE Roles ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table Roles';
              ALTER TABLE Roles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table Roles';
              ALTER TABLE Roles ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table Roles';
              ALTER TABLE Roles ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sDiscription')
            BEGIN        
              PRINT N'Adding Column sDiscription to Table Roles';
              ALTER TABLE Roles ADD sDiscription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table Roles';
              ALTER TABLE Roles ADD sAccessKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'dKey')
            BEGIN        
              PRINT N'Adding Column dKey to Table Roles';
              ALTER TABLE Roles ADD dKey money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'bIsDefaultForNewRegistration')
            BEGIN        
              PRINT N'Adding Column bIsDefaultForNewRegistration to Table Roles';
              ALTER TABLE Roles ADD bIsDefaultForNewRegistration bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sDefaultAccessLevel')
            BEGIN        
              PRINT N'Adding Column sDefaultAccessLevel to Table Roles';
              ALTER TABLE Roles ADD sDefaultAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access')
    BEGIN
        PRINT N'Creating Table Roles_Access';
        CREATE TABLE Roles_Access
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sIPAddress nvarchar(max),
             iUserID Int,
             sUserID nvarchar(max),
             bDenyAccess bit,
             bAllowAccess bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table Roles_Access';
              ALTER TABLE Roles_Access ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table Roles_Access';
              ALTER TABLE Roles_Access ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sIPAddress')
            BEGIN        
              PRINT N'Adding Column sIPAddress to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sIPAddress text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'bDenyAccess')
            BEGIN        
              PRINT N'Adding Column bDenyAccess to Table Roles_Access';
              ALTER TABLE Roles_Access ADD bDenyAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'bAllowAccess')
            BEGIN        
              PRINT N'Adding Column bAllowAccess to Table Roles_Access';
              ALTER TABLE Roles_Access ADD bAllowAccess bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States')
    BEGIN
        PRINT N'Creating Table States';
        CREATE TABLE States
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             sName nvarchar(max),
             sAbbreviation nvarchar(max),
             dTimeZoneOffSet float,
             sTimeZoneName nvarchar(max),
             iCountryID Int,
             sCountryID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table States';
              ALTER TABLE States ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table States';
              ALTER TABLE States ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'dtDateUpdated')
            BEGIN        
              PRINT N'Adding Column dtDateUpdated to Table States';
              ALTER TABLE States ADD dtDateUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table States';
              ALTER TABLE States ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sAbbreviation')
            BEGIN        
              PRINT N'Adding Column sAbbreviation to Table States';
              ALTER TABLE States ADD sAbbreviation text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'dTimeZoneOffSet')
            BEGIN        
              PRINT N'Adding Column dTimeZoneOffSet to Table States';
              ALTER TABLE States ADD dTimeZoneOffSet money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sTimeZoneName')
            BEGIN        
              PRINT N'Adding Column sTimeZoneName to Table States';
              ALTER TABLE States ADD sTimeZoneName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table States';
              ALTER TABLE States ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table States';
              ALTER TABLE States ADD sCountryID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster')
    BEGIN
        PRINT N'Creating Table SystemMaster';
        CREATE TABLE SystemMaster
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sAccessKey nvarchar(max),
             sLicKey nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table SystemMaster';
              ALTER TABLE SystemMaster ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table SystemMaster';
              ALTER TABLE SystemMaster ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table SystemMaster';
              ALTER TABLE SystemMaster ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table SystemMaster';
              ALTER TABLE SystemMaster ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sAccessKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sLicKey')
            BEGIN        
              PRINT N'Adding Column sLicKey to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sLicKey text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules')
    BEGIN
        PRINT N'Creating Table SystemModules';
        CREATE TABLE SystemModules
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sAccessKey nvarchar(max),
             dKey float,
             sPathURL nvarchar(max),
             sPathURI nvarchar(max),
             sAuthKey nvarchar(max),
             sLicKey nvarchar(max),
             sUserName nvarchar(max),
             sPassword nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table SystemModules';
              ALTER TABLE SystemModules ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table SystemModules';
              ALTER TABLE SystemModules ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table SystemModules';
              ALTER TABLE SystemModules ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table SystemModules';
              ALTER TABLE SystemModules ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table SystemModules';
              ALTER TABLE SystemModules ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table SystemModules';
              ALTER TABLE SystemModules ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table SystemModules';
              ALTER TABLE SystemModules ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table SystemModules';
              ALTER TABLE SystemModules ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table SystemModules';
              ALTER TABLE SystemModules ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table SystemModules';
              ALTER TABLE SystemModules ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table SystemModules';
              ALTER TABLE SystemModules ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table SystemModules';
              ALTER TABLE SystemModules ADD sAccessKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'dKey')
            BEGIN        
              PRINT N'Adding Column dKey to Table SystemModules';
              ALTER TABLE SystemModules ADD dKey money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sPathURL')
            BEGIN        
              PRINT N'Adding Column sPathURL to Table SystemModules';
              ALTER TABLE SystemModules ADD sPathURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sPathURI')
            BEGIN        
              PRINT N'Adding Column sPathURI to Table SystemModules';
              ALTER TABLE SystemModules ADD sPathURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sAuthKey')
            BEGIN        
              PRINT N'Adding Column sAuthKey to Table SystemModules';
              ALTER TABLE SystemModules ADD sAuthKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sLicKey')
            BEGIN        
              PRINT N'Adding Column sLicKey to Table SystemModules';
              ALTER TABLE SystemModules ADD sLicKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table SystemModules';
              ALTER TABLE SystemModules ADD sUserName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table SystemModules';
              ALTER TABLE SystemModules ADD sPassword text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles')
    BEGIN
        PRINT N'Creating Table UserRoles';
        CREATE TABLE UserRoles
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UserRoles';
              ALTER TABLE UserRoles ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UserRoles';
              ALTER TABLE UserRoles ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UserRoles';
              ALTER TABLE UserRoles ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UserRoles';
              ALTER TABLE UserRoles ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UserRoles';
              ALTER TABLE UserRoles ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UserRoles';
              ALTER TABLE UserRoles ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UserRoles';
              ALTER TABLE UserRoles ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UserRoles';
              ALTER TABLE UserRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UserRoles';
              ALTER TABLE UserRoles ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table UserRoles';
              ALTER TABLE UserRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table UserRoles';
              ALTER TABLE UserRoles ADD sRoleID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users')
    BEGIN
        PRINT N'Creating Table Users';
        CREATE TABLE Users
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sAccessKey nvarchar(max),
             sUserName nvarchar(max),
             sPassword nvarchar(max),
             sPrefix nvarchar(max),
             sFName nvarchar(max),
             sMName nvarchar(max),
             sLName nvarchar(max),
             bAccLocked bit,
             iPrimaryRole Int,
             sPrimaryRole nvarchar(max),
             sAvitarImgURL nvarchar(max),
             bCurrentlyLoggedIn bit,
             iReputationLevel Int,
             sKeyWords nvarchar(max),
             sScreenName nvarchar(max),
             sProfileDiscription nvarchar(max),
             iGenderTypeID Int,
             sGenderTypeID nvarchar(max),
             bPrivateProfile bit,
             dtDateOfBirth datetime,
             sActivationKey nvarchar(max),
             dtLastLoggedIn nvarchar(max),
             bAccountActivated bit,
             sAddress1 nvarchar(max),
             sAddress2 nvarchar(max),
             sAddress3 nvarchar(max),
             sCity nvarchar(max),
             iStateID Int,
             sStateID nvarchar(max),
             sPostalCode nvarchar(max),
             iCountryID Int,
             sCountryID nvarchar(max),
             sPrimaryEMail nvarchar(max),
             sPrimaryPhone nvarchar(max),
             bOptInMarketing bit,
             sBillAddress1 nvarchar(max),
             sBillAddress2 nvarchar(max),
             sBillAddress3 nvarchar(max),
             sBillCity nvarchar(max),
             iBillStateID Int,
             sBillStateID nvarchar(max),
             sBillPostalCode nvarchar(max),
             iBillCountryID Int,
             sBillCountryID nvarchar(max),
             IPAddressess nvarchar(max),
             bForceLogOut bit,
             sCurrentSession nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table Users';
              ALTER TABLE Users ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table Users';
              ALTER TABLE Users ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Users';
              ALTER TABLE Users ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table Users';
              ALTER TABLE Users ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table Users';
              ALTER TABLE Users ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table Users';
              ALTER TABLE Users ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table Users';
              ALTER TABLE Users ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table Users';
              ALTER TABLE Users ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table Users';
              ALTER TABLE Users ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table Users';
              ALTER TABLE Users ADD sAccessKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table Users';
              ALTER TABLE Users ADD sUserName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table Users';
              ALTER TABLE Users ADD sPassword text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrefix')
            BEGIN        
              PRINT N'Adding Column sPrefix to Table Users';
              ALTER TABLE Users ADD sPrefix text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table Users';
              ALTER TABLE Users ADD sFName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sMName')
            BEGIN        
              PRINT N'Adding Column sMName to Table Users';
              ALTER TABLE Users ADD sMName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table Users';
              ALTER TABLE Users ADD sLName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bAccLocked')
            BEGIN        
              PRINT N'Adding Column bAccLocked to Table Users';
              ALTER TABLE Users ADD bAccLocked bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iPrimaryRole')
            BEGIN        
              PRINT N'Adding Column iPrimaryRole to Table Users';
              ALTER TABLE Users ADD iPrimaryRole Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrimaryRole')
            BEGIN        
              PRINT N'Adding Column sPrimaryRole to Table Users';
              ALTER TABLE Users ADD sPrimaryRole text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sAvitarImgURL to Table Users';
              ALTER TABLE Users ADD sAvitarImgURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bCurrentlyLoggedIn')
            BEGIN        
              PRINT N'Adding Column bCurrentlyLoggedIn to Table Users';
              ALTER TABLE Users ADD bCurrentlyLoggedIn bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iReputationLevel')
            BEGIN        
              PRINT N'Adding Column iReputationLevel to Table Users';
              ALTER TABLE Users ADD iReputationLevel Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table Users';
              ALTER TABLE Users ADD sKeyWords text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sScreenName')
            BEGIN        
              PRINT N'Adding Column sScreenName to Table Users';
              ALTER TABLE Users ADD sScreenName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sProfileDiscription')
            BEGIN        
              PRINT N'Adding Column sProfileDiscription to Table Users';
              ALTER TABLE Users ADD sProfileDiscription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iGenderTypeID')
            BEGIN        
              PRINT N'Adding Column iGenderTypeID to Table Users';
              ALTER TABLE Users ADD iGenderTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sGenderTypeID')
            BEGIN        
              PRINT N'Adding Column sGenderTypeID to Table Users';
              ALTER TABLE Users ADD sGenderTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bPrivateProfile')
            BEGIN        
              PRINT N'Adding Column bPrivateProfile to Table Users';
              ALTER TABLE Users ADD bPrivateProfile bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'dtDateOfBirth')
            BEGIN        
              PRINT N'Adding Column dtDateOfBirth to Table Users';
              ALTER TABLE Users ADD dtDateOfBirth datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sActivationKey')
            BEGIN        
              PRINT N'Adding Column sActivationKey to Table Users';
              ALTER TABLE Users ADD sActivationKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'dtLastLoggedIn')
            BEGIN        
              PRINT N'Adding Column dtLastLoggedIn to Table Users';
              ALTER TABLE Users ADD dtLastLoggedIn text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bAccountActivated')
            BEGIN        
              PRINT N'Adding Column bAccountActivated to Table Users';
              ALTER TABLE Users ADD bAccountActivated bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAddress1')
            BEGIN        
              PRINT N'Adding Column sAddress1 to Table Users';
              ALTER TABLE Users ADD sAddress1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAddress2')
            BEGIN        
              PRINT N'Adding Column sAddress2 to Table Users';
              ALTER TABLE Users ADD sAddress2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAddress3')
            BEGIN        
              PRINT N'Adding Column sAddress3 to Table Users';
              ALTER TABLE Users ADD sAddress3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCity')
            BEGIN        
              PRINT N'Adding Column sCity to Table Users';
              ALTER TABLE Users ADD sCity text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iStateID')
            BEGIN        
              PRINT N'Adding Column iStateID to Table Users';
              ALTER TABLE Users ADD iStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sStateID')
            BEGIN        
              PRINT N'Adding Column sStateID to Table Users';
              ALTER TABLE Users ADD sStateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPostalCode')
            BEGIN        
              PRINT N'Adding Column sPostalCode to Table Users';
              ALTER TABLE Users ADD sPostalCode text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table Users';
              ALTER TABLE Users ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table Users';
              ALTER TABLE Users ADD sCountryID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrimaryEMail')
            BEGIN        
              PRINT N'Adding Column sPrimaryEMail to Table Users';
              ALTER TABLE Users ADD sPrimaryEMail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrimaryPhone')
            BEGIN        
              PRINT N'Adding Column sPrimaryPhone to Table Users';
              ALTER TABLE Users ADD sPrimaryPhone text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bOptInMarketing')
            BEGIN        
              PRINT N'Adding Column bOptInMarketing to Table Users';
              ALTER TABLE Users ADD bOptInMarketing bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillAddress1')
            BEGIN        
              PRINT N'Adding Column sBillAddress1 to Table Users';
              ALTER TABLE Users ADD sBillAddress1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillAddress2')
            BEGIN        
              PRINT N'Adding Column sBillAddress2 to Table Users';
              ALTER TABLE Users ADD sBillAddress2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillAddress3')
            BEGIN        
              PRINT N'Adding Column sBillAddress3 to Table Users';
              ALTER TABLE Users ADD sBillAddress3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillCity')
            BEGIN        
              PRINT N'Adding Column sBillCity to Table Users';
              ALTER TABLE Users ADD sBillCity text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iBillStateID')
            BEGIN        
              PRINT N'Adding Column iBillStateID to Table Users';
              ALTER TABLE Users ADD iBillStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillStateID')
            BEGIN        
              PRINT N'Adding Column sBillStateID to Table Users';
              ALTER TABLE Users ADD sBillStateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillPostalCode')
            BEGIN        
              PRINT N'Adding Column sBillPostalCode to Table Users';
              ALTER TABLE Users ADD sBillPostalCode text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iBillCountryID')
            BEGIN        
              PRINT N'Adding Column iBillCountryID to Table Users';
              ALTER TABLE Users ADD iBillCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillCountryID')
            BEGIN        
              PRINT N'Adding Column sBillCountryID to Table Users';
              ALTER TABLE Users ADD sBillCountryID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'IPAddressess')
            BEGIN        
              PRINT N'Adding Column IPAddressess to Table Users';
              ALTER TABLE Users ADD IPAddressess text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bForceLogOut')
            BEGIN        
              PRINT N'Adding Column bForceLogOut to Table Users';
              ALTER TABLE Users ADD bForceLogOut bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCurrentSession')
            BEGIN        
              PRINT N'Adding Column sCurrentSession to Table Users';
              ALTER TABLE Users ADD sCurrentSession text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth')
    BEGIN
        PRINT N'Creating Table UsersAltAuth';
        CREATE TABLE UsersAltAuth
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sAuthValue1 nvarchar(max),
             sAuthValue2 nvarchar(max),
             sAuthValue3 nvarchar(max),
             sAuthValue4 nvarchar(max),
             sAuthValue5 nvarchar(max),
             sAuthValue6 nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue1')
            BEGIN        
              PRINT N'Adding Column sAuthValue1 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue2')
            BEGIN        
              PRINT N'Adding Column sAuthValue2 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue3')
            BEGIN        
              PRINT N'Adding Column sAuthValue3 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue4')
            BEGIN        
              PRINT N'Adding Column sAuthValue4 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue4 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue5')
            BEGIN        
              PRINT N'Adding Column sAuthValue5 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue5 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue6')
            BEGIN        
              PRINT N'Adding Column sAuthValue6 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue6 text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats')
    BEGIN
        PRINT N'Creating Table UsersChats';
        CREATE TABLE UsersChats
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iEventTypeID Int,
             sEventTypeID nvarchar(max),
             sSubject nvarchar(max),
             sTitle nvarchar(max),
             sMessage nvarchar(max),
             sHTTPx nvarchar(max),
             sIP nvarchar(max),
             sOther nvarchar(max),
             iFromID Int,
             sFromID nvarchar(max),
             sCcID nvarchar(max),
             sCc nvarchar(max),
             sBCcID nvarchar(max),
             sBCc nvarchar(max),
             sAttachemnts nvarchar(max),
             iRelatedBlogID Int,
             sRelatedBlogID nvarchar(max),
             sRelatedPostsIDs nvarchar(max),
             sRelatedPosts nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersChats';
              ALTER TABLE UsersChats ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersChats';
              ALTER TABLE UsersChats ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersChats';
              ALTER TABLE UsersChats ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersChats';
              ALTER TABLE UsersChats ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersChats';
              ALTER TABLE UsersChats ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersChats';
              ALTER TABLE UsersChats ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersChats';
              ALTER TABLE UsersChats ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersChats';
              ALTER TABLE UsersChats ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersChats';
              ALTER TABLE UsersChats ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersChats';
              ALTER TABLE UsersChats ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersChats';
              ALTER TABLE UsersChats ADD sEventTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersChats';
              ALTER TABLE UsersChats ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersChats';
              ALTER TABLE UsersChats ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersChats';
              ALTER TABLE UsersChats ADD sMessage text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersChats';
              ALTER TABLE UsersChats ADD sHTTPx text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersChats';
              ALTER TABLE UsersChats ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersChats';
              ALTER TABLE UsersChats ADD sOther text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersChats';
              ALTER TABLE UsersChats ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersChats';
              ALTER TABLE UsersChats ADD sFromID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersChats';
              ALTER TABLE UsersChats ADD sCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersChats';
              ALTER TABLE UsersChats ADD sCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersChats';
              ALTER TABLE UsersChats ADD sBCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersChats';
              ALTER TABLE UsersChats ADD sBCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sAttachemnts')
            BEGIN        
              PRINT N'Adding Column sAttachemnts to Table UsersChats';
              ALTER TABLE UsersChats ADD sAttachemnts text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column iRelatedBlogID to Table UsersChats';
              ALTER TABLE UsersChats ADD iRelatedBlogID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column sRelatedBlogID to Table UsersChats';
              ALTER TABLE UsersChats ADD sRelatedBlogID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sRelatedPostsIDs')
            BEGIN        
              PRINT N'Adding Column sRelatedPostsIDs to Table UsersChats';
              ALTER TABLE UsersChats ADD sRelatedPostsIDs text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sRelatedPosts')
            BEGIN        
              PRINT N'Adding Column sRelatedPosts to Table UsersChats';
              ALTER TABLE UsersChats ADD sRelatedPosts text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs')
    BEGIN
        PRINT N'Creating Table UsersLogs';
        CREATE TABLE UsersLogs
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iEventTypeID Int,
             sEventTypeID nvarchar(max),
             sSubject nvarchar(max),
             sTitle nvarchar(max),
             sDescription nvarchar(max),
             sHTTPx nvarchar(max),
             sIP nvarchar(max),
             sOther nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersLogs';
              ALTER TABLE UsersLogs ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersLogs';
              ALTER TABLE UsersLogs ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sEventTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sHTTPx text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sOther text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages')
    BEGIN
        PRINT N'Creating Table UsersMessages';
        CREATE TABLE UsersMessages
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iEventTypeID Int,
             sEventTypeID nvarchar(max),
             sSubject nvarchar(max),
             sTitle nvarchar(max),
             sMessage nvarchar(max),
             sHTTPx nvarchar(max),
             sIP nvarchar(max),
             sOther nvarchar(max),
             iFromID Int,
             sFromID nvarchar(max),
             sCcID nvarchar(max),
             sCc nvarchar(max),
             sBCcID nvarchar(max),
             sBCc nvarchar(max),
             sAttachements nvarchar(max),
             sFromThumbNail nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersMessages';
              ALTER TABLE UsersMessages ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersMessages';
              ALTER TABLE UsersMessages ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sEventTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sMessage text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sHTTPx text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sOther text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sFromID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sBCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sBCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sAttachements')
            BEGIN        
              PRINT N'Adding Column sAttachements to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sAttachements text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sFromThumbNail')
            BEGIN        
              PRINT N'Adding Column sFromThumbNail to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sFromThumbNail text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts')
    BEGIN
        PRINT N'Creating Table UsersPosts';
        CREATE TABLE UsersPosts
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iEventTypeID Int,
             sEventTypeID nvarchar(max),
             sSubject nvarchar(max),
             sTitle nvarchar(max),
             sMessage nvarchar(max),
             sHTTPx nvarchar(max),
             sIP nvarchar(max),
             sOther nvarchar(max),
             iFromID Int,
             sFromID nvarchar(max),
             sCcID nvarchar(max),
             sCc nvarchar(max),
             sBCcID nvarchar(max),
             sBCc nvarchar(max),
             sAttachemnts nvarchar(max),
             iRelatedBlogID Int,
             sRelatedBlogID nvarchar(max),
             sRelatedPostsIDs nvarchar(max),
             sRelatedPosts nvarchar(max),
             iPrivacyTypeID Int,
             sPrivacyTypeID nvarchar(max),
             sFromThumbNail nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersPosts';
              ALTER TABLE UsersPosts ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersPosts';
              ALTER TABLE UsersPosts ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sEventTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sMessage text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sHTTPx text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sOther text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sFromID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sBCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sBCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sAttachemnts')
            BEGIN        
              PRINT N'Adding Column sAttachemnts to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sAttachemnts text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column iRelatedBlogID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iRelatedBlogID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column sRelatedBlogID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sRelatedBlogID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sRelatedPostsIDs')
            BEGIN        
              PRINT N'Adding Column sRelatedPostsIDs to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sRelatedPostsIDs text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sRelatedPosts')
            BEGIN        
              PRINT N'Adding Column sRelatedPosts to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sRelatedPosts text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iPrivacyTypeID')
            BEGIN        
              PRINT N'Adding Column iPrivacyTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iPrivacyTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sPrivacyTypeID')
            BEGIN        
              PRINT N'Adding Column sPrivacyTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sPrivacyTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sFromThumbNail')
            BEGIN        
              PRINT N'Adding Column sFromThumbNail to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sFromThumbNail text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties')
    BEGIN
        PRINT N'Creating Table UsersProperties';
        CREATE TABLE UsersProperties
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sFieldName nvarchar(max),
             sValue nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersProperties';
              ALTER TABLE UsersProperties ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersProperties';
              ALTER TABLE UsersProperties ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sFieldName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sValue text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite')
    BEGIN
        PRINT N'Creating Table WebSite';
        CREATE TABLE WebSite
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sAccesskey nvarchar(max),
             bSubScriptionBased bit,
             iRequiredRoleID Int,
             sRequiredRoleID nvarchar(max),
             iDefaultTemplateID Int,
             sDefaultTemplateID nvarchar(max),
             iDefaultBlogID Int,
             sDefaultBlogID nvarchar(max),
             sDefaultMetaTags nvarchar(max),
             sDefaultClassification nvarchar(max),
             sDefaultDescription nvarchar(max),
             sDefaultKeyWords nvarchar(max),
             sSupportEmail nvarchar(max),
             sWebMasterEmail nvarchar(max),
             dUniqueVisitors float,
             dVisits float,
             dPageViews float,
             bRestrictAccess bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSite';
              ALTER TABLE WebSite ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSite';
              ALTER TABLE WebSite ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSite';
              ALTER TABLE WebSite ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSite';
              ALTER TABLE WebSite ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSite';
              ALTER TABLE WebSite ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSite';
              ALTER TABLE WebSite ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSite';
              ALTER TABLE WebSite ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSite';
              ALTER TABLE WebSite ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSite';
              ALTER TABLE WebSite ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSite';
              ALTER TABLE WebSite ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sAccesskey')
            BEGIN        
              PRINT N'Adding Column sAccesskey to Table WebSite';
              ALTER TABLE WebSite ADD sAccesskey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'bSubScriptionBased')
            BEGIN        
              PRINT N'Adding Column bSubScriptionBased to Table WebSite';
              ALTER TABLE WebSite ADD bSubScriptionBased bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iRequiredRoleID')
            BEGIN        
              PRINT N'Adding Column iRequiredRoleID to Table WebSite';
              ALTER TABLE WebSite ADD iRequiredRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sRequiredRoleID')
            BEGIN        
              PRINT N'Adding Column sRequiredRoleID to Table WebSite';
              ALTER TABLE WebSite ADD sRequiredRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iDefaultTemplateID')
            BEGIN        
              PRINT N'Adding Column iDefaultTemplateID to Table WebSite';
              ALTER TABLE WebSite ADD iDefaultTemplateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultTemplateID')
            BEGIN        
              PRINT N'Adding Column sDefaultTemplateID to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultTemplateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iDefaultBlogID')
            BEGIN        
              PRINT N'Adding Column iDefaultBlogID to Table WebSite';
              ALTER TABLE WebSite ADD iDefaultBlogID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultBlogID')
            BEGIN        
              PRINT N'Adding Column sDefaultBlogID to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultBlogID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultMetaTags')
            BEGIN        
              PRINT N'Adding Column sDefaultMetaTags to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultMetaTags text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultClassification')
            BEGIN        
              PRINT N'Adding Column sDefaultClassification to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultClassification text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultDescription')
            BEGIN        
              PRINT N'Adding Column sDefaultDescription to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultKeyWords')
            BEGIN        
              PRINT N'Adding Column sDefaultKeyWords to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultKeyWords text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sSupportEmail')
            BEGIN        
              PRINT N'Adding Column sSupportEmail to Table WebSite';
              ALTER TABLE WebSite ADD sSupportEmail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sWebMasterEmail')
            BEGIN        
              PRINT N'Adding Column sWebMasterEmail to Table WebSite';
              ALTER TABLE WebSite ADD sWebMasterEmail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dUniqueVisitors')
            BEGIN        
              PRINT N'Adding Column dUniqueVisitors to Table WebSite';
              ALTER TABLE WebSite ADD dUniqueVisitors money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dVisits')
            BEGIN        
              PRINT N'Adding Column dVisits to Table WebSite';
              ALTER TABLE WebSite ADD dVisits money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dPageViews')
            BEGIN        
              PRINT N'Adding Column dPageViews to Table WebSite';
              ALTER TABLE WebSite ADD dPageViews money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSite';
              ALTER TABLE WebSite ADD bRestrictAccess bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog')
    BEGIN
        PRINT N'Creating Table WebSiteBlog';
        CREATE TABLE WebSiteBlog
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sTitle nvarchar(max),
             sSubject nvarchar(max),
             sDescription nvarchar(max),
             iPrimaryContributorID Int,
             sPrimaryContributorID nvarchar(max),
             sKeyWords nvarchar(max),
             iAltContributorID Int,
             sAltContributorID nvarchar(max),
             bRestrictAccess bit,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(max),
             sSiteTemplateURI nvarchar(max),
             sSiteTempalteURL nvarchar(max),
             sLoadIncludeURI nvarchar(max),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(max),
             iSiteTemplatePageID Int,
             sSiteTemplatePageID nvarchar(max),
             dCommentCount float,
             iAdScheduleID Int,
             sAdScheduleID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iPrimaryContributorID')
            BEGIN        
              PRINT N'Adding Column iPrimaryContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iPrimaryContributorID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sPrimaryContributorID')
            BEGIN        
              PRINT N'Adding Column sPrimaryContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sPrimaryContributorID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sKeyWords text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iAltContributorID')
            BEGIN        
              PRINT N'Adding Column iAltContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iAltContributorID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sAltContributorID')
            BEGIN        
              PRINT N'Adding Column sAltContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sAltContributorID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplateID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iSiteTemplateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTemplateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTemplateURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTempalteURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sLoadIncludeURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplatePageID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iSiteTemplatePageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplatePageID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTemplatePageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'dCommentCount')
            BEGIN        
              PRINT N'Adding Column dCommentCount to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD dCommentCount money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iAdScheduleID')
            BEGIN        
              PRINT N'Adding Column iAdScheduleID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iAdScheduleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sAdScheduleID')
            BEGIN        
              PRINT N'Adding Column sAdScheduleID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sAdScheduleID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments')
    BEGIN
        PRINT N'Creating Table WebSiteBlogComments';
        CREATE TABLE WebSiteBlogComments
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iParentCommentID Int,
             sParentCommentID nvarchar(max),
             sComment nvarchar(max),
             bRestrictAccess bit,
             iUserID Int,
             sUserID nvarchar(max),
             sUserThumbNail nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iParentCommentID')
            BEGIN        
              PRINT N'Adding Column iParentCommentID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iParentCommentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sParentCommentID')
            BEGIN        
              PRINT N'Adding Column sParentCommentID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sParentCommentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sComment')
            BEGIN        
              PRINT N'Adding Column sComment to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sComment text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sUserThumbNail text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties')
    BEGIN
        PRINT N'Creating Table WebSiteBlogCommentsProperties';
        CREATE TABLE WebSiteBlogCommentsProperties
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sFieldName nvarchar(max),
             sValue nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sFieldName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sValue text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry')
    BEGIN
        PRINT N'Creating Table WebSiteBlogEntry';
        CREATE TABLE WebSiteBlogEntry
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sTitle nvarchar(max),
             sSubject nvarchar(max),
             sKeyWords nvarchar(max),
             sContent nvarchar(max),
             bOpenToComments bit,
             bMustBeLoggedInToComment bit,
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             bRestrictAccess bit,
             bArchived bit,
             iLanguageID Int,
             sLanguageID nvarchar(max),
             sImageURL nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sKeyWords text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'bOpenToComments')
            BEGIN        
              PRINT N'Adding Column bOpenToComments to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD bOpenToComments bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'bMustBeLoggedInToComment')
            BEGIN        
              PRINT N'Adding Column bMustBeLoggedInToComment to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD bMustBeLoggedInToComment bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'bIsLive')
            BEGIN        
              PRINT N'Adding Column bIsLive to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD bIsLive bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'dtStart')
            BEGIN        
              PRINT N'Adding Column dtStart to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD dtStart datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'dtEnd')
            BEGIN        
              PRINT N'Adding Column dtEnd to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD dtEnd datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'bArchived')
            BEGIN        
              PRINT N'Adding Column bArchived to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD bArchived bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sLanguageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sImageURL text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties')
    BEGIN
        PRINT N'Creating Table WebSiteBlogEntryProperties';
        CREATE TABLE WebSiteBlogEntryProperties
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sFieldName nvarchar(max),
             sValue nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sFieldName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sValue text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole')
    BEGIN
        PRINT N'Creating Table WebSiteBlogEntryRole';
        CREATE TABLE WebSiteBlogEntryRole
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
             sAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties')
    BEGIN
        PRINT N'Creating Table WebSiteBlogProperties';
        CREATE TABLE WebSiteBlogProperties
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sFieldName nvarchar(max),
             sValue nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sFieldName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sValue text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles')
    BEGIN
        PRINT N'Creating Table WebSiteBlogRoles';
        CREATE TABLE WebSiteBlogRoles
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
             sAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents')
    BEGIN
        PRINT N'Creating Table WebSiteEvents';
        CREATE TABLE WebSiteEvents
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             sEvent nvarchar(max),
             sLog nvarchar(max),
             sNotes nvarchar(max),
             sCookieID nvarchar(max),
             sIP nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sEvent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sLog text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sNotes text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sCookieID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sIP text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings')
    BEGIN
        PRINT N'Creating Table WebSiteExtAppIntegrationSettings';
        CREATE TABLE WebSiteExtAppIntegrationSettings
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iLinkTypeID Int,
             sLinkTypeID nvarchar(max),
             sApplicationKey nvarchar(max),
             sAuthorizatinKey nvarchar(max),
             sUserName nvarchar(max),
             sPassword nvarchar(max),
             sOrganizationName nvarchar(max),
             sKeyValue1 nvarchar(max),
             sKeyValue2 nvarchar(max),
             sKeyValue3 nvarchar(max),
             sKeyValue4 nvarchar(max),
             sKeyValue5 nvarchar(max),
             sKeyValue6 nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'iLinkTypeID')
            BEGIN        
              PRINT N'Adding Column iLinkTypeID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD iLinkTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sLinkTypeID')
            BEGIN        
              PRINT N'Adding Column sLinkTypeID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sLinkTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sApplicationKey')
            BEGIN        
              PRINT N'Adding Column sApplicationKey to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sApplicationKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sAuthorizatinKey')
            BEGIN        
              PRINT N'Adding Column sAuthorizatinKey to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sAuthorizatinKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sUserName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sPassword text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sOrganizationName')
            BEGIN        
              PRINT N'Adding Column sOrganizationName to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sOrganizationName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue1')
            BEGIN        
              PRINT N'Adding Column sKeyValue1 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue2')
            BEGIN        
              PRINT N'Adding Column sKeyValue2 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue3')
            BEGIN        
              PRINT N'Adding Column sKeyValue3 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue4')
            BEGIN        
              PRINT N'Adding Column sKeyValue4 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue4 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue5')
            BEGIN        
              PRINT N'Adding Column sKeyValue5 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue5 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue6')
            BEGIN        
              PRINT N'Adding Column sKeyValue6 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue6 text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters')
    BEGIN
        PRINT N'Creating Table WebSiteIPFilters';
        CREATE TABLE WebSiteIPFilters
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sIP nvarchar(max),
             bRestrict nvarchar(max),
             bBlock nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             iUserID Int,
             sUserID nvarchar(max),
             sRestrictFrom nvarchar(max),
             sRestrictTo nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'bRestrict')
            BEGIN        
              PRINT N'Adding Column bRestrict to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD bRestrict text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'bBlock')
            BEGIN        
              PRINT N'Adding Column bBlock to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD bBlock text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sRestrictFrom')
            BEGIN        
              PRINT N'Adding Column sRestrictFrom to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sRestrictFrom text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sRestrictTo')
            BEGIN        
              PRINT N'Adding Column sRestrictTo to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sRestrictTo text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sRoleID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules')
    BEGIN
        PRINT N'Creating Table WebSiteModules';
        CREATE TABLE WebSiteModules
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sPath nvarchar(max),
             sPathURL nvarchar(max),
             sPathURI nvarchar(max),
             sAuthKey nvarchar(max),
             sLicKey nvarchar(max),
             sUserName nvarchar(max),
             sPassword nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPath')
            BEGIN        
              PRINT N'Adding Column sPath to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPath text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPathURL')
            BEGIN        
              PRINT N'Adding Column sPathURL to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPathURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPathURI')
            BEGIN        
              PRINT N'Adding Column sPathURI to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPathURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sAuthKey')
            BEGIN        
              PRINT N'Adding Column sAuthKey to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sAuthKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sLicKey')
            BEGIN        
              PRINT N'Adding Column sLicKey to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sLicKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sUserName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPassword text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation')
    BEGIN
        PRINT N'Creating Table WebSiteNavigation';
        CREATE TABLE WebSiteNavigation
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sDisplayName nvarchar(max),
             iPageID Int,
             sPageID nvarchar(max),
             sNavigationIdentifyer nvarchar(max),
             iNavigationTypeID Int,
             sNavigationTypeID nvarchar(max),
             iParentNavID Int,
             sParentNavID nvarchar(max),
             sCustomPrefix nvarchar(max),
             sCustomSuffix nvarchar(max),
             sCustomAttributes nvarchar(max),
             iDisplayIndex Int,
             bHidden bit,
             bDisabled bit,
             bRestrictAccess bit,
             iScreenID Int,
             sScreenID nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
             sImageSmallURL nvarchar(max),
             sImageLargeURL nvarchar(max),
             sPagePreviewSmallURL nvarchar(max),
             sPagePreviewLargeURL nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sDisplayName')
            BEGIN        
              PRINT N'Adding Column sDisplayName to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sDisplayName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iPageID')
            BEGIN        
              PRINT N'Adding Column iPageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iPageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sPageID')
            BEGIN        
              PRINT N'Adding Column sPageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sPageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sNavigationIdentifyer')
            BEGIN        
              PRINT N'Adding Column sNavigationIdentifyer to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sNavigationIdentifyer text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iNavigationTypeID')
            BEGIN        
              PRINT N'Adding Column iNavigationTypeID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iNavigationTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sNavigationTypeID')
            BEGIN        
              PRINT N'Adding Column sNavigationTypeID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sNavigationTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iParentNavID')
            BEGIN        
              PRINT N'Adding Column iParentNavID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iParentNavID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sParentNavID')
            BEGIN        
              PRINT N'Adding Column sParentNavID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sParentNavID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCustomPrefix')
            BEGIN        
              PRINT N'Adding Column sCustomPrefix to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCustomPrefix text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCustomSuffix')
            BEGIN        
              PRINT N'Adding Column sCustomSuffix to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCustomSuffix text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCustomAttributes')
            BEGIN        
              PRINT N'Adding Column sCustomAttributes to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCustomAttributes text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iDisplayIndex')
            BEGIN        
              PRINT N'Adding Column iDisplayIndex to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iDisplayIndex Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iScreenID')
            BEGIN        
              PRINT N'Adding Column iScreenID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iScreenID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sScreenID')
            BEGIN        
              PRINT N'Adding Column sScreenID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sScreenID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sLanguageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sImageSmallURL')
            BEGIN        
              PRINT N'Adding Column sImageSmallURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sImageSmallURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sImageLargeURL')
            BEGIN        
              PRINT N'Adding Column sImageLargeURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sImageLargeURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sPagePreviewSmallURL')
            BEGIN        
              PRINT N'Adding Column sPagePreviewSmallURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sPagePreviewSmallURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sPagePreviewLargeURL')
            BEGIN        
              PRINT N'Adding Column sPagePreviewLargeURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sPagePreviewLargeURL text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles')
    BEGIN
        PRINT N'Creating Table WebSiteNavigationRoles';
        CREATE TABLE WebSiteNavigationRoles
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
             sAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage')
    BEGIN
        PRINT N'Creating Table WebSitePage';
        CREATE TABLE WebSitePage
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sPageName nvarchar(max),
             sPageNavigationName nvarchar(max),
             sPageNavigationURL nvarchar(max),
             sPageTitle nvarchar(max),
             sMetaTags nvarchar(max),
             sClassification nvarchar(max),
             sPageDescription nvarchar(max),
             sKeyWords nvarchar(max),
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(max),
             sSiteTemplateURI nvarchar(max),
             sSiteTempalteURL nvarchar(max),
             sLoadIncludeURI nvarchar(max),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(max),
             bRestrictAccess bit,
             iLanguageID Int,
             sLanguageID nvarchar(max),
             iSiteTemplatePageID Int,
             sSiteTemplatePageID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePage';
              ALTER TABLE WebSitePage ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePage';
              ALTER TABLE WebSitePage ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageName')
            BEGIN        
              PRINT N'Adding Column sPageName to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageNavigationName')
            BEGIN        
              PRINT N'Adding Column sPageNavigationName to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageNavigationName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageNavigationURL')
            BEGIN        
              PRINT N'Adding Column sPageNavigationURL to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageNavigationURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageTitle')
            BEGIN        
              PRINT N'Adding Column sPageTitle to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sMetaTags')
            BEGIN        
              PRINT N'Adding Column sMetaTags to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sMetaTags text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sClassification')
            BEGIN        
              PRINT N'Adding Column sClassification to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sClassification text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageDescription')
            BEGIN        
              PRINT N'Adding Column sPageDescription to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sKeyWords text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'bIsLive')
            BEGIN        
              PRINT N'Adding Column bIsLive to Table WebSitePage';
              ALTER TABLE WebSitePage ADD bIsLive bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'dtStart')
            BEGIN        
              PRINT N'Adding Column dtStart to Table WebSitePage';
              ALTER TABLE WebSitePage ADD dtStart datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'dtEnd')
            BEGIN        
              PRINT N'Adding Column dtEnd to Table WebSitePage';
              ALTER TABLE WebSitePage ADD dtEnd datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplateID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iSiteTemplateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTemplateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTemplateURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTempalteURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sLoadIncludeURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSitePage';
              ALTER TABLE WebSitePage ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSitePage';
              ALTER TABLE WebSitePage ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sLanguageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplatePageID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iSiteTemplatePageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplatePageID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTemplatePageID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties')
    BEGIN
        PRINT N'Creating Table WebSitePageProperties';
        CREATE TABLE WebSitePageProperties
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sFieldName nvarchar(max),
             sValue nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sFieldName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sValue text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles')
    BEGIN
        PRINT N'Creating Table WebSitePageRoles';
        CREATE TABLE WebSitePageRoles
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
             sAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplates';
        CREATE TABLE WebSitePageTemplates
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sThumbNailImageURL nvarchar(max),
             sVersion nvarchar(max),
             sLocationURL nvarchar(max),
             sLocationURI nvarchar(max),
             sTemplateBody nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sThumbNailImageURL')
            BEGIN        
              PRINT N'Adding Column sThumbNailImageURL to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sThumbNailImageURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sLocationURL')
            BEGIN        
              PRINT N'Adding Column sLocationURL to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sLocationURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sLocationURI')
            BEGIN        
              PRINT N'Adding Column sLocationURI to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sLocationURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sTemplateBody')
            BEGIN        
              PRINT N'Adding Column sTemplateBody to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sTemplateBody text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sLanguageID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplatesPage';
        CREATE TABLE WebSitePageTemplatesPage
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sThumbNailImageURL nvarchar(max),
             sVersion nvarchar(max),
             sTemplateBody nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sThumbNailImageURL')
            BEGIN        
              PRINT N'Adding Column sThumbNailImageURL to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sThumbNailImageURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sTemplateBody')
            BEGIN        
              PRINT N'Adding Column sTemplateBody to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sTemplateBody text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sLanguageID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplateZones';
        CREATE TABLE WebSitePageTemplateZones
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             sCodeName nvarchar(max),
             sDefaultValue nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
             bPrimaryContentArea bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sCodeName')
            BEGIN        
              PRINT N'Adding Column sCodeName to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sCodeName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sDefaultValue')
            BEGIN        
              PRINT N'Adding Column sDefaultValue to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sDefaultValue text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sLanguageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'bPrimaryContentArea')
            BEGIN        
              PRINT N'Adding Column bPrimaryContentArea to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD bPrimaryContentArea bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplateZonesContent';
        CREATE TABLE WebSitePageTemplateZonesContent
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             sCodeName nvarchar(max),
             sDefaultValue nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
             iContentZoneID Int,
             sContentZoneID nvarchar(max),
             bPrimaryContentArea bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sCodeName')
            BEGIN        
              PRINT N'Adding Column sCodeName to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sCodeName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sDefaultValue')
            BEGIN        
              PRINT N'Adding Column sDefaultValue to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sDefaultValue text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sLanguageID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iContentZoneID')
            BEGIN        
              PRINT N'Adding Column iContentZoneID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iContentZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sContentZoneID')
            BEGIN        
              PRINT N'Adding Column sContentZoneID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sContentZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'bPrimaryContentArea')
            BEGIN        
              PRINT N'Adding Column bPrimaryContentArea to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD bPrimaryContentArea bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone')
    BEGIN
        PRINT N'Creating Table WebSitePageZone';
        CREATE TABLE WebSitePageZone
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iZoneID Int,
             sZoneID nvarchar(max),
             sName nvarchar(max),
             sContent nvarchar(max),
             sLoadIncludeURI nvarchar(max),
             bLoadPartialPage bit,
             iLanguageID Int,
             sLanguageID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sLoadIncludeURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sLanguageID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent')
    BEGIN
        PRINT N'Creating Table WebSitePageZoneContent';
        CREATE TABLE WebSitePageZoneContent
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iZoneID Int,
             sZoneID nvarchar(max),
             sName nvarchar(max),
             sContent nvarchar(max),
             sLoadIncludeURI nvarchar(max),
             bLoadPartialPage bit,
             iContentZoneID Int,
             sContentZoneID nvarchar(max),
             iLanguageID Int,
             sLanguageID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sLoadIncludeURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iContentZoneID')
            BEGIN        
              PRINT N'Adding Column iContentZoneID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iContentZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sContentZoneID')
            BEGIN        
              PRINT N'Adding Column sContentZoneID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sContentZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sLanguageID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties')
    BEGIN
        PRINT N'Creating Table WebSiteProperties';
        CREATE TABLE WebSiteProperties
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sFieldName nvarchar(max),
             sValue nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sFieldName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sValue text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole')
    BEGIN
        PRINT N'Creating Table WebSiteRole';
        CREATE TABLE WebSiteRole
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
             sAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen')
    BEGIN
        PRINT N'Creating Table WebSiteScreen';
        CREATE TABLE WebSiteScreen
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sScreenName nvarchar(max),
             sScreenNavigationName nvarchar(max),
             sScreenNavigationURL nvarchar(max),
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(max),
             sSiteTemplateURI nvarchar(max),
             sSiteTempalteURL nvarchar(max),
             sScreenLoadIncludeURI nvarchar(max),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(max),
             bRestrictAccess bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenName')
            BEGIN        
              PRINT N'Adding Column sScreenName to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenNavigationName')
            BEGIN        
              PRINT N'Adding Column sScreenNavigationName to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenNavigationName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenNavigationURL')
            BEGIN        
              PRINT N'Adding Column sScreenNavigationURL to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenNavigationURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'bIsLive')
            BEGIN        
              PRINT N'Adding Column bIsLive to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD bIsLive bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'dtStart')
            BEGIN        
              PRINT N'Adding Column dtStart to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD dtStart datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'dtEnd')
            BEGIN        
              PRINT N'Adding Column dtEnd to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD dtEnd datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'iSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplateID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD iSiteTemplateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sSiteTemplateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sSiteTemplateURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sSiteTempalteURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sScreenLoadIncludeURI to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenLoadIncludeURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sZoneID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD bRestrictAccess bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles')
    BEGIN
        PRINT N'Creating Table WebSiteScreenRoles';
        CREATE TABLE WebSiteScreenRoles
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iRoleID Int,
             sRoleID nvarchar(max),
             sAccessLevel nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sRoleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sAccessLevel text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads')
    BEGIN
        PRINT N'Creating Table WebSite_Leads';
        CREATE TABLE WebSite_Leads
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sAccessKey nvarchar(max),
             sPrefix nvarchar(max),
             sFName nvarchar(max),
             sMName nvarchar(max),
             sLName nvarchar(max),
             bAccLocked bit,
             iPrimaryRole Int,
             sPrimaryRole nvarchar(max),
             sAvitarImgURL nvarchar(max),
             bCurrentlyLoggedIn bit,
             iReputationLevel Int,
             sKeyWords nvarchar(max),
             sScreenName nvarchar(max),
             sProfileDiscription nvarchar(max),
             iGenderTypeID Int,
             sGenderTypeID nvarchar(max),
             bPrivateProfile bit,
             dtDateOfBirth datetime,
             sActivationKey nvarchar(max),
             dtLastLoggedIn nvarchar(max),
             bAccountActivated bit,
             sAddress1 nvarchar(max),
             sAddress2 nvarchar(max),
             sAddress3 nvarchar(max),
             sCity nvarchar(max),
             iStateID Int,
             sStateID nvarchar(max),
             sPostalCode nvarchar(max),
             iCountryID Int,
             sCountryID nvarchar(max),
             sPrimaryEMail nvarchar(max),
             sPrimaryPhone nvarchar(max),
             bOptInMarketing bit,
             sBillAddress1 nvarchar(max),
             sBillAddress2 nvarchar(max),
             sBillAddress3 nvarchar(max),
             sBillCity nvarchar(max),
             iBillStateID Int,
             sBillStateID nvarchar(max),
             sBillPostalCode nvarchar(max),
             iBillCountryID Int,
             sBillCountryID nvarchar(max),
             IPAddressess nvarchar(max),
             bForceLogOut bit,
             sCurrentSession nvarchar(max),
             sCookieID nvarchar(max),
             sIP nvarchar(max),
             iRefferedByID Int,
             sRefferedByID nvarchar(max),
             sRefferealCode1 nvarchar(max),
             sRefferealCode2 nvarchar(max),
             sRefferealCode3 nvarchar(max),
             iUserID Int,
             sUserID nvarchar(max),
             sCompanyName nvarchar(max),
             sCompanyURL nvarchar(max),
             sCompanyTitle nvarchar(max),
             sEventLog nvarchar(max),
             sNotes nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAccessKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrefix')
            BEGIN        
              PRINT N'Adding Column sPrefix to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrefix text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sFName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sMName')
            BEGIN        
              PRINT N'Adding Column sMName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sMName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sLName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bAccLocked')
            BEGIN        
              PRINT N'Adding Column bAccLocked to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bAccLocked bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iPrimaryRole')
            BEGIN        
              PRINT N'Adding Column iPrimaryRole to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iPrimaryRole Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrimaryRole')
            BEGIN        
              PRINT N'Adding Column sPrimaryRole to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrimaryRole text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sAvitarImgURL to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAvitarImgURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bCurrentlyLoggedIn')
            BEGIN        
              PRINT N'Adding Column bCurrentlyLoggedIn to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bCurrentlyLoggedIn bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iReputationLevel')
            BEGIN        
              PRINT N'Adding Column iReputationLevel to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iReputationLevel Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sKeyWords text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sScreenName')
            BEGIN        
              PRINT N'Adding Column sScreenName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sScreenName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sProfileDiscription')
            BEGIN        
              PRINT N'Adding Column sProfileDiscription to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sProfileDiscription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iGenderTypeID')
            BEGIN        
              PRINT N'Adding Column iGenderTypeID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iGenderTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sGenderTypeID')
            BEGIN        
              PRINT N'Adding Column sGenderTypeID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sGenderTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bPrivateProfile')
            BEGIN        
              PRINT N'Adding Column bPrivateProfile to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bPrivateProfile bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'dtDateOfBirth')
            BEGIN        
              PRINT N'Adding Column dtDateOfBirth to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD dtDateOfBirth datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sActivationKey')
            BEGIN        
              PRINT N'Adding Column sActivationKey to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sActivationKey text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'dtLastLoggedIn')
            BEGIN        
              PRINT N'Adding Column dtLastLoggedIn to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD dtLastLoggedIn text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bAccountActivated')
            BEGIN        
              PRINT N'Adding Column bAccountActivated to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bAccountActivated bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAddress1')
            BEGIN        
              PRINT N'Adding Column sAddress1 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAddress1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAddress2')
            BEGIN        
              PRINT N'Adding Column sAddress2 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAddress2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAddress3')
            BEGIN        
              PRINT N'Adding Column sAddress3 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAddress3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCity')
            BEGIN        
              PRINT N'Adding Column sCity to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCity text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iStateID')
            BEGIN        
              PRINT N'Adding Column iStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sStateID')
            BEGIN        
              PRINT N'Adding Column sStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sStateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPostalCode')
            BEGIN        
              PRINT N'Adding Column sPostalCode to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPostalCode text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCountryID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrimaryEMail')
            BEGIN        
              PRINT N'Adding Column sPrimaryEMail to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrimaryEMail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrimaryPhone')
            BEGIN        
              PRINT N'Adding Column sPrimaryPhone to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrimaryPhone text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bOptInMarketing')
            BEGIN        
              PRINT N'Adding Column bOptInMarketing to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bOptInMarketing bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillAddress1')
            BEGIN        
              PRINT N'Adding Column sBillAddress1 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillAddress1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillAddress2')
            BEGIN        
              PRINT N'Adding Column sBillAddress2 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillAddress2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillAddress3')
            BEGIN        
              PRINT N'Adding Column sBillAddress3 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillAddress3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillCity')
            BEGIN        
              PRINT N'Adding Column sBillCity to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillCity text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iBillStateID')
            BEGIN        
              PRINT N'Adding Column iBillStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iBillStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillStateID')
            BEGIN        
              PRINT N'Adding Column sBillStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillStateID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillPostalCode')
            BEGIN        
              PRINT N'Adding Column sBillPostalCode to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillPostalCode text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iBillCountryID')
            BEGIN        
              PRINT N'Adding Column iBillCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iBillCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillCountryID')
            BEGIN        
              PRINT N'Adding Column sBillCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillCountryID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'IPAddressess')
            BEGIN        
              PRINT N'Adding Column IPAddressess to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD IPAddressess text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bForceLogOut')
            BEGIN        
              PRINT N'Adding Column bForceLogOut to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bForceLogOut bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCurrentSession')
            BEGIN        
              PRINT N'Adding Column sCurrentSession to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCurrentSession text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCookieID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iRefferedByID')
            BEGIN        
              PRINT N'Adding Column iRefferedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iRefferedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferedByID')
            BEGIN        
              PRINT N'Adding Column sRefferedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferealCode1')
            BEGIN        
              PRINT N'Adding Column sRefferealCode1 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferealCode1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferealCode2')
            BEGIN        
              PRINT N'Adding Column sRefferealCode2 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferealCode2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferealCode3')
            BEGIN        
              PRINT N'Adding Column sRefferealCode3 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferealCode3 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCompanyName')
            BEGIN        
              PRINT N'Adding Column sCompanyName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCompanyName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCompanyURL')
            BEGIN        
              PRINT N'Adding Column sCompanyURL to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCompanyURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCompanyTitle')
            BEGIN        
              PRINT N'Adding Column sCompanyTitle to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCompanyTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sEventLog')
            BEGIN        
              PRINT N'Adding Column sEventLog to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sEventLog text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sNotes text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents')
    BEGIN
        PRINT N'Creating Table UserShareEvents';
        CREATE TABLE UserShareEvents
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iEventTypeID Int,
             sEventTypeID nvarchar(max),
             sSubject nvarchar(max),
             sTitle nvarchar(max),
             sMessage nvarchar(max),
             sHTTPx nvarchar(max),
             sIP nvarchar(max),
             sOther nvarchar(max),
             iFromID Int,
             sFromID nvarchar(max),
             sCcID nvarchar(max),
             sCc nvarchar(max),
             sBCcID nvarchar(max),
             sBCc nvarchar(max),
             sAttachements nvarchar(max),
             sToEmail nvarchar(max),
             sToPhone nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sEventTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sSubject text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sMessage text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sHTTPx text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sIP text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sOther text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sFromID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sBCcID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sBCc text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sAttachements')
            BEGIN        
              PRINT N'Adding Column sAttachements to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sAttachements text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sToEmail')
            BEGIN        
              PRINT N'Adding Column sToEmail to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sToEmail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sToPhone')
            BEGIN        
              PRINT N'Adding Column sToPhone to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sToPhone text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents')
    BEGIN
        PRINT N'Creating Table WebSiteBlogEvents';
        CREATE TABLE WebSiteBlogEvents
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             sEvent nvarchar(max),
             sLog nvarchar(max),
             sNotes nvarchar(max),
             sCookieID nvarchar(max),
             sIP nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sEvent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sLog text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sNotes text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sCookieID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sIP text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum')
    BEGIN
        PRINT N'Creating Table WebSiteForum';
        CREATE TABLE WebSiteForum
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             sSync nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             dTopicCount float,
             iAdScheduleID Int,
             sAdScheduleID nvarchar(max),
             sKeyWords nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'dTopicCount')
            BEGIN        
              PRINT N'Adding Column dTopicCount to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD dTopicCount money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'iAdScheduleID')
            BEGIN        
              PRINT N'Adding Column iAdScheduleID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD iAdScheduleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sAdScheduleID')
            BEGIN        
              PRINT N'Adding Column sAdScheduleID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sAdScheduleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sKeyWords text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSiteForumiAnnouncements';
        CREATE TABLE WebSiteForumiAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(max),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sAnsweredByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sAnsweredByResponseID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopiAnnouncements';
        CREATE TABLE WebSiteForumTopiAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(max),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sAnsweredByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sAnsweredByResponseID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopicEvents';
        CREATE TABLE WebSiteForumTopicEvents
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             sEvent nvarchar(max),
             sLog nvarchar(max),
             sNotes nvarchar(max),
             sCookieID nvarchar(max),
             sIP nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sEvent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sLog text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sNotes text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sCookieID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sIP text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopicPosts';
        CREATE TABLE WebSiteForumTopicPosts
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(max),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(max),
             dTopicCount nvarchar(max),
             bTrending nvarchar(max),
             iUserID Int,
             sUserID nvarchar(max),
             sUserThumbNail nvarchar(max),
             sKeyWords nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sAnsweredByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sAnsweredByResponseID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'dTopicCount')
            BEGIN        
              PRINT N'Adding Column dTopicCount to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD dTopicCount text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'bTrending')
            BEGIN        
              PRINT N'Adding Column bTrending to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD bTrending text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sUserThumbNail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sKeyWords text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopicPostsResponses';
        CREATE TABLE WebSiteForumTopicPostsResponses
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(max),
             iUserID Int,
             sUserID nvarchar(max),
             sUserThumbNail nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sAnsweredByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sUserThumbNail text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopics';
        CREATE TABLE WebSiteForumTopics
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             dPostCounts float,
             sAdvertisements nvarchar(max),
             iAdScheduleID Int,
             sAdScheduleID nvarchar(max),
             sKeyWords nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'dPostCounts')
            BEGIN        
              PRINT N'Adding Column dPostCounts to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD dPostCounts money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sAdvertisements')
            BEGIN        
              PRINT N'Adding Column sAdvertisements to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sAdvertisements text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iAdScheduleID')
            BEGIN        
              PRINT N'Adding Column iAdScheduleID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iAdScheduleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sAdScheduleID')
            BEGIN        
              PRINT N'Adding Column sAdScheduleID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sAdScheduleID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sKeyWords text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant')
    BEGIN
        PRINT N'Creating Table WebSiteJobApplicant';
        CREATE TABLE WebSiteJobApplicant
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             sSyncControl nvarchar(max),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iProfileID Int,
             sProfileID nvarchar(max),
             sProfileThumbURL nvarchar(max),
             sPost nvarchar(max),
             dAmount float,
             iUserID Int,
             sUserID nvarchar(max),
             sUserThumbNail nvarchar(max),
             iDomainID Int,
             sDomainID nvarchar(max),
             sDomainThumbNail nvarchar(max),
             dDeliveryInTime float,
             sDeliveryInTimeFrame nvarchar(max),
             dtETA_Delivery datetime,
             sCoverLetter nvarchar(max),
             sResume nvarchar(max),
             sResumeUploadLink1 nvarchar(max),
             sResumeUploadLink2 nvarchar(max),
             sResumeUploadLink3 nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sSyncControl')
            BEGIN        
              PRINT N'Adding Column sSyncControl to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sSyncControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dtDateUpdated')
            BEGIN        
              PRINT N'Adding Column dtDateUpdated to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dtDateUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iProfileID')
            BEGIN        
              PRINT N'Adding Column iProfileID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iProfileID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sProfileID')
            BEGIN        
              PRINT N'Adding Column sProfileID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sProfileID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sProfileThumbURL')
            BEGIN        
              PRINT N'Adding Column sProfileThumbURL to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sProfileThumbURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sPost')
            BEGIN        
              PRINT N'Adding Column sPost to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sPost text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dAmount')
            BEGIN        
              PRINT N'Adding Column dAmount to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dAmount money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sUserID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sUserThumbNail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iDomainID')
            BEGIN        
              PRINT N'Adding Column iDomainID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iDomainID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sDomainID')
            BEGIN        
              PRINT N'Adding Column sDomainID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sDomainID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sDomainThumbNail')
            BEGIN        
              PRINT N'Adding Column sDomainThumbNail to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sDomainThumbNail text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dDeliveryInTime')
            BEGIN        
              PRINT N'Adding Column dDeliveryInTime to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dDeliveryInTime money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sDeliveryInTimeFrame')
            BEGIN        
              PRINT N'Adding Column sDeliveryInTimeFrame to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sDeliveryInTimeFrame text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dtETA_Delivery')
            BEGIN        
              PRINT N'Adding Column dtETA_Delivery to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dtETA_Delivery datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sCoverLetter')
            BEGIN        
              PRINT N'Adding Column sCoverLetter to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sCoverLetter text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResume')
            BEGIN        
              PRINT N'Adding Column sResume to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResume text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResumeUploadLink1')
            BEGIN        
              PRINT N'Adding Column sResumeUploadLink1 to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResumeUploadLink1 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResumeUploadLink2')
            BEGIN        
              PRINT N'Adding Column sResumeUploadLink2 to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResumeUploadLink2 text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResumeUploadLink3')
            BEGIN        
              PRINT N'Adding Column sResumeUploadLink3 to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResumeUploadLink3 text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents')
    BEGIN
        PRINT N'Creating Table WebSiteJobEvents';
        CREATE TABLE WebSiteJobEvents
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iTypeID Int,
             sTypeID nvarchar(max),
             sEvent nvarchar(max),
             sLog nvarchar(max),
             sNotes nvarchar(max),
             sCookieID nvarchar(max),
             sIP nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sEvent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sLog text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sNotes text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sCookieID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sIP text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs')
    BEGIN
        PRINT N'Creating Table WebSiteJobs';
        CREATE TABLE WebSiteJobs
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             sSyncControl nvarchar(max),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sTitle nvarchar(max),
             sJobDescription nvarchar(max),
             sSkillRequirements nvarchar(max),
             bOpen bit,
             bJobFilled bit,
             iFilledByID Int,
             sFilledByID nvarchar(max),
             sFilledByThumbURL nvarchar(max),
             sReview nvarchar(max),
             sProgrammerReview nvarchar(max),
             dPrice float,
             dBudget float,
             iEmployerID Int,
             sEmployerID nvarchar(max),
             sEmployerThumbURL nvarchar(max),
             dNumApplicants float,
             sDeadLine nvarchar(max),
             sSalary nvarchar(max),
             sSkillsNeeded nvarchar(max),
             iJobTypeID Int,
             sJobTypeID nvarchar(max),
             sJobLocation nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSyncControl')
            BEGIN        
              PRINT N'Adding Column sSyncControl to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSyncControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dtDateUpdated')
            BEGIN        
              PRINT N'Adding Column dtDateUpdated to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dtDateUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sTitle text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sJobDescription')
            BEGIN        
              PRINT N'Adding Column sJobDescription to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sJobDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSkillRequirements')
            BEGIN        
              PRINT N'Adding Column sSkillRequirements to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSkillRequirements text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'bOpen')
            BEGIN        
              PRINT N'Adding Column bOpen to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD bOpen bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'bJobFilled')
            BEGIN        
              PRINT N'Adding Column bJobFilled to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD bJobFilled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iFilledByID')
            BEGIN        
              PRINT N'Adding Column iFilledByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iFilledByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sFilledByID')
            BEGIN        
              PRINT N'Adding Column sFilledByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sFilledByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sFilledByThumbURL')
            BEGIN        
              PRINT N'Adding Column sFilledByThumbURL to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sFilledByThumbURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sReview')
            BEGIN        
              PRINT N'Adding Column sReview to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sReview text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sProgrammerReview')
            BEGIN        
              PRINT N'Adding Column sProgrammerReview to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sProgrammerReview text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dPrice')
            BEGIN        
              PRINT N'Adding Column dPrice to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dPrice money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dBudget')
            BEGIN        
              PRINT N'Adding Column dBudget to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dBudget money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iEmployerID')
            BEGIN        
              PRINT N'Adding Column iEmployerID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iEmployerID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sEmployerID')
            BEGIN        
              PRINT N'Adding Column sEmployerID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sEmployerID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sEmployerThumbURL')
            BEGIN        
              PRINT N'Adding Column sEmployerThumbURL to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sEmployerThumbURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dNumApplicants')
            BEGIN        
              PRINT N'Adding Column dNumApplicants to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dNumApplicants money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sDeadLine')
            BEGIN        
              PRINT N'Adding Column sDeadLine to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sDeadLine text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSalary')
            BEGIN        
              PRINT N'Adding Column sSalary to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSalary text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSkillsNeeded')
            BEGIN        
              PRINT N'Adding Column sSkillsNeeded to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSkillsNeeded text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iJobTypeID')
            BEGIN        
              PRINT N'Adding Column iJobTypeID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iJobTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sJobTypeID')
            BEGIN        
              PRINT N'Adding Column sJobTypeID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sJobTypeID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sJobLocation')
            BEGIN        
              PRINT N'Adding Column sJobLocation to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sJobLocation text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments')
    BEGIN
        PRINT N'Creating Table WebSitePageComments';
        CREATE TABLE WebSitePageComments
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             iParentCommentID Int,
             sParentCommentID nvarchar(max),
             sComment nvarchar(max),
             bRestrictAccess bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'iParentCommentID')
            BEGIN        
              PRINT N'Adding Column iParentCommentID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD iParentCommentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sParentCommentID')
            BEGIN        
              PRINT N'Adding Column sParentCommentID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sParentCommentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sComment')
            BEGIN        
              PRINT N'Adding Column sComment to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sComment text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD bRestrictAccess bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds')
    BEGIN
        PRINT N'Creating Table WebSiteAdGroupAds';
        CREATE TABLE WebSiteAdGroupAds
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             dClicks float,
             dConversion float,
             dTotalRevenue float,
             dTotalCustomerProfit float,
             sAdvertisementContentHTML nvarchar(max),
             sAdImgURL nvarchar(max),
             sAdImgURI nvarchar(max),
             sAdShortHTML nvarchar(max),
             dAdPayPerClick float,
             dAdCostPerClick float,
             dAdPayPerView float,
             dAdCostPerView float,
             dAdClickBudget float,
             dAdViewBudget float,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dClicks')
            BEGIN        
              PRINT N'Adding Column dClicks to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dClicks money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dConversion')
            BEGIN        
              PRINT N'Adding Column dConversion to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dConversion money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dTotalRevenue')
            BEGIN        
              PRINT N'Adding Column dTotalRevenue to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dTotalRevenue money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dTotalCustomerProfit')
            BEGIN        
              PRINT N'Adding Column dTotalCustomerProfit to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dTotalCustomerProfit money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdvertisementContentHTML')
            BEGIN        
              PRINT N'Adding Column sAdvertisementContentHTML to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdvertisementContentHTML text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdImgURL')
            BEGIN        
              PRINT N'Adding Column sAdImgURL to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdImgURL text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdImgURI')
            BEGIN        
              PRINT N'Adding Column sAdImgURI to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdImgURI text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdShortHTML')
            BEGIN        
              PRINT N'Adding Column sAdShortHTML to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdShortHTML text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdPayPerClick')
            BEGIN        
              PRINT N'Adding Column dAdPayPerClick to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdPayPerClick money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdCostPerClick')
            BEGIN        
              PRINT N'Adding Column dAdCostPerClick to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdCostPerClick money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdPayPerView')
            BEGIN        
              PRINT N'Adding Column dAdPayPerView to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdPayPerView money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdCostPerView')
            BEGIN        
              PRINT N'Adding Column dAdCostPerView to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdCostPerView money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdClickBudget')
            BEGIN        
              PRINT N'Adding Column dAdClickBudget to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdClickBudget money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdViewBudget')
            BEGIN        
              PRINT N'Adding Column dAdViewBudget to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdViewBudget money;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup')
    BEGIN
        PRINT N'Creating Table WebSiteAdvertisementGroup';
        CREATE TABLE WebSiteAdvertisementGroup
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(max),
             sControl nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             dClicks float,
             dConversion float,
             dTotalRevenue float,
             dTotalCustomerProfit float,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dClicks')
            BEGIN        
              PRINT N'Adding Column dClicks to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dClicks money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dConversion')
            BEGIN        
              PRINT N'Adding Column dConversion to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dConversion money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dTotalRevenue')
            BEGIN        
              PRINT N'Adding Column dTotalRevenue to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dTotalRevenue money;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dTotalCustomerProfit')
            BEGIN        
              PRINT N'Adding Column dTotalCustomerProfit to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dTotalCustomerProfit money;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSiteAnnouncements';
        CREATE TABLE WebSiteAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(max),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sAnsweredByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sAnsweredByResponseID text;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSitePageiAnnouncements';
        CREATE TABLE WebSitePageiAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(max),
             sSync nvarchar(max),
             iParentID Int,
             sParentID nvarchar(max),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(max),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(max),
             sName nvarchar(max),
             sDescription nvarchar(max),
             sContent nvarchar(max),
             sVersion nvarchar(max),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(max),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(max),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sControl text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sSync text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sParentID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sCreatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sUpdatedByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sName text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sDescription text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sContent text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sVersion text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sAnsweredByID text;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sAnsweredByResponseID text;
            END     
    END    
    
GO





 CREATE TRIGGER T_SystemMaster_DTrig ON [SystemMaster] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE Roles FROM deleted, Roles WHERE deleted.ID = Roles.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE SystemModules FROM deleted, SystemModules WHERE deleted.ID = SystemModules.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE Users FROM deleted, Users WHERE deleted.ID = Users.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSite FROM deleted, WebSite WHERE deleted.ID = WebSite.iParentID
GO


 CREATE TRIGGER T_Users_DTrig ON [Users] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UserRoles FROM deleted, UserRoles WHERE deleted.ID = UserRoles.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UsersAltAuth FROM deleted, UsersAltAuth WHERE deleted.ID = UsersAltAuth.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UsersProperties FROM deleted, UsersProperties WHERE deleted.ID = UsersProperties.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UsersLogs FROM deleted, UsersLogs WHERE deleted.ID = UsersLogs.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UsersChats FROM deleted, UsersChats WHERE deleted.ID = UsersChats.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UsersMessages FROM deleted, UsersMessages WHERE deleted.ID = UsersMessages.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UsersPosts FROM deleted, UsersPosts WHERE deleted.ID = UsersPosts.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE UserShareEvents FROM deleted, UserShareEvents WHERE deleted.ID = UserShareEvents.iParentID
GO


 CREATE TRIGGER T_WebSite_DTrig ON [WebSite] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlog FROM deleted, WebSiteBlog WHERE deleted.ID = WebSiteBlog.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteExtAppIntegrationSettings FROM deleted, WebSiteExtAppIntegrationSettings WHERE deleted.ID = WebSiteExtAppIntegrationSettings.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteModules FROM deleted, WebSiteModules WHERE deleted.ID = WebSiteModules.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePage FROM deleted, WebSitePage WHERE deleted.ID = WebSitePage.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageTemplates FROM deleted, WebSitePageTemplates WHERE deleted.ID = WebSitePageTemplates.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteProperties FROM deleted, WebSiteProperties WHERE deleted.ID = WebSiteProperties.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteNavigation FROM deleted, WebSiteNavigation WHERE deleted.ID = WebSiteNavigation.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteEvents FROM deleted, WebSiteEvents WHERE deleted.ID = WebSiteEvents.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteRole FROM deleted, WebSiteRole WHERE deleted.ID = WebSiteRole.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteIPFilters FROM deleted, WebSiteIPFilters WHERE deleted.ID = WebSiteIPFilters.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSite_Leads FROM deleted, WebSite_Leads WHERE deleted.ID = WebSite_Leads.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForum FROM deleted, WebSiteForum WHERE deleted.ID = WebSiteForum.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteJobs FROM deleted, WebSiteJobs WHERE deleted.ID = WebSiteJobs.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteAdvertisementGroup FROM deleted, WebSiteAdvertisementGroup WHERE deleted.ID = WebSiteAdvertisementGroup.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteAnnouncements FROM deleted, WebSiteAnnouncements WHERE deleted.ID = WebSiteAnnouncements.iParentID
GO


 CREATE TRIGGER T_WebSiteBlog_DTrig ON [WebSiteBlog] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogEntry FROM deleted, WebSiteBlogEntry WHERE deleted.ID = WebSiteBlogEntry.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogProperties FROM deleted, WebSiteBlogProperties WHERE deleted.ID = WebSiteBlogProperties.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogRoles FROM deleted, WebSiteBlogRoles WHERE deleted.ID = WebSiteBlogRoles.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogEvents FROM deleted, WebSiteBlogEvents WHERE deleted.ID = WebSiteBlogEvents.iParentID
GO


 CREATE TRIGGER T_WebSiteBlogEntry_DTrig ON [WebSiteBlogEntry] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogComments FROM deleted, WebSiteBlogComments WHERE deleted.ID = WebSiteBlogComments.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogEntryProperties FROM deleted, WebSiteBlogEntryProperties WHERE deleted.ID = WebSiteBlogEntryProperties.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogEntryRole FROM deleted, WebSiteBlogEntryRole WHERE deleted.ID = WebSiteBlogEntryRole.iParentID
GO


 CREATE TRIGGER T_WebSitePage_DTrig ON [WebSitePage] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageRoles FROM deleted, WebSitePageRoles WHERE deleted.ID = WebSitePageRoles.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageZoneContent FROM deleted, WebSitePageZoneContent WHERE deleted.ID = WebSitePageZoneContent.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageProperties FROM deleted, WebSitePageProperties WHERE deleted.ID = WebSitePageProperties.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageComments FROM deleted, WebSitePageComments WHERE deleted.ID = WebSitePageComments.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageiAnnouncements FROM deleted, WebSitePageiAnnouncements WHERE deleted.ID = WebSitePageiAnnouncements.iParentID
GO


 CREATE TRIGGER T_WebSitePageTemplates_DTrig ON [WebSitePageTemplates] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageTemplatesPage FROM deleted, WebSitePageTemplatesPage WHERE deleted.ID = WebSitePageTemplatesPage.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageZoneContent FROM deleted, WebSitePageZoneContent WHERE deleted.ID = WebSitePageZoneContent.iParentID
GO


 CREATE TRIGGER T_WebSiteBlogComments_DTrig ON [WebSiteBlogComments] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteBlogCommentsProperties FROM deleted, WebSiteBlogCommentsProperties WHERE deleted.ID = WebSiteBlogCommentsProperties.iParentID
GO


 CREATE TRIGGER T_WebSiteNavigation_DTrig ON [WebSiteNavigation] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteNavigationRoles FROM deleted, WebSiteNavigationRoles WHERE deleted.ID = WebSiteNavigationRoles.iParentID
GO


 CREATE TRIGGER T_WebSitePageTemplatesPage_DTrig ON [WebSitePageTemplatesPage] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSitePageTemplateZones FROM deleted, WebSitePageTemplateZones WHERE deleted.ID = WebSitePageTemplateZones.iParentID
GO


 CREATE TRIGGER T_WebSiteJobs_DTrig ON [WebSiteJobs] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteJobApplicant FROM deleted, WebSiteJobApplicant WHERE deleted.ID = WebSiteJobApplicant.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteJobEvents FROM deleted, WebSiteJobEvents WHERE deleted.ID = WebSiteJobEvents.iParentID
GO


 CREATE TRIGGER T_WebSiteForum_DTrig ON [WebSiteForum] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForumiAnnouncements FROM deleted, WebSiteForumiAnnouncements WHERE deleted.ID = WebSiteForumiAnnouncements.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForumTopics FROM deleted, WebSiteForumTopics WHERE deleted.ID = WebSiteForumTopics.iParentID
GO


 CREATE TRIGGER T_WebSiteForumTopics_DTrig ON [WebSiteForumTopics] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForumTopiAnnouncements FROM deleted, WebSiteForumTopiAnnouncements WHERE deleted.ID = WebSiteForumTopiAnnouncements.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForumTopicEvents FROM deleted, WebSiteForumTopicEvents WHERE deleted.ID = WebSiteForumTopicEvents.iParentID
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForumTopicPosts FROM deleted, WebSiteForumTopicPosts WHERE deleted.ID = WebSiteForumTopicPosts.iParentID
GO


 CREATE TRIGGER T_WebSiteForumTopicPosts_DTrig ON [WebSiteForumTopicPosts] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteForumTopicPostsResponses FROM deleted, WebSiteForumTopicPostsResponses WHERE deleted.ID = WebSiteForumTopicPostsResponses.iParentID
GO


 CREATE TRIGGER T_WebSiteAdvertisementGroup_DTrig ON [WebSiteAdvertisementGroup] FOR DELETE AS
 SET NOCOUNT ON
     /* * CASCADE DELETES TO 'iParentID' */
     DELETE WebSiteAdGroupAds FROM deleted, WebSiteAdGroupAds WHERE deleted.ID = WebSiteAdGroupAds.iParentID
GO



/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a76135fe-9245-4d32-a50b-180234148de6', '', 'Afghanistan', 'AF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'af399f5f-d9f3-46b4-90e5-9e00b0234e4f', '', 'Albania', 'AL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'd87bd3fc-6b85-43fe-8370-f1e07c366587', '', 'Algeria', 'DZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '10950915-32f5-4822-bcdb-0044263c38ac', '', 'American Samoa', 'AS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '83544428-17ec-4827-91ce-fb2e0db1826b', '', 'Andorra', 'AD', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '44c7d5a7-3faf-4d65-82d3-462632ab2837', '', 'Angola', 'AO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b2839518-bee8-4002-8bbc-aef60fe10d30', '', 'Anguilla', 'AI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '93d367e0-5c31-4c54-a736-d629f35012b5', '', 'Antarctica', 'AQ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0e7cf746-c791-4eb6-8818-c989310cf4d7', '', 'Antigua', 'AG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7746877c-176a-4b78-8674-7a2e34dc6d5a', '', 'Argentina', 'AR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '389b3b66-39fb-4fc5-9ae6-fa6bb066a9ef', '', 'Armenia', 'AM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '53603a0d-e0be-4830-936a-4fcc985574cf', '', 'Aruba', 'AW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7e6ec0be-a172-42e3-9fc2-b69a536a36d7', '', 'Australia', 'AU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '23e2d842-8d6b-4ea3-8e3e-0a36e2f5c040', '', 'Austria', 'AT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '90304756-bf37-4ee7-948a-ca37bb575c26', '', 'Azerbaijan', 'AZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '654836e5-24cc-4001-8b04-57de03ed9f91', '', 'Bahamas', 'BS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a82b609d-5621-4c8f-8413-cc0f238e24c1', '', 'Bahrain', 'BH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0ec8bac4-eb16-4bbd-a83a-90a745fefb52', '', 'Bangladesh', 'BD', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'f1a3b35a-04a3-40b5-9df0-919176aa3707', '', 'Barbados', 'BB', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'f12d24f8-5c93-4960-87a2-61e9b7a6ae67', '', 'Belarus', 'BY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '5ec29f9c-ced7-4cb7-9a59-9c738dcdd533', '', 'Belgium', 'BE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9542ee70-2c5b-45c2-ab69-2bc7b4498895', '', 'Belize', 'BZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1bcc9e6f-a15e-4567-a64e-eac47bfc0d20', '', 'Benin', 'BJ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '95358a70-56bb-454d-8a58-778b9ce401eb', '', 'Bermuda', 'BM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '584de4cd-ccec-4d74-acdb-ce1c4ef0baa7', '', 'Bhutan', 'BT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1b44fdec-7a87-4ed8-8235-e420e9a006fd', '', 'Bolivia', 'BO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '08f48246-45fe-480c-9b5d-fb274cf93064', '', 'Bosnia and Herzegovina', 'BA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '2dd802e0-5e34-4c6f-affd-99739331c3e5', '', 'Botswana', 'BW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '04185404-c049-4dd5-9b0c-fc693cadbfd5', '', 'Brazil', 'BR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '348a71b8-3017-4f5e-b85b-a11c1c636b80', '', 'British Virgin Islands', 'VG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e33093c0-4c4e-40b5-974f-5a4cc690d299', '', 'Brunei', 'BN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e37b1003-7fa8-4b89-b522-98fc53420a2d', '', 'Bulgaria', 'BG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4a886bf2-18d0-47a3-9a19-9403129649f1', '', 'Burkina Faso', 'BF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '173ee49e-d816-4815-b863-c9e5afbdf93b', '', 'Burma', '', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '5e0ec4ea-8c5d-4cf0-ba98-94fd56780ba4', '', 'Burundi', 'BI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '70c3786d-79b3-44f4-b17b-72837e8358fb', '', 'Cambodia', 'KH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1b809aac-ba8a-4b1c-b940-8b8a97354acf', '', 'Cameroon', 'CM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '6ddc92f3-d0b2-4d15-b07d-78eebf517a30', '', 'Canada', 'CA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '39f4d86f-e09f-4328-b054-1d58adccc089', '', 'Cape Verde', 'CV', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ce8ef999-5344-49a2-ac33-d45cf41f2730', '', 'Central African Republic', 'CF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'acd31306-2fd7-4549-a196-62cfec761834', '', 'Chad', 'TD', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '470e7cc1-f3a1-49f7-9bb9-eb0be9acb425', '', 'Chile', 'CL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '443b42c6-dc4a-43de-8382-1ffb4eb5d5b5', '', 'China', 'CN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e2f4a9a4-de44-49a5-bc83-a3ff509fe7f2', '', 'Colombia', 'CO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b5d0007f-96bd-4a8d-acf7-f0772b227734', '', 'Comoros', 'KM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7dbacaf7-517e-46cd-82b7-d845b5049650', '', 'Congo (Zaire)', 'CG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '93ff3833-fd3e-4c33-9886-3b6adf8c7e32', '', 'Congo', 'CG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e0fa1798-35bf-4a14-8ff9-b7040582e99e', '', 'Cook Islands', 'CK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a99f25cb-f377-487e-b20f-2d4a216a0987', '', 'Costa Rica', 'CR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a233aae6-2b5f-446e-80ec-8904b51a1e03', '', 'Cote d''Ivoire (Ivory Coast)', 'CI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '35cf295e-407b-4f9a-a4d9-0ce11cea3b50', '', 'Croatia', 'HR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c3aed467-ae9d-49c8-8779-806fd5633990', '', 'Cuba', 'CU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '2a936bd1-6328-442c-9a70-57bc721fa194', '', 'Cyprus', 'CY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'faf1c2c2-7e8b-428c-ad5b-8ebdfdc9c78f', '', 'Czech Republic', 'CZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '2f327dfd-42a6-4f7d-bcc1-c25e1eb0171b', '', 'Denmark', 'DK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'd24cca86-abe6-44c0-8d7f-eac49ffb91c3', '', 'Djibouti', 'DJ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'bb580798-d653-4193-aabf-8def30b87494', '', 'Dominica', 'DM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '43100c87-6737-4352-acb6-7987a0270ce8', '', 'Dominican Republic', 'DO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '28c02f31-47c3-47c6-bd91-46b1d1deacb7', '', 'Ecuador', 'EC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '19371551-24b5-4d50-b994-a047786bcfa8', '', 'Egypt', 'EG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9ac0e1f7-d2bb-4644-9647-3fbfd19ccab8', '', 'El Salvador', 'SV', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b91322da-ccb3-411f-9dfa-af8a54a1e7e4', '', 'Equatorial Guinea', 'GQ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '71d9eeb1-3ac8-49bb-be0f-88ed2e723e01', '', 'Eritrea', 'ER', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ed25fecc-3220-4efd-ad51-80632f5a93e1', '', 'Estonia', 'EE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c8d15ea0-8e97-4fa5-8f00-f640ee35ef1d', '', 'Ethiopia', 'ET', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '96a2c2a0-a23c-4322-8822-850c74e7d573', '', 'Falkland Islands', 'FK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '103dc793-fbae-424e-8203-4d5b959c1940', '', 'Fiji', 'FJ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9abc1f42-d46e-4e81-8624-daffa390ac61', '', 'Finland', 'FI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7b1055a7-59ba-4da8-bfda-1e47fea72017', '', 'France', 'FR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ff51cc92-cdce-4db6-930f-053bc67e2c99', '', 'French Guiana', 'GF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '33ce9127-4f3b-4249-8cc0-6cbe71a606fc', '', 'French Polynesia', 'PF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '85c31d0b-10af-4a39-94bb-38dee85749e7', '', 'Gabon', 'GA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'efdf56d3-ade1-4768-a3fb-9b6a9cfae46b', '', 'The Gambia', 'GM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '00c72420-962b-4ceb-b929-c130773dc901', '', 'Gaza Strip and West Bank', '', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '30c325c3-b992-4e5f-ba25-6e5635057feb', '', 'Georgia', 'GE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '24953075-d4fb-468a-9a88-4a3c140ccf37', '', 'Germany', 'DE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9cdd64e3-1c72-4d8a-9eae-7f7fd3198749', '', 'Ghana', 'GH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b3c4c620-62a4-4053-b4b9-f481ec0238be', '', 'Gibraltar', 'GI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c3e72e3b-3bd8-4f20-99e5-6dab46bbdb18', '', 'Greece', 'GR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '111df19a-7e75-4879-924c-4958db2f87b5', '', 'Greenland', 'GL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0e10de83-50c2-4c2c-b132-13aaf77e8269', '', 'Grenada', 'GD', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'dd4b65f4-2620-4afb-b7fe-966b18cfdc92', '', 'Guadeloupe', 'GP', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1a4e6485-693f-405f-a90d-aa5ae249abc1', '', 'Guam', 'GU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1f33794e-40d0-4077-a555-5c0c0e338918', '', 'Guatemala', 'GT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1cd56968-5bf0-4a2b-a547-ff9afc9fcb18', '', 'Guinea', 'GN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a98d9456-86d6-445f-8b8b-622aefc6ac9f', '', 'Guinea-Bissau', 'GW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '10f495cc-8407-49b4-8590-aa48e1d79bfe', '', 'Guyana', 'GY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '30a68e1c-3225-40f8-b9dc-2f60930e03d8', '', 'Haiti', 'HT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'd1b81a28-7d14-4798-96fc-86b97f1e135f', '', 'The Holy See', '', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '43220dab-f2c6-4381-a5e2-87cdc652ed7f', '', 'Honduras', 'HN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '3ccece80-3f26-4eca-9966-49523678bfed', '', 'Hong Kong', 'HK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '69ac20bb-a4c5-45af-bcb2-cb63ad234ff8', '', 'Hungary', 'HU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '911a5ba1-4857-45e2-bfb5-4eb7b03d1d8c', '', 'Iceland', 'IS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '931a351e-f68c-4d59-b614-267a3e10d176', '', 'India', 'IN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '5775cd5d-75a1-49b6-9186-7cd0b811b390', '', 'Indonesia', 'ID', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '3cb7e9a4-d4f2-4911-94c4-ae6ec142733d', '', 'Iran', 'IR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c9dbdc32-4a28-4508-bfdb-aef1d495ea82', '', 'Iraq', 'IQ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '828868a8-ffd7-4a57-b6d1-0c7446d18203', '', 'Ireland', 'IE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'bfc38540-3fef-4220-a9e2-463741fae58f', '', 'Israel', 'IL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4fa1882b-109d-4821-8aec-6f75e4d67310', '', 'Italy', 'IT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '3f97946e-bf26-419b-bee4-cc126f0a66e7', '', 'Ivory Coast (Cote d''Ivoire)', 'CI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ce92e97e-80dc-4d6e-a0a9-9bd0a98b6e1b', '', 'Jamaica', 'JM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4bd76374-9ad4-42e2-a897-e8b6ad6a5af7', '', 'Japan', 'JP', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'cec33e77-5aed-454b-b69f-25a77c9d6033', '', 'Jordan', 'JO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4b3611f1-14fb-457c-a011-a9f49a0d063d', '', 'Kazakhstan', 'KZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '80cfb454-e582-49e6-a2f6-40d75a97f473', '', 'Kenya', 'KE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a85241f0-bb9b-4ecb-9a27-2f10e41e7028', '', 'Kiribati', 'KI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'fcedb677-e761-4ca5-a8b2-577a7ccdc4f2', '', 'Kuwait', 'KW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '57440e85-e90b-4a49-9209-9a9ec6558eaa', '', 'Kyrgyzstan', 'KG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '11e5dd08-0c50-4f55-9aa9-8baf1c90e7f8', '', 'Laos', 'LA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'dd3b056d-b58a-4e91-abef-a3a0dfbd90a0', '', 'Latvia', 'LV', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '33b4ba03-8775-471e-b0d2-b0c1ad9f6ced', '', 'Lebanon', 'LB', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8753d385-8acb-4bca-a6b9-2586a9fdbc19', '', 'Lesotho', 'LS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'be74aeb4-985b-4989-9186-3ff76bffc5b1', '', 'Liberia', 'LR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ac92d1bb-d6d7-4106-975d-54c15d54a078', '', 'Libya', 'LY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '34040e11-cd96-4061-aa9b-f52605912d1d', '', 'Liechtenstein', 'LI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0d907cad-ac59-4960-ab95-620444d91cc9', '', 'Lithuania', 'LT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c9ea2ed0-574d-4988-9a1d-b95e2092a0b9', '', 'Luxembourg', 'LU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'cf9ed1fd-cf63-47a5-96c9-70f764d8f33d', '', 'Macau', 'MO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '22313c77-1fc7-4c38-9744-772c49408e44', '', 'Macedonia', 'MK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4586cfe5-0476-4d87-a44c-bc41631fff40', '', 'Madagascar', 'MG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '38fa0ba9-47dd-480f-8590-85ee99e04820', '', 'Malawi', 'MW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '26c65c2a-2e02-4a97-adce-27025e607a88', '', 'Malaysia', 'MY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ca19d8c5-ddc0-4f75-a5c7-6b74ad2564d3', '', 'Maldives', 'MV', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7c5a1f23-88bf-462c-a61a-fd08d6bd7666', '', 'Mali', 'ML', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c825ea9e-e9df-4ac9-a651-a34757ecea2f', '', 'Malta', 'MT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a0bd5fe9-e84a-4d70-848e-e2ecfbf2a077', '', 'Marshall Islands', 'MH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e31c1016-11de-42cc-b3aa-ee455f76f77e', '', 'Martinique', 'MQ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'aff258be-f4e0-4feb-98e9-5e3e69855f93', '', 'Mauritania', 'MR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '52f8e90d-76f2-459f-8656-85c5c4d248d1', '', 'Mauritius', 'MU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'eadbab01-66ef-429d-a946-a4355538afc2', '', 'Mayotte', 'YT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c2f4bc84-d63f-4c2c-a44d-9bfb3cf2f97f', '', 'Mexico', 'MX', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8a2db56c-33a6-4080-8a7f-bf7debae4331', '', 'Federated States of Micronesia', 'FM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'd340a0dd-dce2-4742-9071-20aa4c223250', '', 'Moldova', 'MD', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '238b487c-e9db-4c4d-ae7f-8678253e75b2', '', 'Monaco', 'MC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '87413a25-1bd9-4e1f-8144-7eeff859ace8', '', 'Mongolia', 'MN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'dc1a9476-8726-413d-a520-041610f4e3fb', '', 'Montserrat', 'MS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e2f7bd43-dbae-4e22-ac07-4114f24ca4d0', '', 'Morocco', 'MA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c6895573-c96f-4e49-a06d-04d1295b5305', '', 'Mozambique', 'NA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '69863dd7-4690-4895-9131-4e3a7361a05d', '', 'Namibia', 'NA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '71a345ab-a9a2-404f-9def-0d370feee1da', '', 'Nauru', 'NR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'cb94607b-585d-409d-a955-c85b0c2ffe18', '', 'Nepal', 'NP', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'f7eb9d48-8d8b-4252-8b13-60173a3dbd0d', '', 'Netherlands', 'NL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '28eecb77-fd7d-496f-ae4d-cad9fa8436ec', '', 'Netherlands Antilles', 'AN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a364be2a-c2df-4950-b268-5513408286f4', '', 'New Caledonia', 'NC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '6a48cb21-4981-4198-8e2d-a7cf3e2f731d', '', 'New Zealand', 'NZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0d7d126e-5433-4349-9318-673e515cbfa6', '', 'Nicaragua', 'NI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b39fba76-aa1a-49f6-8e39-3f15a30b8bf0', '', 'Niger', 'NE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7123c639-559e-4711-9474-cb6b8978ec97', '', 'Nigeria', 'NG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1a202d67-27fa-4560-bcd7-b9076d4c9102', '', 'North Korea', 'KP', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a76f31f8-0532-4b58-b446-2b0b71ba0f5e', '', 'Northern Mariana Islands', 'MP', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '24ea2d8a-aad8-483d-ac5e-b2ec24ec000e', '', 'Norway', 'NO O', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9d8d19f1-9486-4e3f-a167-b167ae4df0f4', '', 'Oman', 'OM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b914112e-a4de-4704-8baa-98621c71fff7', '', 'Pakistan', 'PK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '158f679c-3744-4bba-b271-ac574c4d221f', '', 'Palau', 'PW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '14d0326d-742e-4ee8-a4ec-662e256647e2', '', 'Panama', 'PA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'cc045cdf-417b-407e-b302-bcbcc3366c9a', '', 'Papua New Guinea', 'PG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a30391e3-9a23-4ebd-a219-45746c7c9866', '', 'Paraguay', 'PY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e6033b9f-3bb4-461a-8a80-946de2be5a9b', '', 'Peru', 'PE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0867f217-c2fb-40e8-aa14-24238819752a', '', 'Philippines', 'PH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '92200801-93cd-4be7-905c-42dd3102a661', '', 'Pitcairn Islands', 'PN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'd8b5281b-e54c-4d27-a560-daded3317374', '', 'Poland', 'PL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'fbd8a93f-07cb-4a4e-a568-09410496edc6', '', 'Portugal', 'PT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '925c60e3-9728-4921-ac0a-3f8acad0258f', '', 'Puerto Rico', 'PR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7041a885-3627-4082-9070-652df116c4a8', '', 'Qatar', 'QA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '2fa0d2d7-9811-4126-a3ff-7ac8e20a7ca4', '', 'Reunion', 'RE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4220f22c-acf0-4e87-8def-cb37aaa63ed5', '', 'Romania', 'RO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'e6bbd15e-af05-48fb-8388-43516bfeaa7c', '', 'Russia', 'RU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ae12bb27-c6ff-4ae6-8573-e33780487341', '', 'Rwanda', 'RW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1315023e-ae99-48b3-92a2-071e5189587d', '', 'Saint Kitts and Nevis', 'KN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '773a5341-ccb5-47f8-86dc-804542553da1', '', 'Saint Lucia', 'LC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c5f84293-497e-47f7-887a-54f4676e8b44', '', 'Saint Pierre and Miquelon', '', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1bff77fd-e68b-44f6-80b5-933392a64bfe', '', 'Saint Vincent and the Grenadines', 'VC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '6583c04f-52ad-4439-9ecb-df852112f43e', '', 'Samoa', 'WS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '60787555-76c1-4ee9-abbc-06595cd638a8', '', 'San Marino', 'SM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a4b5dd97-6780-41a8-a3b2-251faad32de0', '', 'Sao Tome and Principe', 'ST', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'bfbeec69-d36c-462e-b2c5-be01608ec8f7', '', 'Saudi Arabia', 'SA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c72d9976-a5a5-49e3-ab53-90c3892c478b', '', 'Senegal', 'SN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '2143de2e-9606-484b-b8e4-176ad71d8b7a', '', 'Serbia and Montenegro (Yugoslavia)', '', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '2af51d39-8a78-4046-a355-889921b02baa', '', 'Seychelles', 'SC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ab08fa59-b789-4a06-bbb0-4817cca2a1b6', '', 'Sierra Leone', 'SL', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '410d4ac9-0eb5-4095-a2fe-4886d88b11db', '', 'Singapore', 'SG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '5b4b2d37-9e5e-4e54-ade6-911ff93b535e', '', 'Slovakia', 'SK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'fcbf7235-fcff-4199-84d7-69597a650598', '', 'Slovenia', 'SI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8f5fad27-ba1e-422b-b99e-070fc1d649a2', '', 'Solomon Islands', 'SB', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4ae032d9-4838-4126-914d-0c9bbc0c51e3', '', 'Somalia', 'SO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '003082b7-2ee0-465a-8d65-75f91d1c4c8f', '', 'South Africa', 'ZA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ac35bcda-b976-4e7c-a6c7-772c13b1ed8c', '', 'South Korea', 'KR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9543b673-6ceb-4eb3-90b1-356d5a7057de', '', 'Spain', 'ES', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'dadee721-b0c1-499b-8307-b8faff79737b', '', 'Sri Lanka', 'LK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c4da8f86-1a08-4c8d-806e-3d679b31b222', '', 'Sudan', 'SD', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '0a79787e-bf9d-4a6b-a463-dfb4ce6c876e', '', 'Suriname', 'SR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1be48377-5735-4f77-a604-972922ebcb8c', '', 'Swaziland', 'SZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'f096f542-5d67-4518-8ab4-bd1dc7bc4606', '', 'Sweden', 'SE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '31a286be-a0d4-428a-9eb4-a88beea53666', '', 'Switzerland', 'CH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '47a1a74a-2ef5-4b48-b5f7-bee9aa0d7965', '', 'Syria', 'SY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b3247e73-c1d7-44d1-b7be-8da4c3e133fc', '', 'Taiwan', 'TW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1ce551da-0e3f-4ab7-a35f-60e9cc22fc5d', '', 'Tajikistan', 'TJ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ffb8fd8e-98f3-4984-abdd-8c2d06583bad', '', 'Tanzania', 'TZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '05b9f7c7-61d8-446f-b965-7b1cdf917b2b', '', 'Thailand', 'TH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b729c6a6-89d7-4b25-b1a1-dbafafb23185', '', 'Togo', 'TG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9e091da8-59c9-4048-b91d-06c7eacb9008', '', 'Tonga', 'TO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b1002370-8737-47c6-980b-60dcca39a9c7', '', 'Trinidad and Tobago', 'TT', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8c188831-b38d-400d-9cd8-9cb8840efa41', '', 'Tunisia', 'TN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '27a722e9-43d4-4873-a57b-73130fd37665', '', 'Turkey', 'TR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b35e08af-0df8-4b04-9778-a59c7185d22a', '', 'Turkmenistan', 'TM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'd46fdef6-6c78-4522-b002-843a1fa0cb44', '', 'Turks and Caicos Islands', 'TC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1d836d13-49f8-4c70-93d8-34cd742273cd', '', 'Tuvalu', 'TV', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '95b2df7c-3073-484a-969e-c6a4abccc14b', '', 'Uganda', 'UG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '799258ea-a042-4bde-980b-abde28f7e92c', '', 'Ukraine', 'UA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '58da9f18-6aad-4240-863c-f86f9cfa0b5c', '', 'United Arab Emirates', 'AE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '3d4c89d3-0e3e-4038-84dd-c731ca33f633', '', 'United Kingdom', 'GB', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9019f790-8a18-4d69-b6f5-7ee671b025e5', '', 'United States', 'US', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ea78afc2-2af8-4789-9922-2a46c11f2a57', '', 'United States Virgin Islands', 'VI', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '9b70c5d3-b75e-4f73-8e07-b8dc19af631d', '', 'Uruguay', 'UY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'de74e266-7275-451e-9767-11a13e020b1c', '', 'Uzbekistan', 'UZ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '67b59827-5a3c-4731-b37a-c6fb8cfe0f6a', '', 'Vanuatu', 'VU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7daa8ab5-13bc-4cae-aeab-d7789ca5a7b0', '', 'Venezuela', 'VE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '599a7870-3d59-4262-9c96-7a0950835b17', '', 'Vietnam', 'VN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '93c88870-5791-43a7-8c17-9a758576bda4', '', 'West Bank and Gaza Strip', '', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '5cef4f95-8fbe-4140-8cfb-39736a10f56b', '', 'Western Sahara', 'EH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'bf17a563-908a-4596-8a0e-2baf02cc3d1f', '', 'Yemen', 'YE', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8c2f364a-0b47-4ef5-bb43-e7021eb1f57c', '', 'Yugoslavia (Serbia and Montenegro)', 'YU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8d5ea3c2-0d30-4c4b-a81e-9e11a01869bf', '', 'Zaire (Congo)', 'ZR', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4942f5dc-153e-4057-b39d-b1371d30210d', '', 'Zambia', 'ZM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '7ded9f40-3672-4a3f-b399-60ca9735dfa5', '', 'Zimbabwe', 'ZW', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '73c57993-3630-4101-8257-6295262d3baa', '', 'Wallis and Futuna Islands', 'WF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '780e5a16-1a96-4f65-8d9d-e23973cc8017', '', 'Virgin Islands (British)', 'VG', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '68b7bf93-5630-466d-b415-aa548de9f720', '', 'Vatican City', 'VA', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'dd8c31ea-0890-4250-a872-c30b96059c40', '', 'US Minor Outlying Islands', 'UM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'ff8f04c5-44fc-45a4-a63a-46bd5fdcb89a', '', 'Tokelau', 'TK', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '18ab0efc-bd6c-4098-b5e7-54d3972549a0', '', 'Svalbard and Jan Mayen Islands', 'SJ', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '78ec7bfb-7e24-4bde-978e-e636e2d66267', '', 'St. Helena', 'SH', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '6a065dcd-ca37-4e9f-9d60-1c3024653e3d', '', 'St. Pierre and Miquelon', 'PM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '3773df71-c4ab-4498-b768-2fd3de98ae52', '', 'S. Georgia and S. Sandwich Isls.', 'GS', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '4907c1f9-d6bd-44e2-821e-9c9a2b701339', '', 'Niue', 'NU', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '104534cd-5912-4ec8-8535-78d5a26da930', '', 'Myanmar', 'MM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'de9c3a8b-3179-42b3-84dc-f0a475a21d1d', '', 'Micronesia', 'FM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '3e856d72-6182-47bb-933d-08003f850332', '', 'Norfolk Island', 'NF', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '8c923084-271a-4fb3-a684-d5244bb8af61', '', 'Heard and McDonald Islands', 'HM', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b70e0639-7a08-4631-8340-ec39e8dca9a4', '', 'French Southern Territories', 'TF G', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'fb607ebf-d6bb-48a9-815f-1b042dfc06d3', '', 'France, Metropolitan', 'FX', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'a34599ff-d41d-4c72-b618-2a9ca4a540e7', '', 'Faroe Islands', 'FO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'dd277d1a-ee85-46a8-9818-06af83cf6f14', '', 'East Timor', 'TP', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '1b745002-d9dd-4444-8357-467ff660210b', '', 'Cocos (Keeling Islands)', 'CC', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'c07e377b-fb21-4fbb-a901-5fbc91a9b05c', '', 'Christmas Island', 'KY', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'fba01718-d11e-407f-9790-ac84a70b2b1f', '', 'Brunei Darussalam', 'BN', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'b72fb279-5c75-4a01-9aff-49a8914bea55', '', 'British Indian Ocean Territory', 'IO', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', '124e35e7-f747-4f15-830b-6dd504499151', '', 'Bouvet Island', 'BV', '0.0000', '', '', '', '', '', '', '', '', '', '');
Insert Into Countries (dtDateCreated, dtDateUpdated, sControl, sSyncControl, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iLanguageID, sLanguageID, sTaxRate, dTaxRate, bytTaxTable, sCurrencyName, sCurrentcySymbol, dExchangeRateFromDollar, sThreeAbbreviation) VALUES ('4/28/2012 12:00:00 AM', '4/28/2012 12:00:00 AM', '2061860c-b439-45dc-9072-d9c50e36ed56', '', 'unkown', 'none', '', '', '', '', '', '', '', '', '', '', '');


/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('7866ba57-2931-47a1-b4f1-d156cf6fc8c8', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Alabama', 'AL', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('e7a439fd-4c8b-48aa-8cf0-901d0a2eda0f', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Alaska', 'AK', '-9.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('707e1ab1-93b7-459a-b9a6-013d83632aa6', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Arizona', 'AZ', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('cce2e009-2bb7-469e-a8b9-1fec9b0b98a9', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Arkansas', 'AR', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a1417b83-5e49-43a7-b857-04c3d2128eee', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'California', 'CA', '-8.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('40ecd308-5c6e-405f-873a-f81522f3a1ed', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Colorado', 'CO', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('074fe49a-027c-458a-94f7-d04a50ebbd08', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Connecticut', 'CT', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('9786e2df-cd0b-4166-b331-0ea029953630', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Delaware', 'DE', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('833ca197-a74c-41f6-829c-1271e6eb9e0f', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Florida', 'FL', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('0218dddf-e603-42bf-8519-0e985d4609db', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Georgia', 'GA', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('ba8cc9d1-10b1-42e5-b271-ce55f6eedcc5', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Hawaii', 'HI', '-10.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('945d885f-c1ee-4336-8e8d-39b5a0e9ebe4', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Idaho', 'ID', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('97dcdf97-212f-4189-8dbf-c0c58b39a873', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Illionois', 'IL', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('2624df2f-a946-4075-8740-31304ba93744', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Indiana', 'IN', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('ac980ad3-deb6-4d90-acf0-a1cbb692ab48', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Iowa', 'IA', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('23e72119-bdaa-4587-b712-c35501950a95', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Kansas', 'KS', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('19f4d9e7-f9b6-426c-ad20-ac220153539b', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Kentucky', 'KY', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a9d2316c-c88f-43b3-9fb8-51c1e9a412a4', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Louisiana', 'LA', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a06ae6b4-fcae-4d99-b3b1-489dc147c18e', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Maine', 'ME', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('b4c4b8c8-afd9-4187-9579-51917f147f79', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Maryland', 'MD', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('08c0fdb1-3032-4d62-848a-4312d9d3d7c2', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Massachusetts', 'MA', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('34c54030-f3b1-4856-b5e0-91527fd53600', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Michigan', 'MI', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('7914d4d3-78db-4a87-8dce-9d3dc81e12a0', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Minnesota', 'MN', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('83feb81b-7610-487c-8312-a77173594bc9', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Mississippi', 'MS', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('b2178db5-9198-4512-bfc8-dddda184271b', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Missouri', 'MO', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('4f3b2e39-a789-4024-9d23-3916ff8d249c', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Montana', 'MT', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('033aa806-6255-40db-9de8-297504fd2bc6', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Nebraska', 'NE', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('57c9d8f9-fb91-4365-be97-da0aed523469', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Nevada', 'NV', '-8.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a179ba7d-471e-444b-8a52-93093a40b787', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'New Hampshire', 'NH', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('541bf816-40fa-4c9f-9e3b-6bf2640c0051', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'New Jersey', 'NJ', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('935912b8-204e-4a24-8304-fe1047c29d47', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'New Mexico', 'NM', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a016c6ff-f3aa-4303-8e30-37372e2a8619', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'New York', 'NY', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('16c39419-a5cf-481c-8e10-944e83d9b687', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'North Carolina', 'NC', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('9332d939-237f-4c19-ad46-c8189cf717e5', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'North Dakota', 'ND', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a150883f-16d5-4c63-98ff-a3d3c2ebeede', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Ohio', 'OH', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('0dafb5a7-8341-4387-8afd-9314efd77644', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Oklahoma', 'OK', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('846cdf3c-9361-453e-8ca0-a4e0633ca0f9', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Oregon', 'OR', '-8.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('fec6bdaa-883e-457e-82a8-c1665b131c95', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Pennsylvania', 'PA', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('88d18e2b-293b-4be5-9fe9-f4de02f71bfa', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Rhode Island', 'RI', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('833f30b7-b7d0-4099-a268-83e2e54516eb', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'South Carolina', 'SC', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('842da858-72b4-4ed1-a50c-ed4f9a6d67d5', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'South Dakota', 'SD', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('191b76da-f4fb-49e7-8f62-1f56da25ba9a', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Tennessee', 'TN', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('7f94ee7f-5013-46d6-8612-10441040ae39', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Texas', 'TX', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('8c362fa7-ee5f-4afb-9536-704634732402', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Utah', 'UT', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('e3a869f0-e4c1-4595-95fa-d6880c385fef', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Vermont', 'VT', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('85594aab-5694-4930-aa32-8f432126b404', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Virginia', 'VA', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('f9430254-a80a-4e9e-ab1f-c3b511082521', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Washington', 'WA', '-8.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('add2749f-7b58-4d32-b3de-285b3b3ee7cc', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Washington, D.C.', 'DC', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('0e1bd403-f4f1-4957-994c-10eb4238d0e8', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'West Virginia', 'WV', '-5.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('bda30f03-20d2-4c39-b6df-4f59a410a40f', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Wisconsin', 'WI', '-6.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('a9f9247d-6cc0-43f3-af15-6c23cf82b359', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Wyoming', 'WY', '-7.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('f6b1c50b-ecd8-4477-9ae9-0b07449a97c2', '8/1/2007 12:00:00 AM', '8/1/2007 12:00:00 AM', 'Non-US', '', '0.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('46c8f1e1-adec-40af-afd5-01f0feabe716', '4/1/2009 12:00:00 AM', '4/1/2009 12:00:00 AM', 'Armed Forces Americas', 'AA', '0.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('5c24d676-a144-4a7d-84e7-8eb4550c83a9', '4/1/2009 12:00:00 AM', '4/1/2009 12:00:00 AM', 'Armed Forces Europe', 'AE', '0.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('d32b27f1-a105-4882-b6e6-fd797e343133', '4/1/2009 12:00:00 AM', '4/1/2009 12:00:00 AM', 'Armed Forces Pacific', 'AP', '0.0000', '', '213', 'United States');
Insert Into States (sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, dTimeZoneOffSet, sTimeZoneName, iCountryID, sCountryID) VALUES ('9d3fab32-9fb2-4a6c-98cb-7cf08da680c3', '4/28/2012 12:00:00 AM', '4/28/2012 12:00:00 AM', 'unkown', 'none', '', '', '213', 'United States');

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7670becf-124c-4970-8784-a843b8e71d8b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Pashto', 'ps', '1', 'Afghanistan', 'pus', 'ps-AF');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('77139af3-4ddc-4c99-88ce-22cd028f4c6e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Dari', 'prs', '1', 'Afghanistan', 'prs', 'prs-AF');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b099d438-8ce7-4ccc-b75e-fac299a97796', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Albanian', 'sq', '2', 'Albania', 'sqi', 'sq-AL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1086ce9e-3491-48a2-ba09-2f45d36707ea', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '3', 'Algeria', 'ara', 'ar-DZ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('84a50aff-0cd0-4825-8efe-9d7932e6ac64', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '10', 'Argentina', 'spa', 'es-AR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('f147c1a4-2d88-4353-a67c-658c9dfac860', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Armenian', 'hy', '11', 'Armenia', 'hye', 'hy-AM');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('667a3a9b-b92b-46c0-adef-9b9cbd5b8a9b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '14', 'Australia', 'eng', 'en-AU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1b3f325b-3eb1-42cc-b171-900789f0e936', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'German', 'de', '13', 'Austria', 'deu', 'de-AT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('c37dff0b-2e2d-487b-bfca-552b34429691', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '17', 'Bahrain', 'ara', 'ar-BH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('510d3164-099b-467c-8ecb-8c771f707133', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Bengali', 'bn', '18', 'Bangladesh', 'bng', 'bn-BD');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1526597c-89ad-4ff8-99c9-adaa9db9e33d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Basque', 'eu', '0', 'Basque', 'eus', 'eu-ES');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('539dd3cf-2f33-4a60-a5a5-85ec07ef7dd1', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Belarusian', 'be', '20', 'Belarus', 'bel', 'be-BY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5f9e7a69-4987-4719-9065-5a08c19cc257', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'French', 'fr', '21', 'Belgium', 'fra', 'fr-BE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('fba1c741-66e7-490b-9510-ca2da6c49c83', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Dutch', 'nl', '21', 'Belgium', 'nld', 'nl-BE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6fbdfdb1-14fd-4d92-919e-aa188fcaf0d9', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '22', 'Belize', 'eng', 'en-BZ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('9b9c54c3-bb81-4739-9319-dd2c8ce7d2a2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '218', 'Bolivarian Republic of Venezuela', 'spa', 'es-VE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('75ba1daa-37b9-44d3-9e16-d377b9aab325', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Quechua', 'quz', '26', 'Bolivia', 'qub', 'quz-BO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ab41f1a8-19da-48a9-bb5d-7241d6e6bb31', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '26', 'Bolivia', 'spa', 'es-BO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('72181299-86e4-4cae-be05-1dc3a9b73935', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Portuguese', 'pt', '29', 'Brazil', 'por', 'pt-BR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('fa7568eb-6cd9-490e-935f-a7c5e176a4ed', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Malay', 'ms', '247', 'Brunei Darussalam', 'msa', 'ms-BN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('60168582-2ccb-4ecd-b418-210130feab2b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Bulgarian', 'bg', '32', 'Bulgaria', 'bul', 'bg-BG');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e2bf306f-42d6-4113-ab15-1b8243fa4f01', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Khmer', 'km', '36', 'Cambodia', 'khm', 'km-KH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('319cdea1-29b5-403a-9740-4d83f50e03d3', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'French', 'fr', '38', 'Canada', 'fra', 'fr-CA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ac1ecb2a-cb82-4337-8778-349061c2b33a', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '38', 'Canada', 'eng', 'en-CA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6942e5b6-2afa-41dc-a2f3-5084c1b7d674', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '0', 'Caribbean', 'eng', 'en-029');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('65b05259-c958-4e65-bf1d-2252cc70f1c6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Catalan', 'ca', '0', 'Catalan', 'cat', 'ca-ES');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7636e49d-e733-4154-a0be-ab44eac409a0', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Mapudungun', 'arn', '42', 'Chile', 'arn', 'arn-CL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('bd4b96a0-a05d-4a03-85eb-24fa0d74c0df', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '42', 'Chile', 'spa', 'es-CL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('56a3a1bb-e073-4127-9b13-e5b0651a18bb', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '44', 'Colombia', 'spa', 'es-CO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d2e57399-8b78-4c27-b8ba-d4a2873100f0', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '49', 'Costa Rica', 'spa', 'es-CR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a494978b-9408-4aec-8240-ff302de602a1', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Croatian', 'hr', '51', 'Croatia', 'hrv', 'hr-HR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('c4639eeb-b2a2-4c0e-8773-6484b46fb2df', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'AZE', 'Azeri', '105', 'Azeri Cyrillic AZE', 'az', 'aze');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('341a454f-c0dd-493b-a1d5-0b7a4cc22737', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'BIH', 'Serbian', '179', 'Serbian Cyrillic BIH', 'sr', 'srn');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e2abf732-34e5-41d9-81cd-dd995c3905f7', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'BIH', 'Bosnian', '27', 'Bosnian Cyrillic BIH', 'bs', 'bsc');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('178a43dc-9465-4c9b-9f1e-010f93a6d527', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'MNG', 'Mongolian', '136', 'Mongolian Cyrillic', 'mn', 'mon');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('c6f77821-e035-4d87-8e9d-0e695d5d7773', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'MNE', 'Serbian', '179', 'Serbian Cyrillic MNE', 'sr', 'srp');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d9d6c743-d3cd-4e5f-9a54-2d5ffecc1307', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'SRB', 'Serbian', '179', 'Serbian Cyrillic SRB', 'sr', 'srp');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('52b358a5-d68e-4480-bd02-941dea66c6be', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'SCG', 'Serbian )', '179', 'Serbian Cyrillic SCG', 'sr', 'srp');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('74b6235d-f472-4323-bb37-ad074e8ef0c9', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'TAJ', 'Tajik', '198', 'Tajik Cyrillic', 'tg', 'tgk');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7db27103-63c0-4afd-aab6-ac5715da8af4', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'UZB', 'Uzbek', '216', 'Uzbek Cyrillic', 'uz', 'uzb');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e5902197-5251-408a-b377-587300614efc', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Czech', 'cs', '54', 'Czech Republic', 'ces', 'cs-CZ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('06f46708-da5d-43ef-9d07-44427c77426e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Danish', 'da', '55', 'Denmark', 'dan', 'da-DK');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b7ae83bc-28bd-44b3-b6f0-16f7a40d6790', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '58', 'Dominican Republic', 'spa', 'es-DO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7a80ffd9-5772-46d2-aceb-40c2902a3828', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Quechua', 'quz', '59', 'Ecuador', 'que', 'quz-EC');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('633e66d8-9242-4fef-9761-ebebde1b79c0', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '59', 'Ecuador', 'spa', 'es-EC');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a940cd3a-8287-42d2-b950-f8bf6df465a6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '60', 'Egypt', 'ara', 'ar-EG');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('2bd5a9b5-ac2f-4bb4-839f-9b21afebfa99', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '61', 'El Salvador', 'spa', 'es-SV');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6f7739ac-de28-4987-8825-cd6dff04013e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Estonian', 'et', '64', 'Estonia', 'est', 'et-EE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('3b73494e-64d1-4bf2-8e0f-6cde9f578b6c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Amharic', 'am', '65', 'Ethiopia', 'amh', 'am-ET');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('116d083e-d91e-4f4a-b3ca-6a62cf4518d6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Faroese', 'fo', '243', 'Faroe Islands', 'fao', 'fo-FO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4083fa08-db74-4023-b979-df568e94ee43', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Finnish', 'fi', '68', 'Finland', 'fin', 'fi-FI');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('562a84c9-4f7f-4ead-9d4d-47cc1edb7d3b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Swedish', 'sv', '68', 'Finland', 'swe', 'sv-FI');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('684e7e36-ec0b-433b-bbb9-0e8b0d727909', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '"Sami', ' Northern"', '68', 'Finland', 'se', 'smg');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7b94a17f-d8c4-46da-b9a9-785da8d5e00e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '"Sami', ' Skolt"', '68', 'Finland', 'sms', 'sms');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('c70f4133-8518-4bfc-997d-4bc2963db1f8', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '"Sami', ' Inari"', '68', 'Finland', 'smn', 'smn');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('dbfe6c24-76d8-4822-acdf-0c89df817c5d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Macedonian', 'mk', '223', 'Former Yugoslav Republic of Macedonia', 'mkd', 'mk-MK');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1a2808fd-3683-41f7-a2eb-e6b31199cc09', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'French', 'fr', '69', 'France', 'fra', 'fr-FR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('c5dc1b6b-527a-40b2-8ec6-37d905a976f2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Breton', 'br', '69', 'France', 'bre', 'br-FR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5e6e3750-6227-4375-8f31-f23d975ee28a', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Occitan', 'oc', '69', 'France', 'oci', 'oc-FR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('8aaf536e-e1ae-4523-8f90-cdc517ccc988', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Corsican', 'co', '69', 'France', 'cos', 'co-FR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7877b168-9f44-4202-bec8-2360c4dfdfc2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Alsatian', 'gsw', '69', 'France', 'gsw', 'gsw-FR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d10e23e9-4146-4933-af60-e0dfa8a7e493', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Galician', 'gl', '0', 'Galician', 'glg', 'gl-ES');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('96225186-1212-48a8-aa54-c27cc3680de5', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Georgian', 'ka', '75', 'Georgia', 'kat', 'ka-GE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e3c48920-48ff-4f27-a537-9f4921a63604', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'German', 'de', '76', 'Germany', 'deu', 'de-DE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('0b6bae89-a05e-495f-854c-eb7781d4c872', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Upper Sorbian', 'hsb', '76', 'Germany', 'hsb', 'hsb-DE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('8f468173-b6f5-4aa4-95a2-4be6f4fe0ed6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Lower Sorbian', 'dsb', '76', 'Germany', 'dsb', 'dsb-DE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('24a23adc-a02e-48cb-bcaa-5310c91b1e4c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Greek', 'el', '79', 'Greece', 'ell', 'el-GR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4121a289-50e8-41ac-8b29-4992b2921755', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Greenlandic', 'kl', '80', 'Greenland', 'kal', 'kl-GL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('0a50f3ac-7bb1-492b-b838-81e5816f62ac', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'K''iche', 'qut', '84', 'Guatemala', 'qut', 'qut-GT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ed45c0c9-ff0c-478f-9fee-a0d91bb93d35', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '84', 'Guatemala', 'spa', 'es-GT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b9dbc770-1cbf-401c-b7cc-82ef690ab00c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '90', 'Honduras', 'spa', 'es-HN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('3638a270-ebaf-4d11-8091-621a6ac37983', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Hungarian', 'hu', '92', 'Hungary', 'hun', 'hu-HU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('bba3a766-9941-41c1-9b14-616547cefe69', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Icelandic', 'is', '93', 'Iceland', 'isl', 'is-IS');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4d9d51e8-7af3-4290-a596-eb64afeb459d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Hindi', 'hi', '94', 'India', 'hin', 'hi-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('42885c23-b916-4aeb-9432-aa4eb3d5fcb2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Bengali', 'bn', '94', 'India', 'bng', 'bn-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b1f9e3ab-457a-45c2-ad4c-ed5aeff13044', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Punjabi', 'pa', '94', 'India', 'pan', 'pa-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('0b680821-be70-46e4-a154-bf9b40db1b77', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Gujarati', 'gu', '94', 'India', 'guj', 'gu-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e738b019-3fca-496f-b76c-0097c991260f', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Oriya', 'or', '94', 'India', 'ori', 'or-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6fadd397-0bbc-4443-ae3a-3de1a6a86070', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Tamil', 'ta', '94', 'India', 'tam', 'ta-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e3b4d834-cca2-4775-9699-d380c045411a', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Telugu', 'te', '94', 'India', 'tel', 'te-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('787d7c61-eb97-43c1-8087-8f8efb39dabb', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Kannada', 'kn', '94', 'India', 'kan', 'kn-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1ec473fe-d356-414b-9549-4da197897da9', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Malayalam', 'ml', '94', 'India', 'mym', 'ml-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('19a3de5a-1b99-4276-8b10-73cde6395b6d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Assamese', 'as', '94', 'India', 'asm', 'as-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('77981739-7009-48f4-ad45-6fb95e4b816b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Marathi', 'mr', '94', 'India', 'mar', 'mr-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a3726f19-edb3-4b26-92e5-b49c961b7e6c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Sanskrit', 'sa', '94', 'India', 'san', 'sa-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6f55fab4-db0b-4f92-894a-087ff4842ba6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Konkani', 'kok', '94', 'India', 'kok', 'kok-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1d01a34c-54c2-47ac-a946-14c9beac45de', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '94', 'India', 'eng', 'en-IN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a921f27e-4f9b-4d5c-920c-34bd69233166', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Indonesian', 'id', '95', 'Indonesia', 'ind', 'id-ID');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5158c02b-b384-4ce1-8f47-2426248000fa', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Persian', 'fa', '96', 'Iran', 'fas', 'fa-IR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('790caffb-519b-459e-9d97-e07a937a7eab', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '97', 'Iraq', 'ara', 'ar-IQ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a51065fb-882a-492c-b32c-14828d408944', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Irish', 'ga', '98', 'Ireland', 'gle', 'ga-IE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7a884eef-7056-47a4-9f83-1820e184f670', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '98', 'Ireland', 'eng', 'en-IE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('dc24aedc-5489-4b98-8b92-b8eeed853213', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Urdu', 'ur', '154', 'Islamic Republic of Pakistan', 'urd', 'ur-PK');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('08a951ee-98d8-4997-98c1-4febbb1fc87d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Hebrew', 'he', '99', 'Israel', 'heb', 'he-IL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('075a4fce-49d4-48c2-b527-79a3fdea2759', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Italian', 'it', '100', 'Italy', 'ita', 'it-IT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d04ed265-cb38-44f5-a430-313268ee68ab', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '102', 'Jamaica', 'eng', 'en-JM');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('eaf9c765-c485-474d-aabd-d412338230cc', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Japanese', 'ja', '103', 'Japan', 'jpn', 'ja-JP');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1400a617-74fc-4073-9203-f856a6d98405', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '104', 'Jordan', 'ara', 'ar-JO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ea32a67c-5abf-49dc-85b3-2f103c689845', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Kazakh', 'kk', '105', 'Kazakhstan', 'kaz', 'kk-KZ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ee2979a9-5139-4a12-a6ed-2cb553181ed3', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Kiswahili', 'sw', '106', 'Kenya', 'swa', 'sw-KE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('0c6173b2-5a23-4b3e-a8b6-323f8c222fcf', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Korean', 'ko', '188', 'Korea', 'kor', 'ko-KR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('638f962c-2f58-4acf-b0f8-478753652695', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '108', 'Kuwait', 'ara', 'ar-KW');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4f373425-836a-4fd2-b6a8-3678a92ab944', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Kyrgyz', 'ky', '109', 'Kyrgyzstan', 'kir', 'ky-KG');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('faeacaf2-7ff0-4cfb-8d8d-7ef4514884ed', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Lao', 'lo', '110', 'Lao P.D.R.', 'lao', 'lo-LA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('346cf0ba-0d05-42cf-9c48-1d356f1b3bd4', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'DZA', 'Tamazight', '216', 'Uzbekistan', 'tzm', 'tzm');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b6371620-f4a3-4ec4-b830-c545b5261751', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'AZE', 'Azeri', '216', 'Uzbekistan', 'az', 'aze');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4629c7af-5c44-48b8-b304-8925d8f26293', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'BIH', 'Croatian', '216', 'Uzbekistan', 'hr', 'hrb');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5db3ab49-75d1-4162-a908-dcc198ba3a98', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'BIH', 'Bosnian', '216', 'Uzbekistan', 'bs', 'bsb');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d03b1a4a-5093-4b62-8809-6a817a83bd01', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'BIH', 'Serbian', '216', 'Uzbekistan', 'sr', 'srs');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('05cbb42c-b275-4bcd-9a9c-e9bed626a037', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'CAN', 'Inuktitut', '216', 'Uzbekistan', 'iu', 'iku');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('eacd7b22-e263-40dd-864a-af114e52d79f', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'MNE', 'Serbian', '216', 'Uzbekistan', 'sr', 'srp');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a9062285-e38e-4e64-85f2-5365a14dca7c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'NGA', 'Hausa', '216', 'Uzbekistan', 'ha', 'hau');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('01108a62-d765-4416-8878-a7fafcd54e13', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'SRB', 'Serbian', '216', 'Uzbekistan', 'sr', 'srp');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ed2173ad-10ea-4b88-aaef-1f059bad0c99', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'SCG', 'Serbian )', '216', 'Uzbekistan', 'sr', 'srp');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('be54d9c4-62ad-4c68-bf7b-1ef532214e9d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'UZB', 'Uzbek', '216', 'Uzbekistan', 'uz', 'uzb');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('c3ab0c95-dde2-4d6f-ba31-270c1e72ecaa', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Latvian', 'lv', '111', 'Latvia', 'lav', 'lv-LV');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('fb022fd9-6dad-477b-b746-0b4012ae490e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '112', 'Lebanon', 'ara', 'ar-LB');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('f97c65dc-4fcb-443e-919f-3493fd58ad8e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '115', 'Libya', 'ara', 'ar-LY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('2b2e3256-a602-435c-ae7d-69bb0ff68981', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'German', 'de', '116', 'Liechtenstein', 'deu', 'de-LI');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6c01b856-2be5-4acc-8d0f-06a80dc5e046', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Lithuanian', 'lt', '117', 'Lithuania', 'lit', 'lt-LT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6428140f-6980-4cd8-b892-3a3004707c0d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Luxembourgish', 'lb', '118', 'Luxembourg', 'ltz', 'lb-LU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('780f5242-0b31-42af-8bf3-5342271f9620', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'German', 'de', '118', 'Luxembourg', 'deu', 'de-LU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('dba94033-77a5-4b83-af08-7d8169f020a5', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'French', 'fr', '118', 'Luxembourg', 'fra', 'fr-LU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('f14bf0f2-3ba5-4071-9ed0-ece4b034c876', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Malay', 'ms', '123', 'Malaysia', 'msa', 'ms-MY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('44383c2b-5523-43d6-bf45-291d53b0a977', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '123', 'Malaysia', 'eng', 'en-MY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('9d37ed12-0181-42c0-9e2a-3df35f3652e4', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Divehi', 'dv', '124', 'Maldives', 'div', 'dv-MV');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4bd1b9b7-6236-4f9b-9e1c-05e21a7ab0dc', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Maltese', 'mt', '126', 'Malta', 'mlt', 'mt-MT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ac438007-9e43-48e8-9f06-07b279085b60', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '132', 'Mexico', 'spa', 'es-MX');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('8a53a345-93a9-4adf-8527-368d5d89f05b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Mohawk', 'moh', '0', 'Mohawk', 'moh', 'moh-CA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b253dd2c-4daa-457b-93c0-b21ee401ac9d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'French', 'fr', '135', 'Monaco', 'fra', 'fr-MC');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('2a128969-02ed-4070-ba18-011a09431abc', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '138', 'Morocco', 'ara', 'ar-MA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('aacba29d-da65-4bcb-a341-053dbef307e1', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Nepali', 'ne', '142', 'Nepal', 'nep', 'ne-NP');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('aad8bdb3-cf7d-4d02-b026-09fee95a446b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Dutch', 'nl', '143', 'Netherlands', 'nld', 'nl-NL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('fad943df-3408-4ea9-b7f7-1e52259ebfb3', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Frisian', 'fy', '143', 'Netherlands', 'fry', 'fy-NL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ac29a649-ea88-44f7-83be-e8007d2cec12', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Maori', 'mi', '146', 'New Zealand', 'mri', 'mi-NZ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('351f9bbd-9f69-418e-a30a-03fe5eb16785', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '146', 'New Zealand', 'eng', 'en-NZ');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('9c560eb8-5d06-419b-a1de-6559191490ef', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '147', 'Nicaragua', 'spa', 'es-NI');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1f3de83f-2d02-45ca-97a8-acd2ac270376', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Yoruba', 'yo', '149', 'Nigeria', 'yor', 'yo-NG');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e93fc683-97cc-4926-bbf8-2976a61a7341', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Igbo', 'ig', '149', 'Nigeria', 'ibo', 'ig-NG');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b8f4f4f9-8c87-4189-aba8-a9c9ea2752d3', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Norwegian', 'Bokml', '152', 'Norway', 'nb', 'nob');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7183fabd-f9ef-43f2-8672-7a88661dee5e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Sami', ' Northern', '152', 'Norway', 'se', 'sme');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e3802162-66ee-43bc-b7fa-4ad01cf30bcb', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Norwegian', ' Nynorsk', '152', 'Norway', 'nn', 'nno');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('311a983a-cdb7-41d5-ac04-728560bb2291', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Sami', ' Lule', '152', 'Norway', 'smj', 'smj');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b07dd617-9d9d-4d88-ab1d-c4b0ed3eae5b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Sami', ' Southern', '152', 'Norway', 'sma', 'sma');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a06d5d9c-b6aa-4275-95a4-b107dd305691', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '153', 'Oman', 'ara', 'ar-OM');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b041bb31-cf72-4fe0-80ad-cb0ba04a9873', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '156', 'Panama', 'spa', 'es-PA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('543a4f86-c5c4-4eaa-9e30-3b6d24fbe32e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '158', 'Paraguay', 'spa', 'es-PY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('881611bf-e028-4133-9992-3d142ce69a92', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Quechua', 'quz', '159', 'Peru', 'qup', 'quz-PE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('67294a25-975b-43f8-9d53-f8234df7f6df', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '159', 'Peru', 'spa', 'es-PE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1dc32a24-2d12-48ec-8c9a-5321631cb499', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Filipino', 'fil', '160', 'Philippines', 'fil', 'fil-PH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('42f19e63-bb62-4401-96c6-c18d2fa555d0', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Polish', 'pl', '162', 'Poland', 'pol', 'pl-PL');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7d3f1162-243c-4650-ba59-57f57f813a83', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Portuguese', 'pt', '163', 'Portugal', 'por', 'pt-PT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('85bd2788-f19f-4578-b92c-80780b41bb5b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Tibetan', 'bo', '43', 'PRC', 'bod', 'bo-CN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('0cd16f6c-268e-4738-8f56-d71b20a1be9f', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Yi', 'ii', '43', 'PRC', 'iii', 'ii-CN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('2642a268-b57f-49a0-b5d8-e1fe8c257fc6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Uyghur', 'ug', '43', 'PRC', 'uig', 'ug-CN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('56ef4699-64ab-4716-991f-78c8b7a4d767', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '164', 'Puerto Rico', 'spa', 'es-PR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5f371c8b-fe34-45cc-9462-fe255d696cb9', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '165', 'Qatar', 'ara', 'ar-QA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a23d0ddc-8164-4e43-a16e-853063d542c7', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '160', 'Republic of the Philippines', 'eng', 'en-PH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('eb8eecc1-af9c-48e9-92fe-dd3e52244af2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Romanian', 'ro', '167', 'Romania', 'ron', 'ro-RO');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('455ac35b-2907-4617-816f-3cd48da68f7d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Russian', 'ru', '168', 'Russia', 'rus', 'ru-RU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d7e6a4b1-87a9-4c07-aa60-d1121139cc1c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Tatar', 'tt', '168', 'Russia', 'tat', 'tt-RU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('24d9b04c-d094-41be-9108-4d24b4abfa71', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Bashkir', 'ba', '168', 'Russia', 'bak', 'ba-RU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e59900f9-db81-454c-989b-66a174cd1e1c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Yakut', 'sah', '168', 'Russia', 'sah', 'sah-RU');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('998cc24e-0ace-4a49-9f84-efb0d22cde08', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Kinyarwanda', 'rw', '177', 'Rwanda', 'kin', 'rw-RW');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('940be591-e098-4c9b-8f42-36b704dcde4e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '0', 'Saudi Arabia', 'ara', 'ar-SA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b7e8eabf-ccaf-435a-95d8-fdc2ffaa2e57', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Wolof', 'wo', '178', 'Senegal', 'wol', 'wo-SN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('f949106e-1b9f-4cee-871c-c2903d3ac9c6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'CHN', 'Chinese', '43', 'China', 'zh', 'zho');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('1b887d93-858b-4568-b350-28d5ef8671c0', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'SGP', 'Chinese', '43', 'China', 'zh', 'zho');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('47192024-9bc9-4132-89ca-e32425d9cc24', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '182', 'Singapore', 'eng', 'en-SG');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('89113fcb-1838-467e-b1ab-c71fa069228d', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Slovak', 'sk', '184', 'Slovakia', 'slk', 'sk-SK');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('419e2ddc-7f81-426e-b2fa-7cb4e4ea2efd', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Slovenian', 'sl', '184', 'Slovenia', 'slv', 'sl-SI');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('f5b47a55-3b44-4e23-b3e4-8331570a8cff', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Setswana', 'tn', '187', 'South Africa', 'tsn', 'tn-ZA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5f2d5439-2f8e-4900-bf72-5cf2d244981b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'isiXhosa', 'xh', '187', 'South Africa', 'xho', 'xh-ZA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('9bc8ea0e-ea53-4f2c-a3ff-3748469c995c', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'isiZulu', 'zu', '187', 'South Africa', 'zul', 'zu-ZA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d8e40d4d-1eec-471d-96fc-8856f301bae9', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Afrikaans', 'af', '187', 'South Africa', 'afr', 'af-ZA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('4eab28d2-6aaf-4151-bbec-775abf0b3299', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Sesotho sa Leboa', 'nso', '187', 'South Africa', 'nso', 'nso-ZA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('89bc1edf-528f-448d-a198-cae6d6d1b419', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '187', 'South Africa', 'eng', 'en-ZA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('25cb88ef-bdaf-4f37-b9fd-4c47b332b8bf', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'ESP', 'Spanish', '189', 'Spain', 'es', 'spa');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('8ddd0482-17d4-4df7-979a-655213de9b44', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Sinhala', 'si', '190', 'Sri Lanka', 'sin', 'si-LK');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('69bda7b8-8f12-4095-ac8f-0f20b29847a2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Swedish', 'sv', '194', 'Sweden', 'swe', 'sv-SE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('d69785af-d873-489e-8bc0-33c77bad3703', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '"Sami', ' Northern"', '194', 'Sweden', 'se', 'smf');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b5dcd813-c307-4fcc-92b6-1037e5f6cad4', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '"Sami', ' Lule"', '194', 'Sweden', 'smj', 'smk');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('3c836b66-5448-4f59-aaf4-4fb9fcc020a1', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '"Sami', ' Southern"', '194', 'Sweden', 'sma', 'smb');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5d3731f8-72fd-49ef-a068-1cc28c78f569', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Romansh', 'rm', '195', 'Switzerland', 'roh', 'rm-CH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e690b82e-e78f-44a5-ab5b-37b9a9bd90d3', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'German', 'de', '195', 'Switzerland', 'deu', 'de-CH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a330313c-59e3-4abc-8ae5-ba3e2205825e', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Italian', 'it', '195', 'Switzerland', 'ita', 'it-CH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('125bd60d-c08f-40e0-a51f-28ff011cc8f6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'French', 'fr', '195', 'Switzerland', 'fra', 'fr-CH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('67cca2ed-7c89-4eec-b63d-b1fa1e7e2a78', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'CAN', 'Inuktitut', '0', 'Syllabics', 'iu', 'iku');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('6969c7bf-d5f1-44e3-a750-363810c6a977', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Syriac', 'syr', '196', 'Syria', 'syr', 'syr-SY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('13855283-f8c8-450d-9170-5df9726827f6', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '196', 'Syria', 'ara', 'ar-SY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('ad9ba81f-01ed-4283-9bd8-1243378a8325', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Thai', 'th', '200', 'Thailand', 'tha', 'th-TH');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b92bc2ce-5acd-418e-99ba-5eef9ef33e8b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'CHN', 'Mongolian', '136', 'Mongolian', 'mn', 'mon');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('afd74b75-eac8-4576-9e75-9576ddd2b32f', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'HKG', 'Chinese', '43', 'Chinese', 'zh', 'zho');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('3b13d896-c6fa-47e1-be38-3aeeae310bb2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'MAC', 'Chinese', '43', 'Chinese', 'zh', 'zho');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('5159a8a8-c72a-48af-bcb5-eaf462929d59', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'TWN', 'Chinese', '43', 'Chinese', 'zh', 'zho');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('40967fca-5068-4e11-b646-df7fc53d537b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '203', 'Trinidad and Tobago', 'eng', 'en-TT');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('212e15af-514c-403a-9338-12138c1b7481', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '204', 'Tunisia', 'ara', 'ar-TN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b43a3695-e44b-4ec3-b6f6-5d3e405f2edf', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Turkish', 'tr', '205', 'Turkey', 'tur', 'tr-TR');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('7e9462e9-eef4-4a57-aa7a-524843a8947b', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Turkmen', 'tk', '206', 'Turkmenistan', 'tuk', 'tk-TM');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('56dea4f7-24b6-4bfb-a736-af0a92364fc2', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '211', 'U.A.E.', 'ara', 'ar-AE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('443ed583-b81b-4073-a914-5d45ffabd9bd', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Ukrainian', 'uk', '210', 'Ukraine', 'ukr', 'uk-UA');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('9caf5a0e-d81d-4637-8d2b-89fe580cf0a0', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Welsh', 'cy', '212', 'United Kingdom', 'cym', 'cy-GB');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b957ef88-eb21-4669-8182-6782124980a9', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Scottish Gaelic', 'gd', '212', 'United Kingdom', 'gla', 'gd-GB');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a6a77510-191c-474f-8149-254646d9e7fb', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '212', 'United Kingdom', 'eng', 'en-GB');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('02d7d5e8-a0eb-4da0-8d23-bf6ab3b1a2ea', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '213', 'United States', 'eng', 'en-US');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('b929514c-4e4d-4734-802c-ba727e6b911a', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '213', 'United States', 'spa', 'es-US');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('486afded-c24b-4323-8ca7-b3b76ce76471', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Spanish', 'es', '215', 'Uruguay', 'spa', 'es-UY');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('0c567643-8bfc-4393-b6d7-b1097bd36467', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Vietnamese', 'vi', '219', 'Vietnam', 'vie', 'vi-VN');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('e37c31d4-a77f-4af0-80dc-0969a1b31a89', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'Arabic', 'ar', '222', 'Yemen', 'ara', 'ar-YE');
Insert Into CountryLanguages ( sControl, dtDateCreated, dtDateUpdated, sName, sAbbreviation, iCountryID, sCountryID, sThreeAbbreviation, sCultorInfoCode) VALUES ('a0e95db4-1aff-43dd-b00a-6e172efb4516', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', 'English', 'en', '226', 'Zimbabwe', 'eng', 'en-ZW');



/* Begin Seeding the DB with start data */
Insert Into Roles (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDiscription, sAccessKey, dKey, bIsDefaultForNewRegistration, sDefaultAccessLevel) VALUES ('1', 'Default', '566feb09-39a1-43d4-b215-9525cbe5a572', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Admin', '', '5041b07e-5149-49da-8b04-55088c35f5ce', '-1.0000', 'False', 'EditFull');
Insert Into Roles (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDiscription, sAccessKey, dKey, bIsDefaultForNewRegistration, sDefaultAccessLevel) VALUES ('1', 'Default', '6485766e-72b0-4fc6-b529-56b22f4c0883', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Author', '', '53076494-f564-490d-b940-3d883f8115a3', '-1.0000', 'False', 'EditFull');
Insert Into Roles (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDiscription, sAccessKey, dKey, bIsDefaultForNewRegistration, sDefaultAccessLevel) VALUES ('1', 'Default', '493fb095-e21e-4783-898a-45edc8a0d2b7', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Contributor', '', '4d667507-7d36-4506-a0ce-4ac80645c15d', '-1.0000', 'True', 'EditAddNoDelete');
Insert Into Roles (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDiscription, sAccessKey, dKey, bIsDefaultForNewRegistration, sDefaultAccessLevel) VALUES ('1', 'Default', '7ba9c420-48cc-48c6-b9a9-b018dbe050b7', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Editor', '', 'c7239048-b01a-44e8-b0ef-9fa401aab76f', '-1.0000', 'False', 'EditNoAddNoDelete');
Insert Into Roles (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDiscription, sAccessKey, dKey, bIsDefaultForNewRegistration, sDefaultAccessLevel) VALUES ('1', 'Default', '0ee4d9fb-5925-4549-a933-bec396f36b14', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Subscriber', '', 'e5c538dd-e475-4e3a-8957-0ca232d32048', '-1.0000', 'False', 'EditAddNoDelete');

Insert Into SystemMaster (sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sAccessKey, sLicKey) VALUES ('b1cfa29c-641c-45de-a6be-279b68bf1521', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Default', '7743972a-bbb0-441c-b996-0c0a8db4183e', '9eecf974-ee05-42c1-bb92-eb95e3d1f379');

Insert Into SystemModules (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDescription, sAccessKey, dKey, sPathURL, sPathURI, sAuthKey, sLicKey, sUserName, sPassword) VALUES ('1', 'Default', 'fe1ec3ad-dfc9-488e-ac2f-3645b28efdbe', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Admin Module', 'Module to allow for the administration of the CMS System', 'd97b38d4-6ca7-4af5-bc6d-35ed7f8aca58', '-1.0000', '', '', '', '', '', '');
Insert Into SystemModules (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDescription, sAccessKey, dKey, sPathURL, sPathURI, sAuthKey, sLicKey, sUserName, sPassword) VALUES ('1', 'Default', '3327301d-dc99-4970-87b4-15dfa35dfc4c', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'User Portal', 'Module to allow site users to maintain their profile and information', 'cadfca40-685a-4371-91a9-9a5693f6dec4', '1.0000', '', '', '', '', '', '');

Insert Into Users (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sAccessKey, sUserName, sPassword, sPrefix, sFName, sMName, sLName, bAccLocked, iPrimaryRole, sPrimaryRole, sAvitarImgURL, bCurrentlyLoggedIn, iReputationLevel, sKeyWords, sScreenName, sProfileDiscription, iGenderTypeID, sGenderTypeID, bPrivateProfile, dtDateOfBirth, sActivationKey, dtLastLoggedIn, bAccountActivated, sAddress1, sAddress2, sAddress3, sCity, iStateID, sStateID, sPostalCode, iCountryID, sCountryID, sPrimaryEMail, sPrimaryPhone, bOptInMarketing, sBillAddress1, sBillAddress2, sBillAddress3, sBillCity, iBillStateID, sBillStateID, sBillPostalCode, iBillCountryID, sBillCountryID, IPAddressess) VALUES ('1', 'Default', 'd7f8078c-d026-44bd-a19d-c879c4770740', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'e770fbdf-e2d1-4374-a926-8b091e1d36d6', 'admin', 'vhKa0bbLlhzSTLiMbdIyiA==', '', 'Ssytem', '', 'Admin', 'False', '1', 'Admin', '', 'False', '', '', 'Admin', '', '', '', 'True', '1/31/1901 12:00:00 AM', '23f63e78-9d8f-4306-a9a9-ef2580ca5380', '4/2/2014 12:00:00 AM', 'True', '', '', '', '', '', '', '', '', '', 'info@ariestco.com', 'info@ariestco.com', 'True', '', '', '', '', '', '', '', '', '', '');

Insert Into UserRoles (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, iRoleID, sRoleID) VALUES ('1', 'Default', 'd27b83fc-bb16-4e24-9d67-93f392d36f51', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', '1', 'Admin');

Insert Into WebSite (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sAccesskey, bSubScriptionBased, iRequiredRoleID, sRequiredRoleID, iDefaultTemplateID, sDefaultTemplateID, iDefaultBlogID, sDefaultBlogID, sDefaultMetaTags, sDefaultClassification, sDefaultDescription, sDefaultKeyWords, sSupportEmail, sWebMasterEmail, dUniqueVisitors, dVisits, dPageViews, bRestrictAccess) VALUES ('1', 'Default', '3327301d-dc99-4970-87b4-15dfa35dfc4c', '4/2/2014 12:00:00 AM', '4/2/2014 12:00:00 AM', '1', 'Admin', '1', 'Admin', 'Default', '4de05bc2-9fd0-415d-93c5-1dae9a1f7300', 'False', '', '', '1', 'Default', '', '', '', '', '', '', 'info@ariestco.com', 'info@ariestco.com', '', '', '', '');


Insert Into WebSitePageTemplates (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDescription, sThumbNailImageURL, sVersion, sLocationURL, sLocationURI, sTemplateBody, iLanguageID, sLanguageID) VALUES ('1', 'Default', '559ea5f2-588f-4c72-8674-5e6f4695e2c5', '4/2/2014 12:00:00 AM', '8/22/2015 10:54:28 AM', '1', 'Admin', '1', 'Admin', 'Default', '', '', '1.0', '~\Views\Shared\_Default.cshtml', '~/Views/Shared/_Default.cshtml', '', '0', '');


Insert Into WebSitePageTemplatesPage (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, sDescription, sThumbNailImageURL, sVersion, sTemplateBody, iLanguageID, sLanguageID) VALUES ('1', 'Default', 'ac25a255-9f51-40cc-b4ea-aa1f39797570', '1/25/2016 6:33:12 AM', '1/25/2016 6:33:12 AM', '0', '', '0', '', 'Index', '', '', '', '
        	<acms><!--MAINHeader--></acms>



        	<acms><!--MAINBODY--></acms>


        	<acms><!--MAINFOOTER--></acms>

', '205', 'US English');



Insert Into WebSitePageTemplateZones (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, iTypeID, sTypeID, sCodeName, sDefaultValue, iLanguageID, sLanguageID, bPrimaryContentArea) VALUES ('1', 'Default', '48e5558c-7ecb-4bb1-bdbc-11e3e1973f7b', '2/19/2015 7:19:43 PM', '6/8/2015 1:10:06 PM', '0', '', '1', 'Ssytem Admin', 'MAINHeader', '0', '', '<acms><!--MAINHeader--></acms>', '
    <nav class="navbar navbar-fixed-top navbar-light navbar-background2">
  <div class="container-fluid"> 
    <div id="fullscreennav"> 
    	<div class="col-xs-2 text-xs-left">
        	<a href="~/"><img src="~/themes/acms/images/AriesCMS_orange.png" alt="" class="img-fluid" /></a>
    	</div>
    	<div class="col-xs-8 text-xs-center">
    		<h3 class="" style="font-size:1.3em;">Open Source<strong>.NET C# Content Management Platform</strong> For Programmers, by Progrmmes</h3> 
            <ul class="list-inline">
            	<li class="list-inline-item text-xs-center"><a class="text-bold" href="~/">HOME</a></li>
            	<li class="list-inline-item text-xs-center"><a class="text-bold" href="~/admin">ADMIN PORTAL</a></li>
            	<li class="list-inline-item text-xs-center"><a class="text-bold" href="~/portal">USER PORTAL</a></li>
            </ul>           
    	</div>  
    	<div class="col-xs-2 text-xs-right">
    		<a href="tel:1-877-262-2830" class="text-bold">(877) 262-2830</a><br/>
            <a href="~/portal" class="text-bold">SIGN IN</a>
            <!--<br/>
            <ul class="list-inline">
            	<li class="list-inline-item"><a href=""><span class="fa fa-facebook">&nbsp;</span></a></li>
            	<li class="list-inline-item"><a href=""><span class="fa fa-linkedin">&nbsp;</span></a></li>
            	<li class="list-inline-item"><a href=""><span class="fa fa-twitter">&nbsp;</span></a></li>
            </ul>-->
    	</div>         
    </div>
    <div id="mobilenav">
    	<div class="row">  
            <div class="col-xs-12">
                <center><a href="#home"><img src="~/themes/acms/images/AriesCMS_orange.png" alt="" class="img-fluid" /></a></center>
            </div>
        </div>
    	<div class="row">
        <div class="col-xs-12">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>    	
            <div class="collapse navbar-collapse" id="defaultNavbar1">
                <ul class="nav navbar-nav">
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/">HOME</a></li>
                  <li class="divider"></li>
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/howitworks">LEARN MORE</a></li>
                  <li class="divider"></li>
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/signup?id=3">SIGN UP</a></li>
                  <li class="divider"></li>
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/faq">FAQ</a></li>
                  <li class="divider"></li>
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/videos">VIDEOS</a></li>
                  <li class="divider"></li>
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/blog">BLOG</a></li>
                  <li class="divider"></li>
                  <li style="border-bottom:solid 1px #513031; text-align:center;"><a class="text-bold" href="~/contactus">CONTACT US</a></li>
                </ul>
            </div>
        </div> 
        </div>
    </div>
  </div>
  <!-- /.container-fluid --> 
</nav>', '205', 'US English', 'False');

Insert Into WebSitePageTemplateZones (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, iTypeID, sTypeID, sCodeName, sDefaultValue, iLanguageID, sLanguageID, bPrimaryContentArea) VALUES ('1', 'Default', '532fa03d-2c1e-4946-9f3f-846affc2d0af', '2/19/2015 7:19:43 PM', '6/8/2015 1:10:06 PM', '0', '', '1', 'Ssytem Admin', 'MAINBODY', '0', '', '<acms><!--MAINBODY--></acms>', '
<div class="container-fluid">
	<div class="row">
    	<div class="col-lg-12 col-md-12 col-xs-12 toppadding">
          <p>&nbsp;</p>
        </div>
    </div>
      <div class="row rwHeight">         
        <div class="col-lg-6 col-md-6 col-xs-12 offset-lg-3 offset-md-3">       
          <center><h1>Welcome to the Aries CMS</h1></center>
          <center><h4><a href="~/portal">Click here to enter your portal.</a></h4></center>
        </div>        
      </div>
</div>', '205', 'US English', 'True');

Insert Into WebSitePageTemplateZones (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sName, iTypeID, sTypeID, sCodeName, sDefaultValue, iLanguageID, sLanguageID, bPrimaryContentArea) VALUES ('1', 'Default', 'c8b49d39-efae-4102-a829-4543e3498870', '2/19/2015 7:20:57 PM', '6/8/2015 1:07:23 PM', '0', '', '1', 'Ssytem Admin', 'MAINFOOTER', '0', '', '<acms><!--MAINFOOTER--></acms>', '
<footer class="footer">
      <div class="row">    
          <div class="col-lg-7 col-md-7 col-xs-7 offset-lg-1 offset-md-1 offset-xs-1">  
            <span class=""> 
                <a class="text-bold" href="~/">HOME</a> 
                <a class="text-bold" href="~/admin">ADMIN PORTAL</a>
                <a class="text-bold" href="~/portal">USER PORTAL</a>
            </span> 
          </div>       
          <div class="col-lg-2 col-md-2 col-xs-2 offset-lg-2 offset-md-2 offset-xs-2 text-lg-center text-md-center text-xs-center">  
            <span class=""> 
                <a class="" href="~/portal">SIGN IN</a>
            </span> 
          </div>   
      </div>   
      <div class="row">    
          <div class="col-lg-3 col-md-3 col-xs-3 offset-lg-1 offset-md-1 offset-xs-1">  
            <span style="color:#9F9B9B; font-weight:bold; font-size:0.95em;">&copy; 2016-2017 Aries TCO, Inc.</span>
          </div>       
          <div class="col-lg-3 col-md-3 col-xs-3offset-lg-3 offset-md-3 offset-xs-3">  
               
          </div>   
      </div>
  <hr>
</footer>', '205', 'US English', 'False');


/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

Insert Into WebSitePage (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sPageName, sPageNavigationName, sPageNavigationURL, sPageTitle, sMetaTags, sClassification, sPageDescription, sKeyWords, bIsLive, dtStart, dtEnd, iSiteTemplateID, sSiteTemplateID, sSiteTemplateURI, sSiteTempalteURL, sLoadIncludeURI, bLoadPartialPage, iZoneID, sZoneID, bRestrictAccess, iLanguageID, sLanguageID, iSiteTemplatePageID, sSiteTemplatePageID) VALUES ('1', '', 'dd127ab8-a658-40f5-acff-d82074cfae0c', '10/4/2014 11:12:25 PM', '2/23/2016 8:39:32 PM', '0', '', '0', '', 'Index', '', '', 'Aries CMS', '<meta name="ROBOTS" content="INDEX,FOLLOW" />
     <meta name="audience" content="all" />
     <meta name="author" content="www.ariestco.com" />
     <meta name="publisher" content="www.ariestco.com" />
     <meta name="revisit-after" content="7 days" />
     <meta name="Content-Language" content="en" />
     <meta name="distribution" content="global" />
<meta name="keywords" content="Test, testing, and testing again" />

', 'cms, content management', 'Aries CMS', 'Aries CMS', 'True', '1/1/1901 12:00:00 AM', '1/1/1901 12:00:00 AM', '1', '', '', '', '', 'False', '0', '', 'False', '0', '', '1', 'Index');




/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

Insert Into WebSiteNavigation (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sDisplayName, iPageID, sPageID, sNavigationIdentifyer, iNavigationTypeID, sNavigationTypeID, iParentNavID, sParentNavID, sCustomPrefix, sCustomSuffix, sCustomAttributes, iDisplayIndex, bHidden, bDisabled, bRestrictAccess, iScreenID, sScreenID, iLanguageID, sLanguageID, sImageSmallURL, sImageLargeURL, sPagePreviewSmallURL, sPagePreviewLargeURL) VALUES ('1', '', '701e2eef-feb6-4bda-952f-69f3ca68274e', '10/4/2014 11:17:05 PM', '10/4/2014 11:17:05 PM', '0', '', '0', '', 'Index', '1', 'Index', '/', '0', '', '0', '', '', '', '', '0', 'False', 'False', 'False', '0', '', '0', '', '', '', '', '');
Insert Into WebSiteNavigation (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sDisplayName, iPageID, sPageID, sNavigationIdentifyer, iNavigationTypeID, sNavigationTypeID, iParentNavID, sParentNavID, sCustomPrefix, sCustomSuffix, sCustomAttributes, iDisplayIndex, bHidden, bDisabled, bRestrictAccess, iScreenID, sScreenID, iLanguageID, sLanguageID, sImageSmallURL, sImageLargeURL, sPagePreviewSmallURL, sPagePreviewLargeURL) VALUES ('1', '', '8d4075a1-5e35-4d95-bc60-521a63dc24ef', '10/4/2014 11:17:18 PM', '10/4/2014 11:17:18 PM', '0', '', '0', '', 'Index', '1', 'Index', 'index', '0', '', '0', '', '', '', '', '0', 'False', 'False', 'False', '0', '', '0', '', '', '', '', '');




/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */
Insert Into WebSiteBlog (iParentID, sParentID, sControl, dtDateCreated, dtLastUpdated, iCreatedByID, sCreatedByID, iUpdatedByID, sUpdatedByID, sTitle, sSubject, sDescription, iPrimaryContributorID, sPrimaryContributorID, sKeyWords, iAltContributorID, sAltContributorID, bRestrictAccess, iSiteTemplateID, sSiteTemplateID, sSiteTemplateURI, sSiteTempalteURL, sLoadIncludeURI, bLoadPartialPage, iZoneID, sZoneID, iSiteTemplatePageID, sSiteTemplatePageID) VALUES ('1', '', '02becd50-9ae9-42cb-999f-5b547849ed69', '1/18/2016 8:43:40 PM', '1/26/2016 4:57:31 PM', '0', '', '0', '', 'Default', 'Default Blode', '', '1', 'Ssytem Admin', '', '1', 'Ssytem Admin', 'False', '1', 'Default', '', '', '', 'False', '2', 'MAINBODY', '1', 'Index');







