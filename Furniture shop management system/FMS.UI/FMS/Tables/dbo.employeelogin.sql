CREATE TABLE [dbo].[employeelogin] (
    [empno]    INT           IDENTITY (1, 1) NOT NULL,
    [empid]    NVARCHAR (50) NULL,
    [empname]  NVARCHAR (50) NULL,
    [password] NVARCHAR (50) NULL,
    [time]     NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([empno] ASC)
);

