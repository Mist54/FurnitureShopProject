CREATE TABLE [dbo].[employee] (
    [employeeid]   INT            NOT NULL,
    [name]         NVARCHAR (50)  NULL,
    [dob]          NVARCHAR (50)  NULL,
    [doj]          NVARCHAR (50)  NULL,
    [phone]        NVARCHAR (50)  NULL,
    [email]        NVARCHAR (50)  NULL,
    [address]      NVARCHAR (MAX) NULL,
    [designation]  NVARCHAR (50)  NULL,
    [addharnumber] NVARCHAR (50)  NULL,
    [salary]       NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([employeeid] ASC)
);

