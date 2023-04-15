CREATE TABLE [dbo].[payslip] (
    [cid]          INT           IDENTITY (1, 1) NOT NULL,
    [employeeid]   INT           NOT NULL,
    [employeename] NVARCHAR (50) NULL,
    [totalsalary]  NVARCHAR (50) NULL,
    [month]        NVARCHAR (50) NULL,
    [nlt]          NVARCHAR (50) NULL,
    [da]           NCHAR (10)    NULL,
    [hra]          NCHAR (10)    NULL,
    [pf]           NCHAR (10)    NULL,
    [realsalary]   NVARCHAR (50) NULL
);

