﻿CREATE TABLE [dbo].[Accounts]
(
	[Id] INT IDENTITY (1,1) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[CreateDate] DATETIMEOFFSET NOT NULL,
	CONSTRAINT [PK_Accounnts] PRIMARY KEY CLUSTERED ([Id] ASC)
)
