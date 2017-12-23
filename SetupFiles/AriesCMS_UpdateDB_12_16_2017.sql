IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries')
    BEGIN
        PRINT N'Creating Table Countries';
        CREATE TABLE Countries
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             sControl nvarchar(MAX),
             sSyncControl nvarchar(MAX),
             sName nvarchar(MAX),
             sAbbreviation nvarchar(MAX),
             dTimeZoneOffSet float,
             sTimeZoneName nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             sTaxRate nvarchar(MAX),
             dTaxRate float,
             bytTaxTable image,
             sCurrencyName nvarchar(MAX),
             sCurrentcySymbol nvarchar(MAX),
             dExchangeRateFromDollar float,
             sThreeAbbreviation nvarchar(MAX),
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
              ALTER TABLE Countries ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sSyncControl')
            BEGIN        
              PRINT N'Adding Column sSyncControl to Table Countries';
              ALTER TABLE Countries ADD sSyncControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table Countries';
              ALTER TABLE Countries ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sAbbreviation')
            BEGIN        
              PRINT N'Adding Column sAbbreviation to Table Countries';
              ALTER TABLE Countries ADD sAbbreviation nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dTimeZoneOffSet')
            BEGIN        
              PRINT N'Adding Column dTimeZoneOffSet to Table Countries';
              ALTER TABLE Countries ADD dTimeZoneOffSet float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sTimeZoneName')
            BEGIN        
              PRINT N'Adding Column sTimeZoneName to Table Countries';
              ALTER TABLE Countries ADD sTimeZoneName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table Countries';
              ALTER TABLE Countries ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table Countries';
              ALTER TABLE Countries ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sTaxRate')
            BEGIN        
              PRINT N'Adding Column sTaxRate to Table Countries';
              ALTER TABLE Countries ADD sTaxRate nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dTaxRate')
            BEGIN        
              PRINT N'Adding Column dTaxRate to Table Countries';
              ALTER TABLE Countries ADD dTaxRate float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'bytTaxTable')
            BEGIN        
              PRINT N'Adding Column bytTaxTable to Table Countries';
              ALTER TABLE Countries ADD bytTaxTable image;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sCurrencyName')
            BEGIN        
              PRINT N'Adding Column sCurrencyName to Table Countries';
              ALTER TABLE Countries ADD sCurrencyName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sCurrentcySymbol')
            BEGIN        
              PRINT N'Adding Column sCurrentcySymbol to Table Countries';
              ALTER TABLE Countries ADD sCurrentcySymbol nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'dExchangeRateFromDollar')
            BEGIN        
              PRINT N'Adding Column dExchangeRateFromDollar to Table Countries';
              ALTER TABLE Countries ADD dExchangeRateFromDollar float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Countries' AND COLUMN_NAME = 'sThreeAbbreviation')
            BEGIN        
              PRINT N'Adding Column sThreeAbbreviation to Table Countries';
              ALTER TABLE Countries ADD sThreeAbbreviation nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages')
    BEGIN
        PRINT N'Creating Table CountryLanguages';
        CREATE TABLE CountryLanguages
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             sName nvarchar(MAX),
             sAbbreviation nvarchar(MAX),
             iCountryID Int,
             sCountryID nvarchar(MAX),
             sThreeAbbreviation nvarchar(MAX),
             sCultorInfoCode nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sControl nvarchar(MAX);
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
              ALTER TABLE CountryLanguages ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sAbbreviation')
            BEGIN        
              PRINT N'Adding Column sAbbreviation to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sAbbreviation nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sCountryID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sThreeAbbreviation')
            BEGIN        
              PRINT N'Adding Column sThreeAbbreviation to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sThreeAbbreviation nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CountryLanguages' AND COLUMN_NAME = 'sCultorInfoCode')
            BEGIN        
              PRINT N'Adding Column sCultorInfoCode to Table CountryLanguages';
              ALTER TABLE CountryLanguages ADD sCultorInfoCode nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDiscription nvarchar(MAX),
             sAccessKey nvarchar(MAX),
             dKey float,
             bIsDefaultForNewRegistration bit,
             sDefaultAccessLevel nvarchar(MAX),
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
              ALTER TABLE Roles ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Roles';
              ALTER TABLE Roles ADD sControl nvarchar(MAX);
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
              ALTER TABLE Roles ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table Roles';
              ALTER TABLE Roles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table Roles';
              ALTER TABLE Roles ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table Roles';
              ALTER TABLE Roles ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sDiscription')
            BEGIN        
              PRINT N'Adding Column sDiscription to Table Roles';
              ALTER TABLE Roles ADD sDiscription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table Roles';
              ALTER TABLE Roles ADD sAccessKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'dKey')
            BEGIN        
              PRINT N'Adding Column dKey to Table Roles';
              ALTER TABLE Roles ADD dKey float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'bIsDefaultForNewRegistration')
            BEGIN        
              PRINT N'Adding Column bIsDefaultForNewRegistration to Table Roles';
              ALTER TABLE Roles ADD bIsDefaultForNewRegistration bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles' AND COLUMN_NAME = 'sDefaultAccessLevel')
            BEGIN        
              PRINT N'Adding Column sDefaultAccessLevel to Table Roles';
              ALTER TABLE Roles ADD sDefaultAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sIPAddress nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
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
              ALTER TABLE Roles_Access ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sControl nvarchar(MAX);
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
              ALTER TABLE Roles_Access ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sIPAddress')
            BEGIN        
              PRINT N'Adding Column sIPAddress to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sIPAddress nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Roles_Access' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table Roles_Access';
              ALTER TABLE Roles_Access ADD sUserID nvarchar(MAX);
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
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             sName nvarchar(MAX),
             sAbbreviation nvarchar(MAX),
             dTimeZoneOffSet float,
             sTimeZoneName nvarchar(MAX),
             iCountryID Int,
             sCountryID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table States';
              ALTER TABLE States ADD sControl nvarchar(MAX);
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
              ALTER TABLE States ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sAbbreviation')
            BEGIN        
              PRINT N'Adding Column sAbbreviation to Table States';
              ALTER TABLE States ADD sAbbreviation nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'dTimeZoneOffSet')
            BEGIN        
              PRINT N'Adding Column dTimeZoneOffSet to Table States';
              ALTER TABLE States ADD dTimeZoneOffSet float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sTimeZoneName')
            BEGIN        
              PRINT N'Adding Column sTimeZoneName to Table States';
              ALTER TABLE States ADD sTimeZoneName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table States';
              ALTER TABLE States ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'States' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table States';
              ALTER TABLE States ADD sCountryID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster')
    BEGIN
        PRINT N'Creating Table SystemMaster';
        CREATE TABLE SystemMaster
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sAccessKey nvarchar(MAX),
             sLicKey nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sControl nvarchar(MAX);
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
              ALTER TABLE SystemMaster ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table SystemMaster';
              ALTER TABLE SystemMaster ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sAccessKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemMaster' AND COLUMN_NAME = 'sLicKey')
            BEGIN        
              PRINT N'Adding Column sLicKey to Table SystemMaster';
              ALTER TABLE SystemMaster ADD sLicKey nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sAccessKey nvarchar(MAX),
             dKey float,
             sPathURL nvarchar(MAX),
             sPathURI nvarchar(MAX),
             sAuthKey nvarchar(MAX),
             sLicKey nvarchar(MAX),
             sUserName nvarchar(MAX),
             sPassword nvarchar(MAX),
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
              ALTER TABLE SystemModules ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table SystemModules';
              ALTER TABLE SystemModules ADD sControl nvarchar(MAX);
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
              ALTER TABLE SystemModules ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table SystemModules';
              ALTER TABLE SystemModules ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table SystemModules';
              ALTER TABLE SystemModules ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table SystemModules';
              ALTER TABLE SystemModules ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table SystemModules';
              ALTER TABLE SystemModules ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table SystemModules';
              ALTER TABLE SystemModules ADD sAccessKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'dKey')
            BEGIN        
              PRINT N'Adding Column dKey to Table SystemModules';
              ALTER TABLE SystemModules ADD dKey float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sPathURL')
            BEGIN        
              PRINT N'Adding Column sPathURL to Table SystemModules';
              ALTER TABLE SystemModules ADD sPathURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sPathURI')
            BEGIN        
              PRINT N'Adding Column sPathURI to Table SystemModules';
              ALTER TABLE SystemModules ADD sPathURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sAuthKey')
            BEGIN        
              PRINT N'Adding Column sAuthKey to Table SystemModules';
              ALTER TABLE SystemModules ADD sAuthKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sLicKey')
            BEGIN        
              PRINT N'Adding Column sLicKey to Table SystemModules';
              ALTER TABLE SystemModules ADD sLicKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table SystemModules';
              ALTER TABLE SystemModules ADD sUserName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'SystemModules' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table SystemModules';
              ALTER TABLE SystemModules ADD sPassword nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
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
              ALTER TABLE UserRoles ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UserRoles';
              ALTER TABLE UserRoles ADD sControl nvarchar(MAX);
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
              ALTER TABLE UserRoles ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UserRoles';
              ALTER TABLE UserRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UserRoles';
              ALTER TABLE UserRoles ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table UserRoles';
              ALTER TABLE UserRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table UserRoles';
              ALTER TABLE UserRoles ADD sRoleID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sAccessKey nvarchar(MAX),
             sUserName nvarchar(MAX),
             sPassword nvarchar(MAX),
             sPrefix nvarchar(MAX),
             sFName nvarchar(MAX),
             sMName nvarchar(MAX),
             sLName nvarchar(MAX),
             bAccLocked bit,
             iPrimaryRole Int,
             sPrimaryRole nvarchar(MAX),
             sAvitarImgURL nvarchar(MAX),
             bCurrentlyLoggedIn bit,
             iReputationLevel Int,
             sKeyWords nvarchar(MAX),
             sScreenName nvarchar(MAX),
             sProfileDiscription nvarchar(MAX),
             iGenderTypeID Int,
             sGenderTypeID nvarchar(MAX),
             bPrivateProfile bit,
             dtDateOfBirth datetime,
             sActivationKey nvarchar(MAX),
             dtLastLoggedIn nvarchar(MAX),
             bAccountActivated bit,
             sAddress1 nvarchar(MAX),
             sAddress2 nvarchar(MAX),
             sAddress3 nvarchar(MAX),
             sCity nvarchar(MAX),
             iStateID Int,
             sStateID nvarchar(MAX),
             sPostalCode nvarchar(MAX),
             iCountryID Int,
             sCountryID nvarchar(MAX),
             sPrimaryEMail nvarchar(MAX),
             sPrimaryPhone nvarchar(MAX),
             bOptInMarketing bit,
             sBillAddress1 nvarchar(MAX),
             sBillAddress2 nvarchar(MAX),
             sBillAddress3 nvarchar(MAX),
             sBillCity nvarchar(MAX),
             iBillStateID Int,
             sBillStateID nvarchar(MAX),
             sBillPostalCode nvarchar(MAX),
             iBillCountryID Int,
             sBillCountryID nvarchar(MAX),
             IPAddressess nvarchar(MAX),
             bForceLogOut bit,
             sCurrentSession nvarchar(MAX),
             iMemberShipID Int,
             sMemberShipID nvarchar(MAX),
             sCN nvarchar(MAX),
             sCExp nvarchar(MAX),
             sCCVV nvarchar(MAX),
             sCLinkID nvarchar(MAX),
             bMembershipInActive bit,
             dtMembershipExpOn datetime,
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
              ALTER TABLE Users ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table Users';
              ALTER TABLE Users ADD sControl nvarchar(MAX);
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
              ALTER TABLE Users ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table Users';
              ALTER TABLE Users ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table Users';
              ALTER TABLE Users ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table Users';
              ALTER TABLE Users ADD sAccessKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table Users';
              ALTER TABLE Users ADD sUserName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table Users';
              ALTER TABLE Users ADD sPassword nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrefix')
            BEGIN        
              PRINT N'Adding Column sPrefix to Table Users';
              ALTER TABLE Users ADD sPrefix nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table Users';
              ALTER TABLE Users ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sMName')
            BEGIN        
              PRINT N'Adding Column sMName to Table Users';
              ALTER TABLE Users ADD sMName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table Users';
              ALTER TABLE Users ADD sLName nvarchar(MAX);
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
              ALTER TABLE Users ADD sPrimaryRole nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sAvitarImgURL to Table Users';
              ALTER TABLE Users ADD sAvitarImgURL nvarchar(MAX);
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
              ALTER TABLE Users ADD sKeyWords nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sScreenName')
            BEGIN        
              PRINT N'Adding Column sScreenName to Table Users';
              ALTER TABLE Users ADD sScreenName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sProfileDiscription')
            BEGIN        
              PRINT N'Adding Column sProfileDiscription to Table Users';
              ALTER TABLE Users ADD sProfileDiscription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iGenderTypeID')
            BEGIN        
              PRINT N'Adding Column iGenderTypeID to Table Users';
              ALTER TABLE Users ADD iGenderTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sGenderTypeID')
            BEGIN        
              PRINT N'Adding Column sGenderTypeID to Table Users';
              ALTER TABLE Users ADD sGenderTypeID nvarchar(MAX);
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
              ALTER TABLE Users ADD sActivationKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'dtLastLoggedIn')
            BEGIN        
              PRINT N'Adding Column dtLastLoggedIn to Table Users';
              ALTER TABLE Users ADD dtLastLoggedIn nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bAccountActivated')
            BEGIN        
              PRINT N'Adding Column bAccountActivated to Table Users';
              ALTER TABLE Users ADD bAccountActivated bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAddress1')
            BEGIN        
              PRINT N'Adding Column sAddress1 to Table Users';
              ALTER TABLE Users ADD sAddress1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAddress2')
            BEGIN        
              PRINT N'Adding Column sAddress2 to Table Users';
              ALTER TABLE Users ADD sAddress2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sAddress3')
            BEGIN        
              PRINT N'Adding Column sAddress3 to Table Users';
              ALTER TABLE Users ADD sAddress3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCity')
            BEGIN        
              PRINT N'Adding Column sCity to Table Users';
              ALTER TABLE Users ADD sCity nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iStateID')
            BEGIN        
              PRINT N'Adding Column iStateID to Table Users';
              ALTER TABLE Users ADD iStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sStateID')
            BEGIN        
              PRINT N'Adding Column sStateID to Table Users';
              ALTER TABLE Users ADD sStateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPostalCode')
            BEGIN        
              PRINT N'Adding Column sPostalCode to Table Users';
              ALTER TABLE Users ADD sPostalCode nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table Users';
              ALTER TABLE Users ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table Users';
              ALTER TABLE Users ADD sCountryID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrimaryEMail')
            BEGIN        
              PRINT N'Adding Column sPrimaryEMail to Table Users';
              ALTER TABLE Users ADD sPrimaryEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sPrimaryPhone')
            BEGIN        
              PRINT N'Adding Column sPrimaryPhone to Table Users';
              ALTER TABLE Users ADD sPrimaryPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bOptInMarketing')
            BEGIN        
              PRINT N'Adding Column bOptInMarketing to Table Users';
              ALTER TABLE Users ADD bOptInMarketing bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillAddress1')
            BEGIN        
              PRINT N'Adding Column sBillAddress1 to Table Users';
              ALTER TABLE Users ADD sBillAddress1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillAddress2')
            BEGIN        
              PRINT N'Adding Column sBillAddress2 to Table Users';
              ALTER TABLE Users ADD sBillAddress2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillAddress3')
            BEGIN        
              PRINT N'Adding Column sBillAddress3 to Table Users';
              ALTER TABLE Users ADD sBillAddress3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillCity')
            BEGIN        
              PRINT N'Adding Column sBillCity to Table Users';
              ALTER TABLE Users ADD sBillCity nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iBillStateID')
            BEGIN        
              PRINT N'Adding Column iBillStateID to Table Users';
              ALTER TABLE Users ADD iBillStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillStateID')
            BEGIN        
              PRINT N'Adding Column sBillStateID to Table Users';
              ALTER TABLE Users ADD sBillStateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillPostalCode')
            BEGIN        
              PRINT N'Adding Column sBillPostalCode to Table Users';
              ALTER TABLE Users ADD sBillPostalCode nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iBillCountryID')
            BEGIN        
              PRINT N'Adding Column iBillCountryID to Table Users';
              ALTER TABLE Users ADD iBillCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sBillCountryID')
            BEGIN        
              PRINT N'Adding Column sBillCountryID to Table Users';
              ALTER TABLE Users ADD sBillCountryID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'IPAddressess')
            BEGIN        
              PRINT N'Adding Column IPAddressess to Table Users';
              ALTER TABLE Users ADD IPAddressess nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bForceLogOut')
            BEGIN        
              PRINT N'Adding Column bForceLogOut to Table Users';
              ALTER TABLE Users ADD bForceLogOut bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCurrentSession')
            BEGIN        
              PRINT N'Adding Column sCurrentSession to Table Users';
              ALTER TABLE Users ADD sCurrentSession nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'iMemberShipID')
            BEGIN        
              PRINT N'Adding Column iMemberShipID to Table Users';
              ALTER TABLE Users ADD iMemberShipID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sMemberShipID')
            BEGIN        
              PRINT N'Adding Column sMemberShipID to Table Users';
              ALTER TABLE Users ADD sMemberShipID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCN')
            BEGIN        
              PRINT N'Adding Column sCN to Table Users';
              ALTER TABLE Users ADD sCN nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCExp')
            BEGIN        
              PRINT N'Adding Column sCExp to Table Users';
              ALTER TABLE Users ADD sCExp nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCCVV')
            BEGIN        
              PRINT N'Adding Column sCCVV to Table Users';
              ALTER TABLE Users ADD sCCVV nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'sCLinkID')
            BEGIN        
              PRINT N'Adding Column sCLinkID to Table Users';
              ALTER TABLE Users ADD sCLinkID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'bMembershipInActive')
            BEGIN        
              PRINT N'Adding Column bMembershipInActive to Table Users';
              ALTER TABLE Users ADD bMembershipInActive bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users' AND COLUMN_NAME = 'dtMembershipExpOn')
            BEGIN        
              PRINT N'Adding Column dtMembershipExpOn to Table Users';
              ALTER TABLE Users ADD dtMembershipExpOn datetime;
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sAuthValue1 nvarchar(MAX),
             sAuthValue2 nvarchar(MAX),
             sAuthValue3 nvarchar(MAX),
             sAuthValue4 nvarchar(MAX),
             sAuthValue5 nvarchar(MAX),
             sAuthValue6 nvarchar(MAX),
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
              ALTER TABLE UsersAltAuth ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sControl nvarchar(MAX);
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
              ALTER TABLE UsersAltAuth ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue1')
            BEGIN        
              PRINT N'Adding Column sAuthValue1 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue2')
            BEGIN        
              PRINT N'Adding Column sAuthValue2 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue3')
            BEGIN        
              PRINT N'Adding Column sAuthValue3 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue4')
            BEGIN        
              PRINT N'Adding Column sAuthValue4 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue4 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue5')
            BEGIN        
              PRINT N'Adding Column sAuthValue5 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue5 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersAltAuth' AND COLUMN_NAME = 'sAuthValue6')
            BEGIN        
              PRINT N'Adding Column sAuthValue6 to Table UsersAltAuth';
              ALTER TABLE UsersAltAuth ADD sAuthValue6 nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iEventTypeID Int,
             sEventTypeID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sTitle nvarchar(MAX),
             sMessage nvarchar(MAX),
             sHTTPx nvarchar(MAX),
             sIP nvarchar(MAX),
             sOther nvarchar(MAX),
             iFromID Int,
             sFromID nvarchar(MAX),
             sCcID nvarchar(MAX),
             sCc nvarchar(MAX),
             sBCcID nvarchar(MAX),
             sBCc nvarchar(MAX),
             sAttachemnts nvarchar(MAX),
             iRelatedBlogID Int,
             sRelatedBlogID nvarchar(MAX),
             sRelatedPostsIDs nvarchar(MAX),
             sRelatedPosts nvarchar(MAX),
             sSessionID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserScreenName nvarchar(MAX),
             sUserAvitar nvarchar(MAX),
             iToID Int,
             sToID nvarchar(MAX),
             sToIDs nvarchar(MAX),
             sToIDns nvarchar(MAX),
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
              ALTER TABLE UsersChats ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersChats';
              ALTER TABLE UsersChats ADD sControl nvarchar(MAX);
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
              ALTER TABLE UsersChats ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersChats';
              ALTER TABLE UsersChats ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersChats';
              ALTER TABLE UsersChats ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersChats';
              ALTER TABLE UsersChats ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersChats';
              ALTER TABLE UsersChats ADD sEventTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersChats';
              ALTER TABLE UsersChats ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersChats';
              ALTER TABLE UsersChats ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersChats';
              ALTER TABLE UsersChats ADD sMessage nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersChats';
              ALTER TABLE UsersChats ADD sHTTPx nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersChats';
              ALTER TABLE UsersChats ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersChats';
              ALTER TABLE UsersChats ADD sOther nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersChats';
              ALTER TABLE UsersChats ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersChats';
              ALTER TABLE UsersChats ADD sFromID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersChats';
              ALTER TABLE UsersChats ADD sCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersChats';
              ALTER TABLE UsersChats ADD sCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersChats';
              ALTER TABLE UsersChats ADD sBCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersChats';
              ALTER TABLE UsersChats ADD sBCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sAttachemnts')
            BEGIN        
              PRINT N'Adding Column sAttachemnts to Table UsersChats';
              ALTER TABLE UsersChats ADD sAttachemnts nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column iRelatedBlogID to Table UsersChats';
              ALTER TABLE UsersChats ADD iRelatedBlogID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column sRelatedBlogID to Table UsersChats';
              ALTER TABLE UsersChats ADD sRelatedBlogID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sRelatedPostsIDs')
            BEGIN        
              PRINT N'Adding Column sRelatedPostsIDs to Table UsersChats';
              ALTER TABLE UsersChats ADD sRelatedPostsIDs nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sRelatedPosts')
            BEGIN        
              PRINT N'Adding Column sRelatedPosts to Table UsersChats';
              ALTER TABLE UsersChats ADD sRelatedPosts nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sSessionID')
            BEGIN        
              PRINT N'Adding Column sSessionID to Table UsersChats';
              ALTER TABLE UsersChats ADD sSessionID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table UsersChats';
              ALTER TABLE UsersChats ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table UsersChats';
              ALTER TABLE UsersChats ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sUserScreenName')
            BEGIN        
              PRINT N'Adding Column sUserScreenName to Table UsersChats';
              ALTER TABLE UsersChats ADD sUserScreenName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sUserAvitar')
            BEGIN        
              PRINT N'Adding Column sUserAvitar to Table UsersChats';
              ALTER TABLE UsersChats ADD sUserAvitar nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'iToID')
            BEGIN        
              PRINT N'Adding Column iToID to Table UsersChats';
              ALTER TABLE UsersChats ADD iToID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sToID')
            BEGIN        
              PRINT N'Adding Column sToID to Table UsersChats';
              ALTER TABLE UsersChats ADD sToID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sToIDs')
            BEGIN        
              PRINT N'Adding Column sToIDs to Table UsersChats';
              ALTER TABLE UsersChats ADD sToIDs nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChats' AND COLUMN_NAME = 'sToIDns')
            BEGIN        
              PRINT N'Adding Column sToIDns to Table UsersChats';
              ALTER TABLE UsersChats ADD sToIDns nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iEventTypeID Int,
             sEventTypeID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sTitle nvarchar(MAX),
             sDescription nvarchar(MAX),
             sHTTPx nvarchar(MAX),
             sIP nvarchar(MAX),
             sOther nvarchar(MAX),
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
              ALTER TABLE UsersLogs ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sControl nvarchar(MAX);
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
              ALTER TABLE UsersLogs ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sEventTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sHTTPx nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersLogs' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersLogs';
              ALTER TABLE UsersLogs ADD sOther nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iEventTypeID Int,
             sEventTypeID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sTitle nvarchar(MAX),
             sMessage nvarchar(MAX),
             sHTTPx nvarchar(MAX),
             sIP nvarchar(MAX),
             sOther nvarchar(MAX),
             iFromID Int,
             sFromID nvarchar(MAX),
             sCcID nvarchar(MAX),
             sCc nvarchar(MAX),
             sBCcID nvarchar(MAX),
             sBCc nvarchar(MAX),
             sAttachements nvarchar(MAX),
             sFromThumbNail nvarchar(MAX),
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
              ALTER TABLE UsersMessages ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sControl nvarchar(MAX);
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
              ALTER TABLE UsersMessages ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sEventTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sMessage nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sHTTPx nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sOther nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sFromID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sBCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sBCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sAttachements')
            BEGIN        
              PRINT N'Adding Column sAttachements to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sAttachements nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersMessages' AND COLUMN_NAME = 'sFromThumbNail')
            BEGIN        
              PRINT N'Adding Column sFromThumbNail to Table UsersMessages';
              ALTER TABLE UsersMessages ADD sFromThumbNail nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iEventTypeID Int,
             sEventTypeID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sTitle nvarchar(MAX),
             sMessage nvarchar(MAX),
             sHTTPx nvarchar(MAX),
             sIP nvarchar(MAX),
             sOther nvarchar(MAX),
             iFromID Int,
             sFromID nvarchar(MAX),
             sCcID nvarchar(MAX),
             sCc nvarchar(MAX),
             sBCcID nvarchar(MAX),
             sBCc nvarchar(MAX),
             sAttachemnts nvarchar(MAX),
             iRelatedBlogID Int,
             sRelatedBlogID nvarchar(MAX),
             sRelatedPostsIDs nvarchar(MAX),
             sRelatedPosts nvarchar(MAX),
             iPrivacyTypeID Int,
             sPrivacyTypeID nvarchar(MAX),
             sFromThumbNail nvarchar(MAX),
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
              ALTER TABLE UsersPosts ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sControl nvarchar(MAX);
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
              ALTER TABLE UsersPosts ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sEventTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sMessage nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sHTTPx nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sOther nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sFromID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sBCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sBCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sAttachemnts')
            BEGIN        
              PRINT N'Adding Column sAttachemnts to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sAttachemnts nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column iRelatedBlogID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iRelatedBlogID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sRelatedBlogID')
            BEGIN        
              PRINT N'Adding Column sRelatedBlogID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sRelatedBlogID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sRelatedPostsIDs')
            BEGIN        
              PRINT N'Adding Column sRelatedPostsIDs to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sRelatedPostsIDs nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sRelatedPosts')
            BEGIN        
              PRINT N'Adding Column sRelatedPosts to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sRelatedPosts nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'iPrivacyTypeID')
            BEGIN        
              PRINT N'Adding Column iPrivacyTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD iPrivacyTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sPrivacyTypeID')
            BEGIN        
              PRINT N'Adding Column sPrivacyTypeID to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sPrivacyTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersPosts' AND COLUMN_NAME = 'sFromThumbNail')
            BEGIN        
              PRINT N'Adding Column sFromThumbNail to Table UsersPosts';
              ALTER TABLE UsersPosts ADD sFromThumbNail nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sFieldName nvarchar(MAX),
             sValue nvarchar(MAX),
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
              ALTER TABLE UsersProperties ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sControl nvarchar(MAX);
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
              ALTER TABLE UsersProperties ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sFieldName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table UsersProperties';
              ALTER TABLE UsersProperties ADD sValue nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sAccesskey nvarchar(MAX),
             bSubScriptionBased bit,
             iRequiredRoleID Int,
             sRequiredRoleID nvarchar(MAX),
             iDefaultTemplateID Int,
             sDefaultTemplateID nvarchar(MAX),
             iDefaultBlogID Int,
             sDefaultBlogID nvarchar(MAX),
             sDefaultMetaTags nvarchar(MAX),
             sDefaultClassification nvarchar(MAX),
             sDefaultDescription nvarchar(MAX),
             sDefaultKeyWords nvarchar(MAX),
             sSupportEmail nvarchar(MAX),
             sWebMasterEmail nvarchar(MAX),
             dUniqueVisitors float,
             dVisits float,
             dPageViews float,
             bRestrictAccess bit,
             iNewRegMessageID Int,
             sNewRegMessageID nvarchar(MAX),
             iNewsLetrRegMessageID Int,
             sNewsLetrRegMessageID nvarchar(MAX),
             iContactConfMessageID Int,
             sContactConfMessageID nvarchar(MAX),
             iLostPswdMessageID Int,
             sLostPswdMessageID nvarchar(MAX),
             iSupportEmailRequestID Int,
             sSupportEmailRequestID nvarchar(MAX),
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
              ALTER TABLE WebSite ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSite';
              ALTER TABLE WebSite ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSite ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSite';
              ALTER TABLE WebSite ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSite';
              ALTER TABLE WebSite ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSite';
              ALTER TABLE WebSite ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sAccesskey')
            BEGIN        
              PRINT N'Adding Column sAccesskey to Table WebSite';
              ALTER TABLE WebSite ADD sAccesskey nvarchar(MAX);
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
              ALTER TABLE WebSite ADD sRequiredRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iDefaultTemplateID')
            BEGIN        
              PRINT N'Adding Column iDefaultTemplateID to Table WebSite';
              ALTER TABLE WebSite ADD iDefaultTemplateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultTemplateID')
            BEGIN        
              PRINT N'Adding Column sDefaultTemplateID to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultTemplateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iDefaultBlogID')
            BEGIN        
              PRINT N'Adding Column iDefaultBlogID to Table WebSite';
              ALTER TABLE WebSite ADD iDefaultBlogID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultBlogID')
            BEGIN        
              PRINT N'Adding Column sDefaultBlogID to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultBlogID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultMetaTags')
            BEGIN        
              PRINT N'Adding Column sDefaultMetaTags to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultMetaTags nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultClassification')
            BEGIN        
              PRINT N'Adding Column sDefaultClassification to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultClassification nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultDescription')
            BEGIN        
              PRINT N'Adding Column sDefaultDescription to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sDefaultKeyWords')
            BEGIN        
              PRINT N'Adding Column sDefaultKeyWords to Table WebSite';
              ALTER TABLE WebSite ADD sDefaultKeyWords nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sSupportEmail')
            BEGIN        
              PRINT N'Adding Column sSupportEmail to Table WebSite';
              ALTER TABLE WebSite ADD sSupportEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sWebMasterEmail')
            BEGIN        
              PRINT N'Adding Column sWebMasterEmail to Table WebSite';
              ALTER TABLE WebSite ADD sWebMasterEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dUniqueVisitors')
            BEGIN        
              PRINT N'Adding Column dUniqueVisitors to Table WebSite';
              ALTER TABLE WebSite ADD dUniqueVisitors float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dVisits')
            BEGIN        
              PRINT N'Adding Column dVisits to Table WebSite';
              ALTER TABLE WebSite ADD dVisits float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'dPageViews')
            BEGIN        
              PRINT N'Adding Column dPageViews to Table WebSite';
              ALTER TABLE WebSite ADD dPageViews float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSite';
              ALTER TABLE WebSite ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iNewRegMessageID')
            BEGIN        
              PRINT N'Adding Column iNewRegMessageID to Table WebSite';
              ALTER TABLE WebSite ADD iNewRegMessageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sNewRegMessageID')
            BEGIN        
              PRINT N'Adding Column sNewRegMessageID to Table WebSite';
              ALTER TABLE WebSite ADD sNewRegMessageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iNewsLetrRegMessageID')
            BEGIN        
              PRINT N'Adding Column iNewsLetrRegMessageID to Table WebSite';
              ALTER TABLE WebSite ADD iNewsLetrRegMessageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sNewsLetrRegMessageID')
            BEGIN        
              PRINT N'Adding Column sNewsLetrRegMessageID to Table WebSite';
              ALTER TABLE WebSite ADD sNewsLetrRegMessageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iContactConfMessageID')
            BEGIN        
              PRINT N'Adding Column iContactConfMessageID to Table WebSite';
              ALTER TABLE WebSite ADD iContactConfMessageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sContactConfMessageID')
            BEGIN        
              PRINT N'Adding Column sContactConfMessageID to Table WebSite';
              ALTER TABLE WebSite ADD sContactConfMessageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iLostPswdMessageID')
            BEGIN        
              PRINT N'Adding Column iLostPswdMessageID to Table WebSite';
              ALTER TABLE WebSite ADD iLostPswdMessageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sLostPswdMessageID')
            BEGIN        
              PRINT N'Adding Column sLostPswdMessageID to Table WebSite';
              ALTER TABLE WebSite ADD sLostPswdMessageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'iSupportEmailRequestID')
            BEGIN        
              PRINT N'Adding Column iSupportEmailRequestID to Table WebSite';
              ALTER TABLE WebSite ADD iSupportEmailRequestID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite' AND COLUMN_NAME = 'sSupportEmailRequestID')
            BEGIN        
              PRINT N'Adding Column sSupportEmailRequestID to Table WebSite';
              ALTER TABLE WebSite ADD sSupportEmailRequestID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sTitle nvarchar(MAX),
             sSubject nvarchar(MAX),
             sDescription nvarchar(MAX),
             iPrimaryContributorID Int,
             sPrimaryContributorID nvarchar(MAX),
             sKeyWords nvarchar(MAX),
             iAltContributorID Int,
             sAltContributorID nvarchar(MAX),
             bRestrictAccess bit,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(MAX),
             sSiteTemplateURI nvarchar(MAX),
             sSiteTempalteURL nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(MAX),
             iSiteTemplatePageID Int,
             sSiteTemplatePageID nvarchar(MAX),
             dCommentCount float,
             iAdScheduleID Int,
             sAdScheduleID nvarchar(MAX),
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
              ALTER TABLE WebSiteBlog ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlog ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iPrimaryContributorID')
            BEGIN        
              PRINT N'Adding Column iPrimaryContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iPrimaryContributorID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sPrimaryContributorID')
            BEGIN        
              PRINT N'Adding Column sPrimaryContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sPrimaryContributorID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sKeyWords nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iAltContributorID')
            BEGIN        
              PRINT N'Adding Column iAltContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iAltContributorID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sAltContributorID')
            BEGIN        
              PRINT N'Adding Column sAltContributorID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sAltContributorID nvarchar(MAX);
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
              ALTER TABLE WebSiteBlog ADD sSiteTemplateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTemplateURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTempalteURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sLoadIncludeURI nvarchar(MAX);
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
              ALTER TABLE WebSiteBlog ADD sZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplatePageID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iSiteTemplatePageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplatePageID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sSiteTemplatePageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'dCommentCount')
            BEGIN        
              PRINT N'Adding Column dCommentCount to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD dCommentCount float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'iAdScheduleID')
            BEGIN        
              PRINT N'Adding Column iAdScheduleID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD iAdScheduleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlog' AND COLUMN_NAME = 'sAdScheduleID')
            BEGIN        
              PRINT N'Adding Column sAdScheduleID to Table WebSiteBlog';
              ALTER TABLE WebSiteBlog ADD sAdScheduleID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iParentCommentID Int,
             sParentCommentID nvarchar(MAX),
             sComment nvarchar(MAX),
             bRestrictAccess bit,
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserThumbNail nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogComments ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogComments ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'iParentCommentID')
            BEGIN        
              PRINT N'Adding Column iParentCommentID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD iParentCommentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sParentCommentID')
            BEGIN        
              PRINT N'Adding Column sParentCommentID to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sParentCommentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sComment')
            BEGIN        
              PRINT N'Adding Column sComment to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sComment nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogComments ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogComments' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteBlogComments';
              ALTER TABLE WebSiteBlogComments ADD sUserThumbNail nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sFieldName nvarchar(MAX),
             sValue nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogCommentsProperties ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogCommentsProperties ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sFieldName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogCommentsProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteBlogCommentsProperties';
              ALTER TABLE WebSiteBlogCommentsProperties ADD sValue nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sTitle nvarchar(MAX),
             sSubject nvarchar(MAX),
             sKeyWords nvarchar(MAX),
             sContent nvarchar(MAX),
             bOpenToComments bit,
             bMustBeLoggedInToComment bit,
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             bRestrictAccess bit,
             bArchived bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             sImageURL nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogEntry ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogEntry ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sKeyWords nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sContent nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogEntry ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntry' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteBlogEntry';
              ALTER TABLE WebSiteBlogEntry ADD sImageURL nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sFieldName nvarchar(MAX),
             sValue nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogEntryProperties ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogEntryProperties ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sFieldName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteBlogEntryProperties';
              ALTER TABLE WebSiteBlogEntryProperties ADD sValue nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
             sAccessLevel nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogEntryRole ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogEntryRole ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEntryRole' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteBlogEntryRole';
              ALTER TABLE WebSiteBlogEntryRole ADD sAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sFieldName nvarchar(MAX),
             sValue nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogProperties ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogProperties ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sFieldName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteBlogProperties';
              ALTER TABLE WebSiteBlogProperties ADD sValue nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
             sAccessLevel nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogRoles ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogRoles ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteBlogRoles';
              ALTER TABLE WebSiteBlogRoles ADD sAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sEvent nvarchar(MAX),
             sLog nvarchar(MAX),
             sNotes nvarchar(MAX),
             sCookieID nvarchar(MAX),
             sIP nvarchar(MAX),
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
              ALTER TABLE WebSiteEvents ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteEvents ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sEvent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sLog nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sNotes nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sCookieID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteEvents';
              ALTER TABLE WebSiteEvents ADD sIP nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iLinkTypeID Int,
             sLinkTypeID nvarchar(MAX),
             sApplicationKey nvarchar(MAX),
             sAuthorizatinKey nvarchar(MAX),
             sUserName nvarchar(MAX),
             sPassword nvarchar(MAX),
             sOrganizationName nvarchar(MAX),
             sKeyValue1 nvarchar(MAX),
             sKeyValue2 nvarchar(MAX),
             sKeyValue3 nvarchar(MAX),
             sKeyValue4 nvarchar(MAX),
             sKeyValue5 nvarchar(MAX),
             sKeyValue6 nvarchar(MAX),
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
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'iLinkTypeID')
            BEGIN        
              PRINT N'Adding Column iLinkTypeID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD iLinkTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sLinkTypeID')
            BEGIN        
              PRINT N'Adding Column sLinkTypeID to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sLinkTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sApplicationKey')
            BEGIN        
              PRINT N'Adding Column sApplicationKey to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sApplicationKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sAuthorizatinKey')
            BEGIN        
              PRINT N'Adding Column sAuthorizatinKey to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sAuthorizatinKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sUserName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sPassword nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sOrganizationName')
            BEGIN        
              PRINT N'Adding Column sOrganizationName to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sOrganizationName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue1')
            BEGIN        
              PRINT N'Adding Column sKeyValue1 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue2')
            BEGIN        
              PRINT N'Adding Column sKeyValue2 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue3')
            BEGIN        
              PRINT N'Adding Column sKeyValue3 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue4')
            BEGIN        
              PRINT N'Adding Column sKeyValue4 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue4 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue5')
            BEGIN        
              PRINT N'Adding Column sKeyValue5 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue5 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteExtAppIntegrationSettings' AND COLUMN_NAME = 'sKeyValue6')
            BEGIN        
              PRINT N'Adding Column sKeyValue6 to Table WebSiteExtAppIntegrationSettings';
              ALTER TABLE WebSiteExtAppIntegrationSettings ADD sKeyValue6 nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sIP nvarchar(MAX),
             bRestrict nvarchar(MAX),
             bBlock nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sRestrictFrom nvarchar(MAX),
             sRestrictTo nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
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
              ALTER TABLE WebSiteIPFilters ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteIPFilters ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'bRestrict')
            BEGIN        
              PRINT N'Adding Column bRestrict to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD bRestrict nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'bBlock')
            BEGIN        
              PRINT N'Adding Column bBlock to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD bBlock nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sRestrictFrom')
            BEGIN        
              PRINT N'Adding Column sRestrictFrom to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sRestrictFrom nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sRestrictTo')
            BEGIN        
              PRINT N'Adding Column sRestrictTo to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sRestrictTo nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteIPFilters' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteIPFilters';
              ALTER TABLE WebSiteIPFilters ADD sRoleID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sPath nvarchar(MAX),
             sPathURL nvarchar(MAX),
             sPathURI nvarchar(MAX),
             sAuthKey nvarchar(MAX),
             sLicKey nvarchar(MAX),
             sUserName nvarchar(MAX),
             sPassword nvarchar(MAX),
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
              ALTER TABLE WebSiteModules ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteModules ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPath')
            BEGIN        
              PRINT N'Adding Column sPath to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPath nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPathURL')
            BEGIN        
              PRINT N'Adding Column sPathURL to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPathURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPathURI')
            BEGIN        
              PRINT N'Adding Column sPathURI to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPathURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sAuthKey')
            BEGIN        
              PRINT N'Adding Column sAuthKey to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sAuthKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sLicKey')
            BEGIN        
              PRINT N'Adding Column sLicKey to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sLicKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sUserName')
            BEGIN        
              PRINT N'Adding Column sUserName to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sUserName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteModules' AND COLUMN_NAME = 'sPassword')
            BEGIN        
              PRINT N'Adding Column sPassword to Table WebSiteModules';
              ALTER TABLE WebSiteModules ADD sPassword nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sDisplayName nvarchar(MAX),
             iPageID Int,
             sPageID nvarchar(MAX),
             sNavigationIdentifyer nvarchar(MAX),
             iNavigationTypeID Int,
             sNavigationTypeID nvarchar(MAX),
             iParentNavID Int,
             sParentNavID nvarchar(MAX),
             sCustomPrefix nvarchar(MAX),
             sCustomSuffix nvarchar(MAX),
             sCustomAttributes nvarchar(MAX),
             iDisplayIndex Int,
             bHidden bit,
             bDisabled bit,
             bRestrictAccess bit,
             iScreenID Int,
             sScreenID nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             sImageSmallURL nvarchar(MAX),
             sImageLargeURL nvarchar(MAX),
             sPagePreviewSmallURL nvarchar(MAX),
             sPagePreviewLargeURL nvarchar(MAX),
             iMemberShipID Int,
             sMemberShipID nvarchar(MAX),
             bAnyActiveMemberShip bit,
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
              ALTER TABLE WebSiteNavigation ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteNavigation ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sDisplayName')
            BEGIN        
              PRINT N'Adding Column sDisplayName to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sDisplayName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iPageID')
            BEGIN        
              PRINT N'Adding Column iPageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iPageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sPageID')
            BEGIN        
              PRINT N'Adding Column sPageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sPageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sNavigationIdentifyer')
            BEGIN        
              PRINT N'Adding Column sNavigationIdentifyer to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sNavigationIdentifyer nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iNavigationTypeID')
            BEGIN        
              PRINT N'Adding Column iNavigationTypeID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iNavigationTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sNavigationTypeID')
            BEGIN        
              PRINT N'Adding Column sNavigationTypeID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sNavigationTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iParentNavID')
            BEGIN        
              PRINT N'Adding Column iParentNavID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iParentNavID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sParentNavID')
            BEGIN        
              PRINT N'Adding Column sParentNavID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sParentNavID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCustomPrefix')
            BEGIN        
              PRINT N'Adding Column sCustomPrefix to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCustomPrefix nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCustomSuffix')
            BEGIN        
              PRINT N'Adding Column sCustomSuffix to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCustomSuffix nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sCustomAttributes')
            BEGIN        
              PRINT N'Adding Column sCustomAttributes to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sCustomAttributes nvarchar(MAX);
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
              ALTER TABLE WebSiteNavigation ADD sScreenID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sImageSmallURL')
            BEGIN        
              PRINT N'Adding Column sImageSmallURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sImageSmallURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sImageLargeURL')
            BEGIN        
              PRINT N'Adding Column sImageLargeURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sImageLargeURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sPagePreviewSmallURL')
            BEGIN        
              PRINT N'Adding Column sPagePreviewSmallURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sPagePreviewSmallURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sPagePreviewLargeURL')
            BEGIN        
              PRINT N'Adding Column sPagePreviewLargeURL to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sPagePreviewLargeURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'iMemberShipID')
            BEGIN        
              PRINT N'Adding Column iMemberShipID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD iMemberShipID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'sMemberShipID')
            BEGIN        
              PRINT N'Adding Column sMemberShipID to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD sMemberShipID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigation' AND COLUMN_NAME = 'bAnyActiveMemberShip')
            BEGIN        
              PRINT N'Adding Column bAnyActiveMemberShip to Table WebSiteNavigation';
              ALTER TABLE WebSiteNavigation ADD bAnyActiveMemberShip bit;
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
             sAccessLevel nvarchar(MAX),
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
              ALTER TABLE WebSiteNavigationRoles ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteNavigationRoles ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteNavigationRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteNavigationRoles';
              ALTER TABLE WebSiteNavigationRoles ADD sAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sPageName nvarchar(MAX),
             sPageNavigationName nvarchar(MAX),
             sPageNavigationURL nvarchar(MAX),
             sPageTitle nvarchar(MAX),
             sMetaTags nvarchar(MAX),
             sClassification nvarchar(MAX),
             sPageDescription nvarchar(MAX),
             sKeyWords nvarchar(MAX),
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(MAX),
             sSiteTemplateURI nvarchar(MAX),
             sSiteTempalteURL nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(MAX),
             bRestrictAccess bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             iSiteTemplatePageID Int,
             sSiteTemplatePageID nvarchar(MAX),
             iNavLinkID Int,
             sNavLinkID nvarchar(MAX),
             iMemberShipID Int,
             sMemberShipID nvarchar(MAX),
             bAnyActiveMemberShip bit,
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
              ALTER TABLE WebSitePage ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePage ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageName')
            BEGIN        
              PRINT N'Adding Column sPageName to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageNavigationName')
            BEGIN        
              PRINT N'Adding Column sPageNavigationName to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageNavigationName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageNavigationURL')
            BEGIN        
              PRINT N'Adding Column sPageNavigationURL to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageNavigationURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageTitle')
            BEGIN        
              PRINT N'Adding Column sPageTitle to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sMetaTags')
            BEGIN        
              PRINT N'Adding Column sMetaTags to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sMetaTags nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sClassification')
            BEGIN        
              PRINT N'Adding Column sClassification to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sClassification nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sPageDescription')
            BEGIN        
              PRINT N'Adding Column sPageDescription to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sPageDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sKeyWords nvarchar(MAX);
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
              ALTER TABLE WebSitePage ADD sSiteTemplateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTemplateURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTempalteURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sLoadIncludeURI nvarchar(MAX);
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
              ALTER TABLE WebSitePage ADD sZoneID nvarchar(MAX);
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
              ALTER TABLE WebSitePage ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplatePageID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iSiteTemplatePageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplatePageID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sSiteTemplatePageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iNavLinkID')
            BEGIN        
              PRINT N'Adding Column iNavLinkID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iNavLinkID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sNavLinkID')
            BEGIN        
              PRINT N'Adding Column sNavLinkID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sNavLinkID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'iMemberShipID')
            BEGIN        
              PRINT N'Adding Column iMemberShipID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD iMemberShipID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'sMemberShipID')
            BEGIN        
              PRINT N'Adding Column sMemberShipID to Table WebSitePage';
              ALTER TABLE WebSitePage ADD sMemberShipID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage' AND COLUMN_NAME = 'bAnyActiveMemberShip')
            BEGIN        
              PRINT N'Adding Column bAnyActiveMemberShip to Table WebSitePage';
              ALTER TABLE WebSitePage ADD bAnyActiveMemberShip bit;
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sFieldName nvarchar(MAX),
             sValue nvarchar(MAX),
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
              ALTER TABLE WebSitePageProperties ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageProperties ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sFieldName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSitePageProperties';
              ALTER TABLE WebSitePageProperties ADD sValue nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
             sAccessLevel nvarchar(MAX),
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
              ALTER TABLE WebSitePageRoles ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageRoles ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSitePageRoles';
              ALTER TABLE WebSitePageRoles ADD sAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sThumbNailImageURL nvarchar(MAX),
             sVersion nvarchar(MAX),
             sLocationURL nvarchar(MAX),
             sLocationURI nvarchar(MAX),
             sTemplateBody nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
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
              ALTER TABLE WebSitePageTemplates ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageTemplates ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sThumbNailImageURL')
            BEGIN        
              PRINT N'Adding Column sThumbNailImageURL to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sThumbNailImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sLocationURL')
            BEGIN        
              PRINT N'Adding Column sLocationURL to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sLocationURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sLocationURI')
            BEGIN        
              PRINT N'Adding Column sLocationURI to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sLocationURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sTemplateBody')
            BEGIN        
              PRINT N'Adding Column sTemplateBody to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sTemplateBody nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplates' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplates';
              ALTER TABLE WebSitePageTemplates ADD sLanguageID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sThumbNailImageURL nvarchar(MAX),
             sVersion nvarchar(MAX),
             sTemplateBody nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
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
              ALTER TABLE WebSitePageTemplatesPage ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageTemplatesPage ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sThumbNailImageURL')
            BEGIN        
              PRINT N'Adding Column sThumbNailImageURL to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sThumbNailImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sTemplateBody')
            BEGIN        
              PRINT N'Adding Column sTemplateBody to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sTemplateBody nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplatesPage';
              ALTER TABLE WebSitePageTemplatesPage ADD sLanguageID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sCodeName nvarchar(MAX),
             sDefaultValue nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
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
              ALTER TABLE WebSitePageTemplateZones ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageTemplateZones ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sCodeName')
            BEGIN        
              PRINT N'Adding Column sCodeName to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sCodeName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sDefaultValue')
            BEGIN        
              PRINT N'Adding Column sDefaultValue to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sDefaultValue nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplateZones';
              ALTER TABLE WebSitePageTemplateZones ADD sLanguageID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sCodeName nvarchar(MAX),
             sDefaultValue nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             iContentZoneID Int,
             sContentZoneID nvarchar(MAX),
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
              ALTER TABLE WebSitePageTemplateZonesContent ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageTemplateZonesContent ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sCodeName')
            BEGIN        
              PRINT N'Adding Column sCodeName to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sCodeName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sDefaultValue')
            BEGIN        
              PRINT N'Adding Column sDefaultValue to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sDefaultValue nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'iContentZoneID')
            BEGIN        
              PRINT N'Adding Column iContentZoneID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD iContentZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent' AND COLUMN_NAME = 'sContentZoneID')
            BEGIN        
              PRINT N'Adding Column sContentZoneID to Table WebSitePageTemplateZonesContent';
              ALTER TABLE WebSitePageTemplateZonesContent ADD sContentZoneID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iZoneID Int,
             sZoneID nvarchar(MAX),
             sName nvarchar(MAX),
             sContent nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
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
              ALTER TABLE WebSitePageZone ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageZone ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePageZone';
              ALTER TABLE WebSitePageZone ADD sLoadIncludeURI nvarchar(MAX);
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
              ALTER TABLE WebSitePageZone ADD sLanguageID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iZoneID Int,
             sZoneID nvarchar(MAX),
             sName nvarchar(MAX),
             sContent nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iContentZoneID Int,
             sContentZoneID nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
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
              ALTER TABLE WebSitePageZoneContent ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageZoneContent ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sLoadIncludeURI nvarchar(MAX);
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
              ALTER TABLE WebSitePageZoneContent ADD sContentZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageZoneContent';
              ALTER TABLE WebSitePageZoneContent ADD sLanguageID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sFieldName nvarchar(MAX),
             sValue nvarchar(MAX),
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
              ALTER TABLE WebSiteProperties ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteProperties ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sFieldName')
            BEGIN        
              PRINT N'Adding Column sFieldName to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sFieldName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteProperties' AND COLUMN_NAME = 'sValue')
            BEGIN        
              PRINT N'Adding Column sValue to Table WebSiteProperties';
              ALTER TABLE WebSiteProperties ADD sValue nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
             sAccessLevel nvarchar(MAX),
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
              ALTER TABLE WebSiteRole ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteRole ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteRole' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteRole';
              ALTER TABLE WebSiteRole ADD sAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sScreenName nvarchar(MAX),
             sScreenNavigationName nvarchar(MAX),
             sScreenNavigationURL nvarchar(MAX),
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(MAX),
             sSiteTemplateURI nvarchar(MAX),
             sSiteTempalteURL nvarchar(MAX),
             sScreenLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(MAX),
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
              ALTER TABLE WebSiteScreen ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteScreen ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenName')
            BEGIN        
              PRINT N'Adding Column sScreenName to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenNavigationName')
            BEGIN        
              PRINT N'Adding Column sScreenNavigationName to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenNavigationName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenNavigationURL')
            BEGIN        
              PRINT N'Adding Column sScreenNavigationURL to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenNavigationURL nvarchar(MAX);
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
              ALTER TABLE WebSiteScreen ADD sSiteTemplateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sSiteTemplateURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sSiteTempalteURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreen' AND COLUMN_NAME = 'sScreenLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sScreenLoadIncludeURI to Table WebSiteScreen';
              ALTER TABLE WebSiteScreen ADD sScreenLoadIncludeURI nvarchar(MAX);
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
              ALTER TABLE WebSiteScreen ADD sZoneID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iRoleID Int,
             sRoleID nvarchar(MAX),
             sAccessLevel nvarchar(MAX),
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
              ALTER TABLE WebSiteScreenRoles ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteScreenRoles ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'iRoleID')
            BEGIN        
              PRINT N'Adding Column iRoleID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD iRoleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sRoleID')
            BEGIN        
              PRINT N'Adding Column sRoleID to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sRoleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteScreenRoles' AND COLUMN_NAME = 'sAccessLevel')
            BEGIN        
              PRINT N'Adding Column sAccessLevel to Table WebSiteScreenRoles';
              ALTER TABLE WebSiteScreenRoles ADD sAccessLevel nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sAccessKey nvarchar(MAX),
             sPrefix nvarchar(MAX),
             sFName nvarchar(MAX),
             sMName nvarchar(MAX),
             sLName nvarchar(MAX),
             bAccLocked bit,
             iPrimaryRole Int,
             sPrimaryRole nvarchar(MAX),
             sAvitarImgURL nvarchar(MAX),
             bCurrentlyLoggedIn bit,
             iReputationLevel Int,
             sKeyWords nvarchar(MAX),
             sScreenName nvarchar(MAX),
             sProfileDiscription nvarchar(MAX),
             iGenderTypeID Int,
             sGenderTypeID nvarchar(MAX),
             bPrivateProfile bit,
             dtDateOfBirth datetime,
             sActivationKey nvarchar(MAX),
             dtLastLoggedIn nvarchar(MAX),
             bAccountActivated bit,
             sAddress1 nvarchar(MAX),
             sAddress2 nvarchar(MAX),
             sAddress3 nvarchar(MAX),
             sCity nvarchar(MAX),
             iStateID Int,
             sStateID nvarchar(MAX),
             sPostalCode nvarchar(MAX),
             iCountryID Int,
             sCountryID nvarchar(MAX),
             sPrimaryEMail nvarchar(MAX),
             sPrimaryPhone nvarchar(MAX),
             bOptInMarketing bit,
             sBillAddress1 nvarchar(MAX),
             sBillAddress2 nvarchar(MAX),
             sBillAddress3 nvarchar(MAX),
             sBillCity nvarchar(MAX),
             iBillStateID Int,
             sBillStateID nvarchar(MAX),
             sBillPostalCode nvarchar(MAX),
             iBillCountryID Int,
             sBillCountryID nvarchar(MAX),
             IPAddressess nvarchar(MAX),
             bForceLogOut bit,
             sCurrentSession nvarchar(MAX),
             sCookieID nvarchar(MAX),
             sIP nvarchar(MAX),
             iRefferedByID Int,
             sRefferedByID nvarchar(MAX),
             sRefferealCode1 nvarchar(MAX),
             sRefferealCode2 nvarchar(MAX),
             sRefferealCode3 nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sCompanyName nvarchar(MAX),
             sCompanyURL nvarchar(MAX),
             sCompanyTitle nvarchar(MAX),
             sEventLog nvarchar(MAX),
             sNotes nvarchar(MAX),
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
              ALTER TABLE WebSite_Leads ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSite_Leads ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAccessKey')
            BEGIN        
              PRINT N'Adding Column sAccessKey to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAccessKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrefix')
            BEGIN        
              PRINT N'Adding Column sPrefix to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrefix nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sMName')
            BEGIN        
              PRINT N'Adding Column sMName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sMName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sLName nvarchar(MAX);
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
              ALTER TABLE WebSite_Leads ADD sPrimaryRole nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sAvitarImgURL to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAvitarImgURL nvarchar(MAX);
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
              ALTER TABLE WebSite_Leads ADD sKeyWords nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sScreenName')
            BEGIN        
              PRINT N'Adding Column sScreenName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sScreenName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sProfileDiscription')
            BEGIN        
              PRINT N'Adding Column sProfileDiscription to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sProfileDiscription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iGenderTypeID')
            BEGIN        
              PRINT N'Adding Column iGenderTypeID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iGenderTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sGenderTypeID')
            BEGIN        
              PRINT N'Adding Column sGenderTypeID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sGenderTypeID nvarchar(MAX);
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
              ALTER TABLE WebSite_Leads ADD sActivationKey nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'dtLastLoggedIn')
            BEGIN        
              PRINT N'Adding Column dtLastLoggedIn to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD dtLastLoggedIn nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bAccountActivated')
            BEGIN        
              PRINT N'Adding Column bAccountActivated to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bAccountActivated bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAddress1')
            BEGIN        
              PRINT N'Adding Column sAddress1 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAddress1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAddress2')
            BEGIN        
              PRINT N'Adding Column sAddress2 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAddress2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sAddress3')
            BEGIN        
              PRINT N'Adding Column sAddress3 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sAddress3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCity')
            BEGIN        
              PRINT N'Adding Column sCity to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCity nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iStateID')
            BEGIN        
              PRINT N'Adding Column iStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sStateID')
            BEGIN        
              PRINT N'Adding Column sStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sStateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPostalCode')
            BEGIN        
              PRINT N'Adding Column sPostalCode to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPostalCode nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iCountryID')
            BEGIN        
              PRINT N'Adding Column iCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCountryID')
            BEGIN        
              PRINT N'Adding Column sCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCountryID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrimaryEMail')
            BEGIN        
              PRINT N'Adding Column sPrimaryEMail to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrimaryEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sPrimaryPhone')
            BEGIN        
              PRINT N'Adding Column sPrimaryPhone to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sPrimaryPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bOptInMarketing')
            BEGIN        
              PRINT N'Adding Column bOptInMarketing to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bOptInMarketing bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillAddress1')
            BEGIN        
              PRINT N'Adding Column sBillAddress1 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillAddress1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillAddress2')
            BEGIN        
              PRINT N'Adding Column sBillAddress2 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillAddress2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillAddress3')
            BEGIN        
              PRINT N'Adding Column sBillAddress3 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillAddress3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillCity')
            BEGIN        
              PRINT N'Adding Column sBillCity to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillCity nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iBillStateID')
            BEGIN        
              PRINT N'Adding Column iBillStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iBillStateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillStateID')
            BEGIN        
              PRINT N'Adding Column sBillStateID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillStateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillPostalCode')
            BEGIN        
              PRINT N'Adding Column sBillPostalCode to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillPostalCode nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iBillCountryID')
            BEGIN        
              PRINT N'Adding Column iBillCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iBillCountryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sBillCountryID')
            BEGIN        
              PRINT N'Adding Column sBillCountryID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sBillCountryID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'IPAddressess')
            BEGIN        
              PRINT N'Adding Column IPAddressess to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD IPAddressess nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'bForceLogOut')
            BEGIN        
              PRINT N'Adding Column bForceLogOut to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD bForceLogOut bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCurrentSession')
            BEGIN        
              PRINT N'Adding Column sCurrentSession to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCurrentSession nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCookieID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iRefferedByID')
            BEGIN        
              PRINT N'Adding Column iRefferedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iRefferedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferedByID')
            BEGIN        
              PRINT N'Adding Column sRefferedByID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferealCode1')
            BEGIN        
              PRINT N'Adding Column sRefferealCode1 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferealCode1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferealCode2')
            BEGIN        
              PRINT N'Adding Column sRefferealCode2 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferealCode2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sRefferealCode3')
            BEGIN        
              PRINT N'Adding Column sRefferealCode3 to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sRefferealCode3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCompanyName')
            BEGIN        
              PRINT N'Adding Column sCompanyName to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCompanyName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCompanyURL')
            BEGIN        
              PRINT N'Adding Column sCompanyURL to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCompanyURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sCompanyTitle')
            BEGIN        
              PRINT N'Adding Column sCompanyTitle to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sCompanyTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sEventLog')
            BEGIN        
              PRINT N'Adding Column sEventLog to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sEventLog nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Leads' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSite_Leads';
              ALTER TABLE WebSite_Leads ADD sNotes nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iEventTypeID Int,
             sEventTypeID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sTitle nvarchar(MAX),
             sMessage nvarchar(MAX),
             sHTTPx nvarchar(MAX),
             sIP nvarchar(MAX),
             sOther nvarchar(MAX),
             iFromID Int,
             sFromID nvarchar(MAX),
             sCcID nvarchar(MAX),
             sCc nvarchar(MAX),
             sBCcID nvarchar(MAX),
             sBCc nvarchar(MAX),
             sAttachements nvarchar(MAX),
             sToEmail nvarchar(MAX),
             sToPhone nvarchar(MAX),
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
              ALTER TABLE UserShareEvents ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sControl nvarchar(MAX);
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
              ALTER TABLE UserShareEvents ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iEventTypeID')
            BEGIN        
              PRINT N'Adding Column iEventTypeID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iEventTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sEventTypeID')
            BEGIN        
              PRINT N'Adding Column sEventTypeID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sEventTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sMessage nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sHTTPx nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sOther nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sFromID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sBCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sBCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sAttachements')
            BEGIN        
              PRINT N'Adding Column sAttachements to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sAttachements nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sToEmail')
            BEGIN        
              PRINT N'Adding Column sToEmail to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sToEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserShareEvents' AND COLUMN_NAME = 'sToPhone')
            BEGIN        
              PRINT N'Adding Column sToPhone to Table UserShareEvents';
              ALTER TABLE UserShareEvents ADD sToPhone nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sEvent nvarchar(MAX),
             sLog nvarchar(MAX),
             sNotes nvarchar(MAX),
             sCookieID nvarchar(MAX),
             sIP nvarchar(MAX),
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
              ALTER TABLE WebSiteBlogEvents ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteBlogEvents ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sEvent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sLog nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sNotes nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sCookieID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteBlogEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteBlogEvents';
              ALTER TABLE WebSiteBlogEvents ADD sIP nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             dTopicCount float,
             iAdScheduleID Int,
             sAdScheduleID nvarchar(MAX),
             sKeyWords nvarchar(MAX),
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
              ALTER TABLE WebSiteForum ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sSync nvarchar(MAX);
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
              ALTER TABLE WebSiteForum ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'dTopicCount')
            BEGIN        
              PRINT N'Adding Column dTopicCount to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD dTopicCount float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'iAdScheduleID')
            BEGIN        
              PRINT N'Adding Column iAdScheduleID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD iAdScheduleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sAdScheduleID')
            BEGIN        
              PRINT N'Adding Column sAdScheduleID to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sAdScheduleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForum' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteForum';
              ALTER TABLE WebSiteForum ADD sKeyWords nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSiteForumiAnnouncements';
        CREATE TABLE WebSiteForumiAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSiteForumiAnnouncements ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sVersion nvarchar(MAX);
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
              ALTER TABLE WebSiteForumiAnnouncements ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumiAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteForumiAnnouncements';
              ALTER TABLE WebSiteForumiAnnouncements ADD sAnsweredByResponseID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopiAnnouncements';
        CREATE TABLE WebSiteForumTopiAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sVersion nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopiAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteForumTopiAnnouncements';
              ALTER TABLE WebSiteForumTopiAnnouncements ADD sAnsweredByResponseID nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sEvent nvarchar(MAX),
             sLog nvarchar(MAX),
             sNotes nvarchar(MAX),
             sCookieID nvarchar(MAX),
             sIP nvarchar(MAX),
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
              ALTER TABLE WebSiteForumTopicEvents ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopicEvents ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sEvent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sLog nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sNotes nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sCookieID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteForumTopicEvents';
              ALTER TABLE WebSiteForumTopicEvents ADD sIP nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopicPosts';
        CREATE TABLE WebSiteForumTopicPosts
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
             dTopicCount nvarchar(MAX),
             bTrending nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserThumbNail nvarchar(MAX),
             sKeyWords nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopicPosts ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sVersion nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopicPosts ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sAnsweredByResponseID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'dTopicCount')
            BEGIN        
              PRINT N'Adding Column dTopicCount to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD dTopicCount nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'bTrending')
            BEGIN        
              PRINT N'Adding Column bTrending to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD bTrending nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sUserThumbNail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPosts' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteForumTopicPosts';
              ALTER TABLE WebSiteForumTopicPosts ADD sKeyWords nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopicPostsResponses';
        CREATE TABLE WebSiteForumTopicPostsResponses
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserThumbNail nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sVersion nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopicPostsResponses' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteForumTopicPostsResponses';
              ALTER TABLE WebSiteForumTopicPostsResponses ADD sUserThumbNail nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics')
    BEGIN
        PRINT N'Creating Table WebSiteForumTopics';
        CREATE TABLE WebSiteForumTopics
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             dPostCounts float,
             sAdvertisements nvarchar(MAX),
             iAdScheduleID Int,
             sAdScheduleID nvarchar(MAX),
             sKeyWords nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSiteForumTopics ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'dPostCounts')
            BEGIN        
              PRINT N'Adding Column dPostCounts to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD dPostCounts float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sAdvertisements')
            BEGIN        
              PRINT N'Adding Column sAdvertisements to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sAdvertisements nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'iAdScheduleID')
            BEGIN        
              PRINT N'Adding Column iAdScheduleID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD iAdScheduleID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sAdScheduleID')
            BEGIN        
              PRINT N'Adding Column sAdScheduleID to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sAdScheduleID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteForumTopics' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSiteForumTopics';
              ALTER TABLE WebSiteForumTopics ADD sKeyWords nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             sSyncControl nvarchar(MAX),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iProfileID Int,
             sProfileID nvarchar(MAX),
             sProfileThumbURL nvarchar(MAX),
             sPost nvarchar(MAX),
             dAmount float,
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserThumbNail nvarchar(MAX),
             iDomainID Int,
             sDomainID nvarchar(MAX),
             sDomainThumbNail nvarchar(MAX),
             dDeliveryInTime float,
             sDeliveryInTimeFrame nvarchar(MAX),
             dtETA_Delivery datetime,
             sCoverLetter nvarchar(MAX),
             sResume nvarchar(MAX),
             sResumeUploadLink1 nvarchar(MAX),
             sResumeUploadLink2 nvarchar(MAX),
             sResumeUploadLink3 nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
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
              ALTER TABLE WebSiteJobApplicant ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sSyncControl')
            BEGIN        
              PRINT N'Adding Column sSyncControl to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sSyncControl nvarchar(MAX);
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
              ALTER TABLE WebSiteJobApplicant ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iProfileID')
            BEGIN        
              PRINT N'Adding Column iProfileID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iProfileID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sProfileID')
            BEGIN        
              PRINT N'Adding Column sProfileID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sProfileID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sProfileThumbURL')
            BEGIN        
              PRINT N'Adding Column sProfileThumbURL to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sProfileThumbURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sPost')
            BEGIN        
              PRINT N'Adding Column sPost to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sPost nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dAmount')
            BEGIN        
              PRINT N'Adding Column dAmount to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dAmount float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sUserThumbNail')
            BEGIN        
              PRINT N'Adding Column sUserThumbNail to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sUserThumbNail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'iDomainID')
            BEGIN        
              PRINT N'Adding Column iDomainID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD iDomainID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sDomainID')
            BEGIN        
              PRINT N'Adding Column sDomainID to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sDomainID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sDomainThumbNail')
            BEGIN        
              PRINT N'Adding Column sDomainThumbNail to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sDomainThumbNail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dDeliveryInTime')
            BEGIN        
              PRINT N'Adding Column dDeliveryInTime to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dDeliveryInTime float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sDeliveryInTimeFrame')
            BEGIN        
              PRINT N'Adding Column sDeliveryInTimeFrame to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sDeliveryInTimeFrame nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'dtETA_Delivery')
            BEGIN        
              PRINT N'Adding Column dtETA_Delivery to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD dtETA_Delivery datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sCoverLetter')
            BEGIN        
              PRINT N'Adding Column sCoverLetter to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sCoverLetter nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResume')
            BEGIN        
              PRINT N'Adding Column sResume to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResume nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResumeUploadLink1')
            BEGIN        
              PRINT N'Adding Column sResumeUploadLink1 to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResumeUploadLink1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResumeUploadLink2')
            BEGIN        
              PRINT N'Adding Column sResumeUploadLink2 to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResumeUploadLink2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'sResumeUploadLink3')
            BEGIN        
              PRINT N'Adding Column sResumeUploadLink3 to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD sResumeUploadLink3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobApplicant' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteJobApplicant';
              ALTER TABLE WebSiteJobApplicant ADD bHidden bit;
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sEvent nvarchar(MAX),
             sLog nvarchar(MAX),
             sNotes nvarchar(MAX),
             sCookieID nvarchar(MAX),
             sIP nvarchar(MAX),
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
              ALTER TABLE WebSiteJobEvents ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteJobEvents ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sEvent')
            BEGIN        
              PRINT N'Adding Column sEvent to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sEvent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sLog')
            BEGIN        
              PRINT N'Adding Column sLog to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sLog nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sNotes')
            BEGIN        
              PRINT N'Adding Column sNotes to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sNotes nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sCookieID')
            BEGIN        
              PRINT N'Adding Column sCookieID to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sCookieID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobEvents' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table WebSiteJobEvents';
              ALTER TABLE WebSiteJobEvents ADD sIP nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             sSyncControl nvarchar(MAX),
             dtDateCreated datetime,
             dtDateUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sTitle nvarchar(MAX),
             sJobDescription nvarchar(MAX),
             sSkillRequirements nvarchar(MAX),
             bOpen bit,
             bJobFilled bit,
             iFilledByID Int,
             sFilledByID nvarchar(MAX),
             sFilledByThumbURL nvarchar(MAX),
             sReview nvarchar(MAX),
             sProgrammerReview nvarchar(MAX),
             dPrice float,
             dBudget float,
             iEmployerID Int,
             sEmployerID nvarchar(MAX),
             sEmployerThumbURL nvarchar(MAX),
             dNumApplicants float,
             sDeadLine nvarchar(MAX),
             sSalary nvarchar(MAX),
             sSkillsNeeded nvarchar(MAX),
             iJobTypeID Int,
             sJobTypeID nvarchar(MAX),
             sJobLocation nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
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
              ALTER TABLE WebSiteJobs ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSyncControl')
            BEGIN        
              PRINT N'Adding Column sSyncControl to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSyncControl nvarchar(MAX);
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
              ALTER TABLE WebSiteJobs ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sJobDescription')
            BEGIN        
              PRINT N'Adding Column sJobDescription to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sJobDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSkillRequirements')
            BEGIN        
              PRINT N'Adding Column sSkillRequirements to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSkillRequirements nvarchar(MAX);
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
              ALTER TABLE WebSiteJobs ADD sFilledByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sFilledByThumbURL')
            BEGIN        
              PRINT N'Adding Column sFilledByThumbURL to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sFilledByThumbURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sReview')
            BEGIN        
              PRINT N'Adding Column sReview to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sReview nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sProgrammerReview')
            BEGIN        
              PRINT N'Adding Column sProgrammerReview to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sProgrammerReview nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dPrice')
            BEGIN        
              PRINT N'Adding Column dPrice to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dPrice float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dBudget')
            BEGIN        
              PRINT N'Adding Column dBudget to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dBudget float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iEmployerID')
            BEGIN        
              PRINT N'Adding Column iEmployerID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iEmployerID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sEmployerID')
            BEGIN        
              PRINT N'Adding Column sEmployerID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sEmployerID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sEmployerThumbURL')
            BEGIN        
              PRINT N'Adding Column sEmployerThumbURL to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sEmployerThumbURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'dNumApplicants')
            BEGIN        
              PRINT N'Adding Column dNumApplicants to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD dNumApplicants float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sDeadLine')
            BEGIN        
              PRINT N'Adding Column sDeadLine to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sDeadLine nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSalary')
            BEGIN        
              PRINT N'Adding Column sSalary to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSalary nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sSkillsNeeded')
            BEGIN        
              PRINT N'Adding Column sSkillsNeeded to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sSkillsNeeded nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'iJobTypeID')
            BEGIN        
              PRINT N'Adding Column iJobTypeID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD iJobTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sJobTypeID')
            BEGIN        
              PRINT N'Adding Column sJobTypeID to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sJobTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'sJobLocation')
            BEGIN        
              PRINT N'Adding Column sJobLocation to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD sJobLocation nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteJobs' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteJobs';
              ALTER TABLE WebSiteJobs ADD bHidden bit;
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iParentCommentID Int,
             sParentCommentID nvarchar(MAX),
             sComment nvarchar(MAX),
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
              ALTER TABLE WebSitePageComments ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSitePageComments ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'iParentCommentID')
            BEGIN        
              PRINT N'Adding Column iParentCommentID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD iParentCommentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sParentCommentID')
            BEGIN        
              PRINT N'Adding Column sParentCommentID to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sParentCommentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageComments' AND COLUMN_NAME = 'sComment')
            BEGIN        
              PRINT N'Adding Column sComment to Table WebSitePageComments';
              ALTER TABLE WebSitePageComments ADD sComment nvarchar(MAX);
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             dClicks float,
             dConversion float,
             dTotalRevenue float,
             dTotalCustomerProfit float,
             sAdvertisementContentHTML nvarchar(MAX),
             sAdImgURL nvarchar(MAX),
             sAdImgURI nvarchar(MAX),
             sAdShortHTML nvarchar(MAX),
             dAdPayPerClick float,
             dAdCostPerClick float,
             dAdPayPerView float,
             dAdCostPerView float,
             dAdClickBudget float,
             dAdViewBudget float,
             bDisabled bit,
             bHidden bit,
             dtAdExpOn datetime,
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
              ALTER TABLE WebSiteAdGroupAds ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteAdGroupAds ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dClicks')
            BEGIN        
              PRINT N'Adding Column dClicks to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dClicks float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dConversion')
            BEGIN        
              PRINT N'Adding Column dConversion to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dConversion float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dTotalRevenue')
            BEGIN        
              PRINT N'Adding Column dTotalRevenue to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dTotalRevenue float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dTotalCustomerProfit')
            BEGIN        
              PRINT N'Adding Column dTotalCustomerProfit to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dTotalCustomerProfit float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdvertisementContentHTML')
            BEGIN        
              PRINT N'Adding Column sAdvertisementContentHTML to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdvertisementContentHTML nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdImgURL')
            BEGIN        
              PRINT N'Adding Column sAdImgURL to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdImgURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdImgURI')
            BEGIN        
              PRINT N'Adding Column sAdImgURI to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdImgURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'sAdShortHTML')
            BEGIN        
              PRINT N'Adding Column sAdShortHTML to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD sAdShortHTML nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdPayPerClick')
            BEGIN        
              PRINT N'Adding Column dAdPayPerClick to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdPayPerClick float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdCostPerClick')
            BEGIN        
              PRINT N'Adding Column dAdCostPerClick to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdCostPerClick float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdPayPerView')
            BEGIN        
              PRINT N'Adding Column dAdPayPerView to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdPayPerView float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdCostPerView')
            BEGIN        
              PRINT N'Adding Column dAdCostPerView to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdCostPerView float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdClickBudget')
            BEGIN        
              PRINT N'Adding Column dAdClickBudget to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdClickBudget float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dAdViewBudget')
            BEGIN        
              PRINT N'Adding Column dAdViewBudget to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dAdViewBudget float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdGroupAds' AND COLUMN_NAME = 'dtAdExpOn')
            BEGIN        
              PRINT N'Adding Column dtAdExpOn to Table WebSiteAdGroupAds';
              ALTER TABLE WebSiteAdGroupAds ADD dtAdExpOn datetime;
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
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             dClicks float,
             dConversion float,
             dTotalRevenue float,
             dTotalCustomerProfit float,
             bDisabled bit,
             bHidden bit,
             dtAdGrpExpOn datetime,
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
              ALTER TABLE WebSiteAdvertisementGroup ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sControl nvarchar(MAX);
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
              ALTER TABLE WebSiteAdvertisementGroup ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dClicks')
            BEGIN        
              PRINT N'Adding Column dClicks to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dClicks float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dConversion')
            BEGIN        
              PRINT N'Adding Column dConversion to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dConversion float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dTotalRevenue')
            BEGIN        
              PRINT N'Adding Column dTotalRevenue to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dTotalRevenue float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dTotalCustomerProfit')
            BEGIN        
              PRINT N'Adding Column dTotalCustomerProfit to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dTotalCustomerProfit float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAdvertisementGroup' AND COLUMN_NAME = 'dtAdGrpExpOn')
            BEGIN        
              PRINT N'Adding Column dtAdGrpExpOn to Table WebSiteAdvertisementGroup';
              ALTER TABLE WebSiteAdvertisementGroup ADD dtAdGrpExpOn datetime;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSiteAnnouncements';
        CREATE TABLE WebSiteAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSiteAnnouncements ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sVersion nvarchar(MAX);
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
              ALTER TABLE WebSiteAnnouncements ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sAnsweredByResponseID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncements' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteAnnouncements';
              ALTER TABLE WebSiteAnnouncements ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements')
    BEGIN
        PRINT N'Creating Table WebSitePageiAnnouncements';
        CREATE TABLE WebSitePageiAnnouncements
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sParentID nvarchar(MAX);
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
              ALTER TABLE WebSitePageiAnnouncements ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sVersion nvarchar(MAX);
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
              ALTER TABLE WebSitePageiAnnouncements ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageiAnnouncements' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSitePageiAnnouncements';
              ALTER TABLE WebSitePageiAnnouncements ADD sAnsweredByResponseID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging')
    BEGIN
        PRINT N'Creating Table WebSite_Messaging';
        CREATE TABLE WebSite_Messaging
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sContent nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sFromName nvarchar(MAX),
             sFromEmail nvarchar(MAX),
             sMessageBody nvarchar(MAX),
             sAttachementURI1 nvarchar(MAX),
             sAttachementURL1 nvarchar(MAX),
             sAttachementURI2 nvarchar(MAX),
             sAttachementURL2 nvarchar(MAX),
             sAttachementURI3 nvarchar(MAX),
             sAttachementURL3 nvarchar(MAX),
             sAttachementURI4 nvarchar(MAX),
             sAttachementURL4 nvarchar(MAX),
             sAttachementURI5 nvarchar(MAX),
             sAttachementURL5 nvarchar(MAX),
             sAttachementURI6 nvarchar(MAX),
             sAttachementURL6 nvarchar(MAX),
             sAttachementURI7 nvarchar(MAX),
             sAttachementURL7 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sLoadIncludeURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sFromName')
            BEGIN        
              PRINT N'Adding Column sFromName to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sFromName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sFromEmail')
            BEGIN        
              PRINT N'Adding Column sFromEmail to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sFromEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sMessageBody')
            BEGIN        
              PRINT N'Adding Column sMessageBody to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sMessageBody nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI1')
            BEGIN        
              PRINT N'Adding Column sAttachementURI1 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL1')
            BEGIN        
              PRINT N'Adding Column sAttachementURL1 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI2')
            BEGIN        
              PRINT N'Adding Column sAttachementURI2 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL2')
            BEGIN        
              PRINT N'Adding Column sAttachementURL2 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI3')
            BEGIN        
              PRINT N'Adding Column sAttachementURI3 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL3')
            BEGIN        
              PRINT N'Adding Column sAttachementURL3 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI4')
            BEGIN        
              PRINT N'Adding Column sAttachementURI4 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI4 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL4')
            BEGIN        
              PRINT N'Adding Column sAttachementURL4 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL4 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI5')
            BEGIN        
              PRINT N'Adding Column sAttachementURI5 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI5 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL5')
            BEGIN        
              PRINT N'Adding Column sAttachementURL5 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL5 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI6')
            BEGIN        
              PRINT N'Adding Column sAttachementURI6 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI6 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL6')
            BEGIN        
              PRINT N'Adding Column sAttachementURL6 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL6 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURI7')
            BEGIN        
              PRINT N'Adding Column sAttachementURI7 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURI7 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging' AND COLUMN_NAME = 'sAttachementURL7')
            BEGIN        
              PRINT N'Adding Column sAttachementURL7 to Table WebSite_Messaging';
              ALTER TABLE WebSite_Messaging ADD sAttachementURL7 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History')
    BEGIN
        PRINT N'Creating Table WebSite_Messaging_History';
        CREATE TABLE WebSite_Messaging_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sContent nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             sSubject nvarchar(MAX),
             sFromName nvarchar(MAX),
             sFromEmail nvarchar(MAX),
             sMessageBody nvarchar(MAX),
             sAttachementURI1 nvarchar(MAX),
             sAttachementURL1 nvarchar(MAX),
             sAttachementURI2 nvarchar(MAX),
             sAttachementURL2 nvarchar(MAX),
             sAttachementURI3 nvarchar(MAX),
             sAttachementURL3 nvarchar(MAX),
             sAttachementURI4 nvarchar(MAX),
             sAttachementURL4 nvarchar(MAX),
             sAttachementURI5 nvarchar(MAX),
             sAttachementURL5 nvarchar(MAX),
             sAttachementURI6 nvarchar(MAX),
             sAttachementURL6 nvarchar(MAX),
             sAttachementURI7 nvarchar(MAX),
             sAttachementURL7 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sLoadIncludeURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sSubject')
            BEGIN        
              PRINT N'Adding Column sSubject to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sSubject nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sFromName')
            BEGIN        
              PRINT N'Adding Column sFromName to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sFromName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sFromEmail')
            BEGIN        
              PRINT N'Adding Column sFromEmail to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sFromEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sMessageBody')
            BEGIN        
              PRINT N'Adding Column sMessageBody to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sMessageBody nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI1')
            BEGIN        
              PRINT N'Adding Column sAttachementURI1 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL1')
            BEGIN        
              PRINT N'Adding Column sAttachementURL1 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI2')
            BEGIN        
              PRINT N'Adding Column sAttachementURI2 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL2')
            BEGIN        
              PRINT N'Adding Column sAttachementURL2 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI3')
            BEGIN        
              PRINT N'Adding Column sAttachementURI3 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL3')
            BEGIN        
              PRINT N'Adding Column sAttachementURL3 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI4')
            BEGIN        
              PRINT N'Adding Column sAttachementURI4 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI4 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL4')
            BEGIN        
              PRINT N'Adding Column sAttachementURL4 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL4 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI5')
            BEGIN        
              PRINT N'Adding Column sAttachementURI5 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI5 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL5')
            BEGIN        
              PRINT N'Adding Column sAttachementURL5 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL5 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI6')
            BEGIN        
              PRINT N'Adding Column sAttachementURI6 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI6 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL6')
            BEGIN        
              PRINT N'Adding Column sAttachementURL6 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL6 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURI7')
            BEGIN        
              PRINT N'Adding Column sAttachementURI7 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURI7 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSite_Messaging_History' AND COLUMN_NAME = 'sAttachementURL7')
            BEGIN        
              PRINT N'Adding Column sAttachementURL7 to Table WebSite_Messaging_History';
              ALTER TABLE WebSite_Messaging_History ADD sAttachementURL7 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar')
    BEGIN
        PRINT N'Creating Table WebSiteEventCalendar';
        CREATE TABLE WebSiteEventCalendar
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sShortDescription nvarchar(MAX),
             dtDateOfEvent datetime,
             dtFirstDateOfRegistrations datetime,
             dtLastDateOfRegistrations datetime,
             dtEarlyBirdRegistrations datetime,
             sFullDescription nvarchar(MAX),
             sRegistrationURL nvarchar(MAX),
             sMoreInfoEmail nvarchar(MAX),
             sContact nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             dEventCost float,
             dEarlyBirdDiscount float,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sShortDescription')
            BEGIN        
              PRINT N'Adding Column sShortDescription to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sShortDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dtDateOfEvent')
            BEGIN        
              PRINT N'Adding Column dtDateOfEvent to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dtDateOfEvent datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dtFirstDateOfRegistrations')
            BEGIN        
              PRINT N'Adding Column dtFirstDateOfRegistrations to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dtFirstDateOfRegistrations datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dtLastDateOfRegistrations')
            BEGIN        
              PRINT N'Adding Column dtLastDateOfRegistrations to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dtLastDateOfRegistrations datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dtEarlyBirdRegistrations')
            BEGIN        
              PRINT N'Adding Column dtEarlyBirdRegistrations to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dtEarlyBirdRegistrations datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sFullDescription')
            BEGIN        
              PRINT N'Adding Column sFullDescription to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sFullDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sRegistrationURL')
            BEGIN        
              PRINT N'Adding Column sRegistrationURL to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sRegistrationURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sMoreInfoEmail')
            BEGIN        
              PRINT N'Adding Column sMoreInfoEmail to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sMoreInfoEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'sContact')
            BEGIN        
              PRINT N'Adding Column sContact to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD sContact nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dEventCost')
            BEGIN        
              PRINT N'Adding Column dEventCost to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dEventCost float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendar' AND COLUMN_NAME = 'dEarlyBirdDiscount')
            BEGIN        
              PRINT N'Adding Column dEarlyBirdDiscount to Table WebSiteEventCalendar';
              ALTER TABLE WebSiteEventCalendar ADD dEarlyBirdDiscount float;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History')
    BEGIN
        PRINT N'Creating Table WebSitePage_History';
        CREATE TABLE WebSitePage_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sPageName nvarchar(MAX),
             sPageNavigationName nvarchar(MAX),
             sPageNavigationURL nvarchar(MAX),
             sPageTitle nvarchar(MAX),
             sMetaTags nvarchar(MAX),
             sClassification nvarchar(MAX),
             sPageDescription nvarchar(MAX),
             sKeyWords nvarchar(MAX),
             bIsLive bit,
             dtStart datetime,
             dtEnd datetime,
             iSiteTemplateID Int,
             sSiteTemplateID nvarchar(MAX),
             sSiteTemplateURI nvarchar(MAX),
             sSiteTempalteURL nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iZoneID Int,
             sZoneID nvarchar(MAX),
             bRestrictAccess bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             iSiteTemplatePageID Int,
             sSiteTemplatePageID nvarchar(MAX),
             iNavLinkID Int,
             sNavLinkID nvarchar(MAX),
             iMemberShipID Int,
             sMemberShipID nvarchar(MAX),
             bAnyActiveMemberShip bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sPageName')
            BEGIN        
              PRINT N'Adding Column sPageName to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sPageName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sPageNavigationName')
            BEGIN        
              PRINT N'Adding Column sPageNavigationName to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sPageNavigationName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sPageNavigationURL')
            BEGIN        
              PRINT N'Adding Column sPageNavigationURL to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sPageNavigationURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sPageTitle')
            BEGIN        
              PRINT N'Adding Column sPageTitle to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sPageTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sMetaTags')
            BEGIN        
              PRINT N'Adding Column sMetaTags to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sMetaTags nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sClassification')
            BEGIN        
              PRINT N'Adding Column sClassification to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sClassification nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sPageDescription')
            BEGIN        
              PRINT N'Adding Column sPageDescription to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sPageDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sKeyWords')
            BEGIN        
              PRINT N'Adding Column sKeyWords to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sKeyWords nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'bIsLive')
            BEGIN        
              PRINT N'Adding Column bIsLive to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD bIsLive bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'dtStart')
            BEGIN        
              PRINT N'Adding Column dtStart to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD dtStart datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'dtEnd')
            BEGIN        
              PRINT N'Adding Column dtEnd to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD dtEnd datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplateID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iSiteTemplateID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sSiteTemplateID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sSiteTemplateID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sSiteTemplateURI')
            BEGIN        
              PRINT N'Adding Column sSiteTemplateURI to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sSiteTemplateURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sSiteTempalteURL')
            BEGIN        
              PRINT N'Adding Column sSiteTempalteURL to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sSiteTempalteURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sLoadIncludeURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'bRestrictAccess')
            BEGIN        
              PRINT N'Adding Column bRestrictAccess to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD bRestrictAccess bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column iSiteTemplatePageID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iSiteTemplatePageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sSiteTemplatePageID')
            BEGIN        
              PRINT N'Adding Column sSiteTemplatePageID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sSiteTemplatePageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iNavLinkID')
            BEGIN        
              PRINT N'Adding Column iNavLinkID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iNavLinkID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sNavLinkID')
            BEGIN        
              PRINT N'Adding Column sNavLinkID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sNavLinkID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'iMemberShipID')
            BEGIN        
              PRINT N'Adding Column iMemberShipID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD iMemberShipID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'sMemberShipID')
            BEGIN        
              PRINT N'Adding Column sMemberShipID to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD sMemberShipID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePage_History' AND COLUMN_NAME = 'bAnyActiveMemberShip')
            BEGIN        
              PRINT N'Adding Column bAnyActiveMemberShip to Table WebSitePage_History';
              ALTER TABLE WebSitePage_History ADD bAnyActiveMemberShip bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplateZones_History';
        CREATE TABLE WebSitePageTemplateZones_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sCodeName nvarchar(MAX),
             sDefaultValue nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             bPrimaryContentArea bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sCodeName')
            BEGIN        
              PRINT N'Adding Column sCodeName to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sCodeName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sDefaultValue')
            BEGIN        
              PRINT N'Adding Column sDefaultValue to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sDefaultValue nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZones_History' AND COLUMN_NAME = 'bPrimaryContentArea')
            BEGIN        
              PRINT N'Adding Column bPrimaryContentArea to Table WebSitePageTemplateZones_History';
              ALTER TABLE WebSitePageTemplateZones_History ADD bPrimaryContentArea bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplateZonesContent_History';
        CREATE TABLE WebSitePageTemplateZonesContent_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sCodeName nvarchar(MAX),
             sDefaultValue nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
             iContentZoneID Int,
             sContentZoneID nvarchar(MAX),
             bPrimaryContentArea bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sCodeName')
            BEGIN        
              PRINT N'Adding Column sCodeName to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sCodeName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sDefaultValue')
            BEGIN        
              PRINT N'Adding Column sDefaultValue to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sDefaultValue nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sLanguageID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'iContentZoneID')
            BEGIN        
              PRINT N'Adding Column iContentZoneID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD iContentZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'sContentZoneID')
            BEGIN        
              PRINT N'Adding Column sContentZoneID to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD sContentZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplateZonesContent_History' AND COLUMN_NAME = 'bPrimaryContentArea')
            BEGIN        
              PRINT N'Adding Column bPrimaryContentArea to Table WebSitePageTemplateZonesContent_History';
              ALTER TABLE WebSitePageTemplateZonesContent_History ADD bPrimaryContentArea bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History')
    BEGIN
        PRINT N'Creating Table WebSitePageZone_History';
        CREATE TABLE WebSitePageZone_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iZoneID Int,
             sZoneID nvarchar(MAX),
             sName nvarchar(MAX),
             sContent nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sLoadIncludeURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZone_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageZone_History';
              ALTER TABLE WebSitePageZone_History ADD sLanguageID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History')
    BEGIN
        PRINT N'Creating Table WebSitePageZoneContent_History';
        CREATE TABLE WebSitePageZoneContent_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iZoneID Int,
             sZoneID nvarchar(MAX),
             sName nvarchar(MAX),
             sContent nvarchar(MAX),
             sLoadIncludeURI nvarchar(MAX),
             bLoadPartialPage bit,
             iContentZoneID Int,
             sContentZoneID nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'iZoneID')
            BEGIN        
              PRINT N'Adding Column iZoneID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD iZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sZoneID')
            BEGIN        
              PRINT N'Adding Column sZoneID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sLoadIncludeURI')
            BEGIN        
              PRINT N'Adding Column sLoadIncludeURI to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sLoadIncludeURI nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'bLoadPartialPage')
            BEGIN        
              PRINT N'Adding Column bLoadPartialPage to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD bLoadPartialPage bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'iContentZoneID')
            BEGIN        
              PRINT N'Adding Column iContentZoneID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD iContentZoneID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sContentZoneID')
            BEGIN        
              PRINT N'Adding Column sContentZoneID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sContentZoneID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageZoneContent_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageZoneContent_History';
              ALTER TABLE WebSitePageZoneContent_History ADD sLanguageID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips')
    BEGIN
        PRINT N'Creating Table WebSiteMemberShips';
        CREATE TABLE WebSiteMemberShips
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             dCost float,
             bIsReoccuringBilling bit,
             dBillingReOccuresEvery_Days float,
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bHidden bit,
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'dCost')
            BEGIN        
              PRINT N'Adding Column dCost to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD dCost float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'bIsReoccuringBilling')
            BEGIN        
              PRINT N'Adding Column bIsReoccuringBilling to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD bIsReoccuringBilling bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'dBillingReOccuresEvery_Days')
            BEGIN        
              PRINT N'Adding Column dBillingReOccuresEvery_Days to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD dBillingReOccuresEvery_Days float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShips' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteMemberShips';
              ALTER TABLE WebSiteMemberShips ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors')
    BEGIN
        PRINT N'Creating Table WebSiteSponsors';
        CREATE TABLE WebSiteSponsors
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iSponsorShipTypeID Int,
             sSponsorShipTypeID nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             iAssociatedUserID Int,
             sAssociatedUserID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sCategories nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sSpecialty nvarchar(MAX),
             sTitle nvarchar(MAX),
             sFocus nvarchar(MAX),
             sContactPhone nvarchar(MAX),
             sContactEMail nvarchar(MAX),
             sContactAddress nvarchar(MAX),
             dtSpnsshipExpOn datetime,
             sFName nvarchar(MAX),
             sLName nvarchar(MAX),
             sUserAvitarImgURL nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'iSponsorShipTypeID')
            BEGIN        
              PRINT N'Adding Column iSponsorShipTypeID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD iSponsorShipTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sSponsorShipTypeID')
            BEGIN        
              PRINT N'Adding Column sSponsorShipTypeID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sSponsorShipTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'iAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column iAssociatedUserID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD iAssociatedUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column sAssociatedUserID to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sAssociatedUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sCategories')
            BEGIN        
              PRINT N'Adding Column sCategories to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sCategories nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sSpecialty')
            BEGIN        
              PRINT N'Adding Column sSpecialty to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sSpecialty nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sFocus')
            BEGIN        
              PRINT N'Adding Column sFocus to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sFocus nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sContactPhone')
            BEGIN        
              PRINT N'Adding Column sContactPhone to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sContactPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sContactEMail')
            BEGIN        
              PRINT N'Adding Column sContactEMail to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sContactEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sContactAddress')
            BEGIN        
              PRINT N'Adding Column sContactAddress to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sContactAddress nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'dtSpnsshipExpOn')
            BEGIN        
              PRINT N'Adding Column dtSpnsshipExpOn to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD dtSpnsshipExpOn datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sLName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsors' AND COLUMN_NAME = 'sUserAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sUserAvitarImgURL to Table WebSiteSponsors';
              ALTER TABLE WebSiteSponsors ADD sUserAvitarImgURL nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes')
    BEGIN
        PRINT N'Creating Table WebSiteSponsorShipTypes';
        CREATE TABLE WebSiteSponsorShipTypes
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             dCost float,
             bIsReoccuringBilling bit,
             dBillingReOccuresEvery_Days float,
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bHidden bit,
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'dCost')
            BEGIN        
              PRINT N'Adding Column dCost to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD dCost float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'bIsReoccuringBilling')
            BEGIN        
              PRINT N'Adding Column bIsReoccuringBilling to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD bIsReoccuringBilling bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'dBillingReOccuresEvery_Days')
            BEGIN        
              PRINT N'Adding Column dBillingReOccuresEvery_Days to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD dBillingReOccuresEvery_Days float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteSponsorShipTypes' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteSponsorShipTypes';
              ALTER TABLE WebSiteSponsorShipTypes ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History')
    BEGIN
        PRINT N'Creating Table WebSitePageTemplatesPage_History';
        CREATE TABLE WebSitePageTemplatesPage_History
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sThumbNailImageURL nvarchar(MAX),
             sVersion nvarchar(MAX),
             sTemplateBody nvarchar(MAX),
             iLanguageID Int,
             sLanguageID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sThumbNailImageURL')
            BEGIN        
              PRINT N'Adding Column sThumbNailImageURL to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sThumbNailImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sTemplateBody')
            BEGIN        
              PRINT N'Adding Column sTemplateBody to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sTemplateBody nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'iLanguageID')
            BEGIN        
              PRINT N'Adding Column iLanguageID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD iLanguageID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePageTemplatesPage_History' AND COLUMN_NAME = 'sLanguageID')
            BEGIN        
              PRINT N'Adding Column sLanguageID to Table WebSitePageTemplatesPage_History';
              ALTER TABLE WebSitePageTemplatesPage_History ADD sLanguageID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures')
    BEGIN
        PRINT N'Creating Table WebSiteEventCalendarPictures';
        CREATE TABLE WebSiteEventCalendarPictures
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sShortDescription nvarchar(MAX),
             dtDateOfEvent datetime,
             sContent nvarchar(MAX),
             sVideoURL nvarchar(MAX),
             sImageURL nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sShortDescription')
            BEGIN        
              PRINT N'Adding Column sShortDescription to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sShortDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'dtDateOfEvent')
            BEGIN        
              PRINT N'Adding Column dtDateOfEvent to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD dtDateOfEvent datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sVideoURL')
            BEGIN        
              PRINT N'Adding Column sVideoURL to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sVideoURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarPictures' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEventCalendarPictures';
              ALTER TABLE WebSiteEventCalendarPictures ADD bHidden bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors')
    BEGIN
        PRINT N'Creating Table WebSiteEventCalendarSponsors';
        CREATE TABLE WebSiteEventCalendarSponsors
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iSponsorID Int,
             sSponsorID nvarchar(MAX),
             sName nvarchar(MAX),
             iSponsorShipTypeID Int,
             sSponsorShipTypeID nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             iAssociatedUserID Int,
             sAssociatedUserID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'iSponsorID')
            BEGIN        
              PRINT N'Adding Column iSponsorID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD iSponsorID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sSponsorID')
            BEGIN        
              PRINT N'Adding Column sSponsorID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sSponsorID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'iSponsorShipTypeID')
            BEGIN        
              PRINT N'Adding Column iSponsorShipTypeID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD iSponsorShipTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sSponsorShipTypeID')
            BEGIN        
              PRINT N'Adding Column sSponsorShipTypeID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sSponsorShipTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'iAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column iAssociatedUserID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD iAssociatedUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'sAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column sAssociatedUserID to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD sAssociatedUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarSponsors' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEventCalendarSponsors';
              ALTER TABLE WebSiteEventCalendarSponsors ADD bHidden bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers')
    BEGIN
        PRINT N'Creating Table WebSiteEventCalendarUsers';
        CREATE TABLE WebSiteEventCalendarUsers
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             iLeadID Int,
             sLeadID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'iLeadID')
            BEGIN        
              PRINT N'Adding Column iLeadID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD iLeadID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'sLeadID')
            BEGIN        
              PRINT N'Adding Column sLeadID to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD sLeadID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEventCalendarUsers' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEventCalendarUsers';
              ALTER TABLE WebSiteEventCalendarUsers ADD bHidden bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats')
    BEGIN
        PRINT N'Creating Table WebSiteMemberCats';
        CREATE TABLE WebSiteMemberCats
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sMemberInfo nvarchar(MAX),
             iCategoryID Int,
             sCategoryID nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sMemberInfo')
            BEGIN        
              PRINT N'Adding Column sMemberInfo to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sMemberInfo nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'iCategoryID')
            BEGIN        
              PRINT N'Adding Column iCategoryID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD iCategoryID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberCats' AND COLUMN_NAME = 'sCategoryID')
            BEGIN        
              PRINT N'Adding Column sCategoryID to Table WebSiteMemberCats';
              ALTER TABLE WebSiteMemberCats ADD sCategoryID nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers')
    BEGIN
        PRINT N'Creating Table WebSiteMembers';
        CREATE TABLE WebSiteMembers
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iMemberShipTypeID Int,
             sMemberShipTypeID nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             iAssociatedUserID Int,
             sAssociatedUserID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sCategories nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sSpecialty nvarchar(MAX),
             sTitle nvarchar(MAX),
             sFocus nvarchar(MAX),
             sContactPhone nvarchar(MAX),
             sContactEMail nvarchar(MAX),
             sContactAddress nvarchar(MAX),
             dtMembershipExpOn datetime,
             sFName nvarchar(MAX),
             sLName nvarchar(MAX),
             sUserAvitarImgURL nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'iMemberShipTypeID')
            BEGIN        
              PRINT N'Adding Column iMemberShipTypeID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD iMemberShipTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sMemberShipTypeID')
            BEGIN        
              PRINT N'Adding Column sMemberShipTypeID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sMemberShipTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'iAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column iAssociatedUserID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD iAssociatedUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column sAssociatedUserID to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sAssociatedUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sCategories')
            BEGIN        
              PRINT N'Adding Column sCategories to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sCategories nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sSpecialty')
            BEGIN        
              PRINT N'Adding Column sSpecialty to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sSpecialty nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sFocus')
            BEGIN        
              PRINT N'Adding Column sFocus to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sFocus nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sContactPhone')
            BEGIN        
              PRINT N'Adding Column sContactPhone to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sContactPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sContactEMail')
            BEGIN        
              PRINT N'Adding Column sContactEMail to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sContactEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sContactAddress')
            BEGIN        
              PRINT N'Adding Column sContactAddress to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sContactAddress nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'dtMembershipExpOn')
            BEGIN        
              PRINT N'Adding Column dtMembershipExpOn to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD dtMembershipExpOn datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sLName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMembers' AND COLUMN_NAME = 'sUserAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sUserAvitarImgURL to Table WebSiteMembers';
              ALTER TABLE WebSiteMembers ADD sUserAvitarImgURL nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories')
    BEGIN
        PRINT N'Creating Table WebSiteMemberShipsCategories';
        CREATE TABLE WebSiteMemberShipsCategories
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             dCost float,
             bIsReoccuringBilling bit,
             dBillingReOccuresEvery_Days float,
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bHidden bit,
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'dCost')
            BEGIN        
              PRINT N'Adding Column dCost to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD dCost float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'bIsReoccuringBilling')
            BEGIN        
              PRINT N'Adding Column bIsReoccuringBilling to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD bIsReoccuringBilling bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'dBillingReOccuresEvery_Days')
            BEGIN        
              PRINT N'Adding Column dBillingReOccuresEvery_Days to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD dBillingReOccuresEvery_Days float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteMemberShipsCategories' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteMemberShipsCategories';
              ALTER TABLE WebSiteMemberShipsCategories ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates')
    BEGIN
        PRINT N'Creating Table WebSiteAffiliates';
        CREATE TABLE WebSiteAffiliates
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             iAssociatedUserID Int,
             sAssociatedUserID nvarchar(MAX),
             sCustomURL nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sCategories nvarchar(MAX),
             sSpecialty nvarchar(MAX),
             sTitle nvarchar(MAX),
             sFocus nvarchar(MAX),
             sContactPhone nvarchar(MAX),
             sContactEMail nvarchar(MAX),
             sContactAddress nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'iAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column iAssociatedUserID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD iAssociatedUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column sAssociatedUserID to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sAssociatedUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sCustomURL')
            BEGIN        
              PRINT N'Adding Column sCustomURL to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sCustomURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sCategories')
            BEGIN        
              PRINT N'Adding Column sCategories to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sCategories nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sSpecialty')
            BEGIN        
              PRINT N'Adding Column sSpecialty to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sSpecialty nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sFocus')
            BEGIN        
              PRINT N'Adding Column sFocus to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sFocus nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sContactPhone')
            BEGIN        
              PRINT N'Adding Column sContactPhone to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sContactPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sContactEMail')
            BEGIN        
              PRINT N'Adding Column sContactEMail to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sContactEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliates' AND COLUMN_NAME = 'sContactAddress')
            BEGIN        
              PRINT N'Adding Column sContactAddress to Table WebSiteAffiliates';
              ALTER TABLE WebSiteAffiliates ADD sContactAddress nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes')
    BEGIN
        PRINT N'Creating Table WebSiteAffiliateTypes';
        CREATE TABLE WebSiteAffiliateTypes
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             dCost float,
             bIsReoccuringBilling bit,
             dBillingReOccuresEvery_Days float,
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'dCost')
            BEGIN        
              PRINT N'Adding Column dCost to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD dCost float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'bIsReoccuringBilling')
            BEGIN        
              PRINT N'Adding Column bIsReoccuringBilling to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD bIsReoccuringBilling bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'dBillingReOccuresEvery_Days')
            BEGIN        
              PRINT N'Adding Column dBillingReOccuresEvery_Days to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD dBillingReOccuresEvery_Days float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAffiliateTypes' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteAffiliateTypes';
              ALTER TABLE WebSiteAffiliateTypes ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners')
    BEGIN
        PRINT N'Creating Table WebSitePartners';
        CREATE TABLE WebSitePartners
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             iAssociatedUserID Int,
             sAssociatedUserID nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sCategories nvarchar(MAX),
             sSpecialty nvarchar(MAX),
             sTitle nvarchar(MAX),
             sFocus nvarchar(MAX),
             sContactPhone nvarchar(MAX),
             sContactEMail nvarchar(MAX),
             sContactAddress nvarchar(MAX),
             sFName nvarchar(MAX),
             sLName nvarchar(MAX),
             sUserAvitarImgURL nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'iAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column iAssociatedUserID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD iAssociatedUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sAssociatedUserID')
            BEGIN        
              PRINT N'Adding Column sAssociatedUserID to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sAssociatedUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sCategories')
            BEGIN        
              PRINT N'Adding Column sCategories to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sCategories nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sSpecialty')
            BEGIN        
              PRINT N'Adding Column sSpecialty to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sSpecialty nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sFocus')
            BEGIN        
              PRINT N'Adding Column sFocus to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sFocus nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sContactPhone')
            BEGIN        
              PRINT N'Adding Column sContactPhone to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sContactPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sContactEMail')
            BEGIN        
              PRINT N'Adding Column sContactEMail to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sContactEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sContactAddress')
            BEGIN        
              PRINT N'Adding Column sContactAddress to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sContactAddress nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sLName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartners' AND COLUMN_NAME = 'sUserAvitarImgURL')
            BEGIN        
              PRINT N'Adding Column sUserAvitarImgURL to Table WebSitePartners';
              ALTER TABLE WebSitePartners ADD sUserAvitarImgURL nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes')
    BEGIN
        PRINT N'Creating Table WebSitePartnerTypes';
        CREATE TABLE WebSitePartnerTypes
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             dCost float,
             bIsReoccuringBilling bit,
             dBillingReOccuresEvery_Days float,
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bHidden bit,
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'dCost')
            BEGIN        
              PRINT N'Adding Column dCost to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD dCost float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'bIsReoccuringBilling')
            BEGIN        
              PRINT N'Adding Column bIsReoccuringBilling to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD bIsReoccuringBilling bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'dBillingReOccuresEvery_Days')
            BEGIN        
              PRINT N'Adding Column dBillingReOccuresEvery_Days to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD dBillingReOccuresEvery_Days float;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSitePartnerTypes' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSitePartnerTypes';
              ALTER TABLE WebSitePartnerTypes ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType')
    BEGIN
        PRINT N'Creating Table WebSiteAnnouncementsType';
        CREATE TABLE WebSiteAnnouncementsType
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sListingDescription nvarchar(MAX),
             sLargerListingDescription nvarchar(MAX),
             sDetailsDescription nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bHidden bit,
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sListingDescription')
            BEGIN        
              PRINT N'Adding Column sListingDescription to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sLargerListingDescription')
            BEGIN        
              PRINT N'Adding Column sLargerListingDescription to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sLargerListingDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sDetailsDescription')
            BEGIN        
              PRINT N'Adding Column sDetailsDescription to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sDetailsDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteAnnouncementsType' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteAnnouncementsType';
              ALTER TABLE WebSiteAnnouncementsType ADD sImageURL3 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers')
    BEGIN
        PRINT N'Creating Table UsersChatMembers';
        CREATE TABLE UsersChatMembers
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sSessionID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserScreenName nvarchar(MAX),
             sUserAvitar nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sSessionID')
            BEGIN        
              PRINT N'Adding Column sSessionID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sSessionID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sUserScreenName')
            BEGIN        
              PRINT N'Adding Column sUserScreenName to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sUserScreenName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatMembers' AND COLUMN_NAME = 'sUserAvitar')
            BEGIN        
              PRINT N'Adding Column sUserAvitar to Table UsersChatMembers';
              ALTER TABLE UsersChatMembers ADD sUserAvitar nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions')
    BEGIN
        PRINT N'Creating Table UsersChatSessions';
        CREATE TABLE UsersChatSessions
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sTitle nvarchar(MAX),
             sMessage nvarchar(MAX),
             sHTTPx nvarchar(MAX),
             sIP nvarchar(MAX),
             sOther nvarchar(MAX),
             iFromID Int,
             sFromID nvarchar(MAX),
             sCcID nvarchar(MAX),
             sCc nvarchar(MAX),
             sBCcID nvarchar(MAX),
             sBCc nvarchar(MAX),
             sAttachemnts nvarchar(MAX),
             sRelatedPostsIDs nvarchar(MAX),
             sRelatedPosts nvarchar(MAX),
             sSessionID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             sUserScreenName nvarchar(MAX),
             sUserAvitar nvarchar(MAX),
             iToID Int,
             sToID nvarchar(MAX),
             sToIDs nvarchar(MAX),
             sToIDns nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sTitle')
            BEGIN        
              PRINT N'Adding Column sTitle to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sTitle nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sMessage')
            BEGIN        
              PRINT N'Adding Column sMessage to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sMessage nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sHTTPx')
            BEGIN        
              PRINT N'Adding Column sHTTPx to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sHTTPx nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sIP')
            BEGIN        
              PRINT N'Adding Column sIP to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sIP nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sOther')
            BEGIN        
              PRINT N'Adding Column sOther to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sOther nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'iFromID')
            BEGIN        
              PRINT N'Adding Column iFromID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD iFromID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sFromID')
            BEGIN        
              PRINT N'Adding Column sFromID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sFromID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sCcID')
            BEGIN        
              PRINT N'Adding Column sCcID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sCc')
            BEGIN        
              PRINT N'Adding Column sCc to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sBCcID')
            BEGIN        
              PRINT N'Adding Column sBCcID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sBCcID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sBCc')
            BEGIN        
              PRINT N'Adding Column sBCc to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sBCc nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sAttachemnts')
            BEGIN        
              PRINT N'Adding Column sAttachemnts to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sAttachemnts nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sRelatedPostsIDs')
            BEGIN        
              PRINT N'Adding Column sRelatedPostsIDs to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sRelatedPostsIDs nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sRelatedPosts')
            BEGIN        
              PRINT N'Adding Column sRelatedPosts to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sRelatedPosts nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sSessionID')
            BEGIN        
              PRINT N'Adding Column sSessionID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sSessionID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sUserScreenName')
            BEGIN        
              PRINT N'Adding Column sUserScreenName to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sUserScreenName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sUserAvitar')
            BEGIN        
              PRINT N'Adding Column sUserAvitar to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sUserAvitar nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'iToID')
            BEGIN        
              PRINT N'Adding Column iToID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD iToID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sToID')
            BEGIN        
              PRINT N'Adding Column sToID to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sToID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sToIDs')
            BEGIN        
              PRINT N'Adding Column sToIDs to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sToIDs nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UsersChatSessions' AND COLUMN_NAME = 'sToIDns')
            BEGIN        
              PRINT N'Adding Column sToIDns to Table UsersChatSessions';
              ALTER TABLE UsersChatSessions ADD sToIDns nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign')
    BEGIN
        PRINT N'Creating Table WebSiteEMailCampaign';
        CREATE TABLE WebSiteEMailCampaign
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             dtRunAt datetime,
             dtSecondRunAt datetime,
             sHTML1 nvarchar(MAX),
             sHTML2 nvarchar(MAX),
             sText1 nvarchar(MAX),
             sText2 nvarchar(MAX),
             sFromName nvarchar(MAX),
             sFromEmail nvarchar(MAX),
             sFromPhone nvarchar(MAX),
             sSubjectLine1 nvarchar(MAX),
             sSubjectLine2 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sAnsweredByResponseID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'dtRunAt')
            BEGIN        
              PRINT N'Adding Column dtRunAt to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD dtRunAt datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'dtSecondRunAt')
            BEGIN        
              PRINT N'Adding Column dtSecondRunAt to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD dtSecondRunAt datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sHTML1')
            BEGIN        
              PRINT N'Adding Column sHTML1 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sHTML1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sHTML2')
            BEGIN        
              PRINT N'Adding Column sHTML2 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sHTML2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sText1')
            BEGIN        
              PRINT N'Adding Column sText1 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sText1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sText2')
            BEGIN        
              PRINT N'Adding Column sText2 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sText2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sFromName')
            BEGIN        
              PRINT N'Adding Column sFromName to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sFromName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sFromEmail')
            BEGIN        
              PRINT N'Adding Column sFromEmail to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sFromEmail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sFromPhone')
            BEGIN        
              PRINT N'Adding Column sFromPhone to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sFromPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sSubjectLine1')
            BEGIN        
              PRINT N'Adding Column sSubjectLine1 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sSubjectLine1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaign' AND COLUMN_NAME = 'sSubjectLine2')
            BEGIN        
              PRINT N'Adding Column sSubjectLine2 to Table WebSiteEMailCampaign';
              ALTER TABLE WebSiteEMailCampaign ADD sSubjectLine2 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers')
    BEGIN
        PRINT N'Creating Table WebSiteEMailCampaignMembers';
        CREATE TABLE WebSiteEMailCampaignMembers
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             iLeadID Int,
             sLeadID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sEMail nvarchar(MAX),
             sFName nvarchar(MAX),
             sLName nvarchar(MAX),
             sAvitarURL nvarchar(MAX),
             sCellPhone nvarchar(MAX),
             dtsentouton datetime,
             dtLastsendouton datetime,
             bSent bit,
             bReceived bit,
             bOpenned bit,
             bClicked bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'iLeadID')
            BEGIN        
              PRINT N'Adding Column iLeadID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD iLeadID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sLeadID')
            BEGIN        
              PRINT N'Adding Column sLeadID to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sLeadID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sEMail')
            BEGIN        
              PRINT N'Adding Column sEMail to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sLName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sAvitarURL')
            BEGIN        
              PRINT N'Adding Column sAvitarURL to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sAvitarURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'sCellPhone')
            BEGIN        
              PRINT N'Adding Column sCellPhone to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD sCellPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'dtsentouton')
            BEGIN        
              PRINT N'Adding Column dtsentouton to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD dtsentouton datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'dtLastsendouton')
            BEGIN        
              PRINT N'Adding Column dtLastsendouton to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD dtLastsendouton datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bSent')
            BEGIN        
              PRINT N'Adding Column bSent to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bSent bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bReceived')
            BEGIN        
              PRINT N'Adding Column bReceived to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bReceived bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bOpenned')
            BEGIN        
              PRINT N'Adding Column bOpenned to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bOpenned bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMembers' AND COLUMN_NAME = 'bClicked')
            BEGIN        
              PRINT N'Adding Column bClicked to Table WebSiteEMailCampaignMembers';
              ALTER TABLE WebSiteEMailCampaignMembers ADD bClicked bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage')
    BEGIN
        PRINT N'Creating Table WebSiteEMailCampaignMessage';
        CREATE TABLE WebSiteEMailCampaignMessage
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
             sContent nvarchar(MAX),
             sVersion nvarchar(MAX),
             bRemoved bit,
             bAnswered bit,
             iAnsweredByID Int,
             sAnsweredByID nvarchar(MAX),
             iAnsweredByResponseID Int,
             sAnsweredByResponseID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             iTypeID Int,
             sTypeID nvarchar(MAX),
             sURL1 nvarchar(MAX),
             sURL2 nvarchar(MAX),
             sURL3 nvarchar(MAX),
             sImageURL nvarchar(MAX),
             sImageURL2 nvarchar(MAX),
             sImageURL3 nvarchar(MAX),
             sHTML1 nvarchar(MAX),
             sHTML2 nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sDescription nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sContent')
            BEGIN        
              PRINT N'Adding Column sContent to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sContent nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sVersion')
            BEGIN        
              PRINT N'Adding Column sVersion to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sVersion nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'bRemoved')
            BEGIN        
              PRINT N'Adding Column bRemoved to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD bRemoved bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'bAnswered')
            BEGIN        
              PRINT N'Adding Column bAnswered to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD bAnswered bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'iAnsweredByID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD iAnsweredByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sAnsweredByID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sAnsweredByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'iAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column iAnsweredByResponseID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD iAnsweredByResponseID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sAnsweredByResponseID')
            BEGIN        
              PRINT N'Adding Column sAnsweredByResponseID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sAnsweredByResponseID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'iTypeID')
            BEGIN        
              PRINT N'Adding Column iTypeID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD iTypeID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sTypeID')
            BEGIN        
              PRINT N'Adding Column sTypeID to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sTypeID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sURL1')
            BEGIN        
              PRINT N'Adding Column sURL1 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sURL1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sURL2')
            BEGIN        
              PRINT N'Adding Column sURL2 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sURL3')
            BEGIN        
              PRINT N'Adding Column sURL3 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sImageURL')
            BEGIN        
              PRINT N'Adding Column sImageURL to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sImageURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sImageURL2')
            BEGIN        
              PRINT N'Adding Column sImageURL2 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sImageURL2 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sImageURL3')
            BEGIN        
              PRINT N'Adding Column sImageURL3 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sImageURL3 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sHTML1')
            BEGIN        
              PRINT N'Adding Column sHTML1 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sHTML1 nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignMessage' AND COLUMN_NAME = 'sHTML2')
            BEGIN        
              PRINT N'Adding Column sHTML2 to Table WebSiteEMailCampaignMessage';
              ALTER TABLE WebSiteEMailCampaignMessage ADD sHTML2 nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists')
    BEGIN
        PRINT N'Creating Table WebMarketingLists';
        CREATE TABLE WebMarketingLists
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             iParentID Int,
             sParentID nvarchar(MAX),
             sControl nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             sName nvarchar(MAX),
             sDescription nvarchar(MAX),
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'sName')
            BEGIN        
              PRINT N'Adding Column sName to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD sName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingLists' AND COLUMN_NAME = 'sDescription')
            BEGIN        
              PRINT N'Adding Column sDescription to Table WebMarketingLists';
              ALTER TABLE WebMarketingLists ADD sDescription nvarchar(MAX);
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers')
    BEGIN
        PRINT N'Creating Table WebMarketingListsMembers';
        CREATE TABLE WebMarketingListsMembers
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iUserID Int,
             sUserID nvarchar(MAX),
             iLeadID Int,
             sLeadID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sEMail nvarchar(MAX),
             sFName nvarchar(MAX),
             sLName nvarchar(MAX),
             sAvitarURL nvarchar(MAX),
             sCellPhone nvarchar(MAX),
             dtsentouton datetime,
             dtLastsendouton datetime,
             bSent bit,
             bReceived bit,
             bOpenned bit,
             bClicked bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'iUserID')
            BEGIN        
              PRINT N'Adding Column iUserID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD iUserID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sUserID')
            BEGIN        
              PRINT N'Adding Column sUserID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sUserID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'iLeadID')
            BEGIN        
              PRINT N'Adding Column iLeadID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD iLeadID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sLeadID')
            BEGIN        
              PRINT N'Adding Column sLeadID to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sLeadID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sEMail')
            BEGIN        
              PRINT N'Adding Column sEMail to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sLName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sAvitarURL')
            BEGIN        
              PRINT N'Adding Column sAvitarURL to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sAvitarURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'sCellPhone')
            BEGIN        
              PRINT N'Adding Column sCellPhone to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD sCellPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'dtsentouton')
            BEGIN        
              PRINT N'Adding Column dtsentouton to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD dtsentouton datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'dtLastsendouton')
            BEGIN        
              PRINT N'Adding Column dtLastsendouton to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD dtLastsendouton datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bSent')
            BEGIN        
              PRINT N'Adding Column bSent to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bSent bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bReceived')
            BEGIN        
              PRINT N'Adding Column bReceived to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bReceived bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bOpenned')
            BEGIN        
              PRINT N'Adding Column bOpenned to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bOpenned bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebMarketingListsMembers' AND COLUMN_NAME = 'bClicked')
            BEGIN        
              PRINT N'Adding Column bClicked to Table WebMarketingListsMembers';
              ALTER TABLE WebMarketingListsMembers ADD bClicked bit;
            END     
    END    
    
