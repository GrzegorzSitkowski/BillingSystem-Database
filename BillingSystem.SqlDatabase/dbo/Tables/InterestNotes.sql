CREATE TABLE [dbo].[InterestNotes]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[InvoiceId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[Amount] FLOAT NOT NULL,
	[DocumentNumber] Varchar(50),
	[InvoiceNumber] Varchar(50),
	[DueDate] DATETIMEOFFSET NOT NULL,
	[CreateDate] DATETIMEOFFSET NOT NULL,
	[CreatedBy] INT NOT NULL,
	CONSTRAINT [PK_InterestNotes] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_InterestNotes_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]) ON DELETE CASCADE,
)
