CREATE TABLE [dbo].[bill] (
    [costomerid]   NVARCHAR (50) NOT NULL,
    [costomername] NVARCHAR (50) NULL,
    [phoneno]      NVARCHAR (50) NULL,
    [itemid]       INT           NULL,
    [itemname]     NVARCHAR (50) NULL,
    [qty]          INT           NULL,
    [price]        NVARCHAR (50) NULL,
    [total]        NVARCHAR (50) NULL,
    [dis]          NVARCHAR (50) NULL,
    [grand]        BIGINT        NULL
);

