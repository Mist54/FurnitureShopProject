CREATE TABLE [dbo].[subpurchase] (
    [productid]    INT            NOT NULL,
    [productname]  NVARCHAR (50)  NULL,
    [company]      NVARCHAR (50)  NULL,
    [suppliername] NVARCHAR (50)  NULL,
    [phone]        NVARCHAR (50)  NULL,
    [address]      NVARCHAR (MAX) NULL,
    [pincode]      NVARCHAR (50)  NULL,
    [catogory]     NVARCHAR (50)  NULL,
    [qty]          NVARCHAR (50)  NULL,
    [material]     NVARCHAR (50)  NULL,
    [colour]       NVARCHAR (50)  NULL,
    [price]        NVARCHAR (50)  NULL,
    [date]         NVARCHAR (50)  NULL
);