GO
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists')
    BEGIN
        PRINT N'Creating Table WebSiteEMailCampaignLists';
        CREATE TABLE WebSiteEMailCampaignLists
        (
             [ID] Int PRIMARY KEY IDENTITY(1,1),
             sControl nvarchar(MAX),
             sSync nvarchar(MAX),
             iParentID Int,
             sParentID nvarchar(MAX),
             dtDateCreated datetime,
             dtLastUpdated datetime,
             iCreatedByID Int,
             sCreatedByID nvarchar(MAX),
             iUpdatedByID Int,
             sUpdatedByID nvarchar(MAX),
             iListID Int,
             sListID nvarchar(MAX),
             iLeadID Int,
             sLeadID nvarchar(MAX),
             bDisabled bit,
             bSuspended bit,
             bNegative bit,
             bHidden bit,
             sEMail nvarchar(MAX),
             sFName nvarchar(MAX),
             sLName nvarchar(MAX),
             sAvitarURL nvarchar(MAX),
             sCellPhone nvarchar(MAX),
             dtsentouton datetime,
             dtLastsendouton datetime,
             bSent bit,
             bReceived bit,
             bOpenned bit,
             bClicked bit,
        );
    END    
ELSE    
    BEGIN    

        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sControl')
            BEGIN        
              PRINT N'Adding Column sControl to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sControl nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sSync')
            BEGIN        
              PRINT N'Adding Column sSync to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sSync nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'iParentID')
            BEGIN        
              PRINT N'Adding Column iParentID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD iParentID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sParentID')
            BEGIN        
              PRINT N'Adding Column sParentID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sParentID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'dtDateCreated')
            BEGIN        
              PRINT N'Adding Column dtDateCreated to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD dtDateCreated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'dtLastUpdated')
            BEGIN        
              PRINT N'Adding Column dtLastUpdated to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD dtLastUpdated datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'iCreatedByID')
            BEGIN        
              PRINT N'Adding Column iCreatedByID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD iCreatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sCreatedByID')
            BEGIN        
              PRINT N'Adding Column sCreatedByID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sCreatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'iUpdatedByID')
            BEGIN        
              PRINT N'Adding Column iUpdatedByID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD iUpdatedByID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sUpdatedByID')
            BEGIN        
              PRINT N'Adding Column sUpdatedByID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sUpdatedByID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'iListID')
            BEGIN        
              PRINT N'Adding Column iListID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD iListID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sListID')
            BEGIN        
              PRINT N'Adding Column sListID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sListID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'iLeadID')
            BEGIN        
              PRINT N'Adding Column iLeadID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD iLeadID Int;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sLeadID')
            BEGIN        
              PRINT N'Adding Column sLeadID to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sLeadID nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bDisabled')
            BEGIN        
              PRINT N'Adding Column bDisabled to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bDisabled bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bSuspended')
            BEGIN        
              PRINT N'Adding Column bSuspended to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bSuspended bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bNegative')
            BEGIN        
              PRINT N'Adding Column bNegative to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bNegative bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bHidden')
            BEGIN        
              PRINT N'Adding Column bHidden to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bHidden bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sEMail')
            BEGIN        
              PRINT N'Adding Column sEMail to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sEMail nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sFName')
            BEGIN        
              PRINT N'Adding Column sFName to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sFName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sLName')
            BEGIN        
              PRINT N'Adding Column sLName to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sLName nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sAvitarURL')
            BEGIN        
              PRINT N'Adding Column sAvitarURL to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sAvitarURL nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'sCellPhone')
            BEGIN        
              PRINT N'Adding Column sCellPhone to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD sCellPhone nvarchar(MAX);
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'dtsentouton')
            BEGIN        
              PRINT N'Adding Column dtsentouton to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD dtsentouton datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'dtLastsendouton')
            BEGIN        
              PRINT N'Adding Column dtLastsendouton to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD dtLastsendouton datetime;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bSent')
            BEGIN        
              PRINT N'Adding Column bSent to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bSent bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bReceived')
            BEGIN        
              PRINT N'Adding Column bReceived to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bReceived bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bOpenned')
            BEGIN        
              PRINT N'Adding Column bOpenned to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bOpenned bit;
            END     
        IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'WebSiteEMailCampaignLists' AND COLUMN_NAME = 'bClicked')
            BEGIN        
              PRINT N'Adding Column bClicked to Table WebSiteEMailCampaignLists';
              ALTER TABLE WebSiteEMailCampaignLists ADD bClicked bit;
            END     
    END    
    
GO

