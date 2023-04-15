CREATE TABLE [dbo].[buyproduct] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [productid]     NVARCHAR (50)  NULL,
    [phonenumber]   NVARCHAR (50)  NULL,
    [fullname]      NVARCHAR (50)  NULL,
    [email]         NVARCHAR (50)  NULL,
    [pincode]       NVARCHAR (50)  NULL,
    [address]       NVARCHAR (MAX) NULL,
    [qty]           NVARCHAR (50)  NULL,
    [totalamount]   NVARCHAR (50)  NULL,
    [paymentmethod] NVARCHAR (50)  NULL
);

