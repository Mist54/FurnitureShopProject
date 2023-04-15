CREATE TABLE [dbo].[addproduct] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [productid]      NVARCHAR (50)  NULL,
    [productname]    NVARCHAR (50)  NULL,
    [company]        NVARCHAR (50)  NULL,
    [size]           NVARCHAR (50)  NULL,
    [material]       NVARCHAR (50)  NULL,
    [catogory]       NVARCHAR (50)  NULL,
    [qty]            NVARCHAR (50)  NULL,
    [color]          NVARCHAR (50)  NULL,
    [actualprice]    NVARCHAR (50)  NULL,
    [sellingprice]   NVARCHAR (50)  NULL,
    [discription]    NVARCHAR (MAX) NULL,
    [delivarycharge] NVARCHAR (50)  NULL,
    [paymentmode]    NVARCHAR (50)  NULL,
    [returnmode]     NVARCHAR (50)  NULL,
    [image]          NVARCHAR (50)  NULL
);

