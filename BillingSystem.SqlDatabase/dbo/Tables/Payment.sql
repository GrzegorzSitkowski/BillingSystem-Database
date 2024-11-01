CREATE TABLE [dbo].[Payments]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CustomerId] INT NOT NULL,
	[DocumentId] INT NOT NULL,
	[DocumentNumber] Varchar(50),
	[Amount] FLOAT NOT NULL,
	[CreateDate] DATETIMEOFFSET NOT NULL,
	CONSTRAINT [Pk_Payments] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Payments_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_Payments_Invoices] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Invoices] ([Id]),
)
