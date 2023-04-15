CREATE TABLE [dbo].[supplier] (
    [supplierid]   INT            NOT NULL,
    [suppliername] NVARCHAR (50)  NULL,
    [number]       NVARCHAR (50)  NULL,
    [email]        NVARCHAR (50)  NULL,
    [address]      NVARCHAR (MAX) NULL,
    [pincode]      NVARCHAR (50)  NULL,
    [company]      NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([supplierid] ASC)
);

