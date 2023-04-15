CREATE TABLE [dbo].[orders] (
    [costomerid]   INT            NOT NULL,
    [costomername] NVARCHAR (50)  NULL,
    [phone]        NVARCHAR (50)  NULL,
    [address]      NVARCHAR (MAX) NULL,
    [pincode]      NVARCHAR (50)  NULL,
    [itemid]       NVARCHAR (50)  NULL,
    [itemname]     NVARCHAR (50)  NULL,
    [price]        NVARCHAR (50)  NULL,
    [fees]         NVARCHAR (50)  NULL,
    [status]       NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([costomerid] ASC)
);

