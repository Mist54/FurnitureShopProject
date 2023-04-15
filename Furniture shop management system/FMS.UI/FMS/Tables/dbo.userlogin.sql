CREATE TABLE [dbo].[userlogin] (
    [uid]         INT           IDENTITY (1, 1) NOT NULL,
    [username]    NVARCHAR (50) NULL,
    [email]       NVARCHAR (50) NULL,
    [password]    NVARCHAR (50) NULL,
    [phonenumber] NVARCHAR (50) NULL
);

