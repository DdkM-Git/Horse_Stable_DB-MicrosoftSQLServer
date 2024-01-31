USE MASTER
GO

CREATE LOGIN Stajenny WITH PASSWORD = 'Stajenny1', CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF;
CREATE LOGIN Trener WITH PASSWORD = 'Trener1', CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF;
CREATE LOGIN Magazyn WITH PASSWORD = 'Magazyn1', CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF;
CREATE LOGIN Administracja WITH PASSWORD = 'Administracja1', CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF;

USE Stajnia
GO

CREATE USER Stajenny;
CREATE USER Trener;
CREATE USER Magazyn;
CREATE USER Administracja;

CREATE ROLE RolaStajenny;
CREATE ROLE RolaTrener;
CREATE ROLE RolaMagazyn;

GRANT INSERT, UPDATE, SELECT ON Dieta TO Stajenny;
GRANT INSERT, UPDATE, SELECT ON Dieta_DietaPosilek TO Stajenny;
GRANT INSERT, UPDATE, SELECT ON DietaPosilek TO Stajenny;
GRANT INSERT, UPDATE, SELECT ON DietaPosilek_Towar TO Stajenny;
GRANT INSERT, UPDATE, SELECT ON Towar TO Stajenny;

GRANT INSERT, SELECT ON Kon_KonBoks TO Stajenny;
GRANT INSERT, SELECT ON Kon_KonChoroba TO Stajenny;
GRANT INSERT, SELECT ON KonChoroba TO Stajenny;
GRANT INSERT, SELECT ON Kon_KonStatus TO Stajenny;

GRANT INSERT, UPDATE, SELECT ON Kon_KonStatus TO Trener;
GRANT INSERT, UPDATE, SELECT ON Ujezdzalnia TO Trener;
GRANT INSERT, UPDATE, SELECT ON Zawody TO Trener;
GRANT INSERT, UPDATE, SELECT ON Zawody_Kon_Pracownik TO Trener;
GRANT INSERT, UPDATE, SELECT ON ZawodyNagroda TO Trener;
GRANT INSERT, UPDATE, SELECT ON ZawodyRodzaj TO Trener;
GRANT INSERT, UPDATE, SELECT ON Trening TO Trener;
GRANT INSERT, UPDATE, SELECT ON Trening_Kon TO Trener;
GRANT INSERT, UPDATE, SELECT ON Trening_TreningUczestnik TO Trener;
GRANT INSERT, UPDATE, SELECT ON TreningRodzaj TO Trener;
GRANT INSERT, UPDATE, SELECT ON TreningUczestnik TO Trener;

GRANT INSERT, UPDATE, SELECT ON Towar TO Magazyn;
GRANT INSERT, UPDATE, SELECT ON Towar_TowarZakup TO Magazyn;
GRANT INSERT, UPDATE, SELECT ON TowarRodzaj TO Magazyn;
GRANT INSERT, UPDATE, SELECT ON TowarZakup TO Magazyn;
GRANT INSERT, UPDATE, SELECT ON Firma TO Magazyn;

EXECUTE sp_addrolemember 'RolaStajenny','Stajenny';
EXECUTE sp_addrolemember 'RolaTrener','Trener';
EXECUTE sp_addrolemember 'RolaMagazyn','Magazyn';
EXECUTE sp_addrolemember 'DB_OWNER','Administracja';
