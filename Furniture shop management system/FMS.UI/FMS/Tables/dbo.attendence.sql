CREATE TABLE [dbo].[attendence] (
	[cid]          INT           IDENTITY (1, 1) NOT NULL,
    [employeeid]   INT           NOT NULL,
    [employeename] NVARCHAR (50) NULL,
    [month]        NVARCHAR (50) NULL,
    [nwd]          NVARCHAR (50) NULL,
    [nlt]          NVARCHAR (50) NULL,
    [salary]       NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([cid])
);

