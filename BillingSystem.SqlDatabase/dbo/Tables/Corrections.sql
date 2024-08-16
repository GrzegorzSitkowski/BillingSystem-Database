CREATE TABLE [dbo].[Corrections]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Amount] FLOAT NOT NULL,
	[Reason] VARCHAR(50) NOT NULL,
	[Describe] VARCHAR(100),
	[InvoiceId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[CreateDate] DATETIMEOFFSET NOT NULL,
	[CreatedBy] INT NOT NULL,
	CONSTRAINT [PK_Corrections] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Corrections_Invoices_] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoices] ([Id]),
	CONSTRAINT [FK_Corrections_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id])
)

