CREATE TABLE [dbo].[purchase] (
    [cid]     INT            IDENTITY (1, 1) NOT NULL,
    [cno]     NVARCHAR (50)  NOT NULL,
    [cname]   NVARCHAR (50)  NULL,
    [phone]   NVARCHAR (50)  NULL,
    [adress]  NVARCHAR (MAX) NULL,
    [pincode] NVARCHAR (50)  NULL,
    [item]    NVARCHAR (50)  NULL,
    [qty]     INT            NULL,
    [price]   NVARCHAR (50)  NULL,
    [total]   NVARCHAR (50)  NULL,
    [dis]     NVARCHAR (50)  NULL,
    [grand]   NVARCHAR (50)  NULL
);

