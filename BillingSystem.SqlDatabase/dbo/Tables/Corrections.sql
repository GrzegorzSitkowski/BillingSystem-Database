CREATE TABLE [dbo].[Corrections]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Amount] FLOAT NOT NULL,
	[InvoiceId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[Reason] VARCHAR(50) NOT NULL,
	[Description] VARCHAR(100),
	[CreateDate] DATETIMEOFFSET NOT NULL,
	[CreateBy] INT NOT NULL,
	CONSTRAINT [PK_Corrections] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Corrections_Invoices] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoices] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_Corrections_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]) ON DELETE CASCADE
)
