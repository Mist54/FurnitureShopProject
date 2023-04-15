CREATE TABLE [dbo].[costomer] (
    [cid]     INT           IDENTITY (1, 1) NOT NULL,
    [cno]     NVARCHAR (50) NULL,
    [cname]   NVARCHAR (50) NULL,
    [phone]   NVARCHAR (50) NULL,
    [address] NVARCHAR(MAX) NULL,
    [pincode] NVARCHAR (50) NULL
);

