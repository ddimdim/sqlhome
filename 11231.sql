USE [BankDeposits]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 15.10.2024 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[IDAccount] [int] NOT NULL,
	[AccountNumber] [numeric](20, 0) NULL,
	[IDClient] [int] NULL,
	[IDDeposit] [int] NULL,
	[OpeningDate] [date] NULL,
	[ClosingDate] [date] NULL,
	[SumOfMoney] [money] NULL,
	[Information] [nvarchar](max) NULL,
 CONSTRAINT [PK_BankAccounts] PRIMARY KEY CLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 15.10.2024 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[IDClient] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [numeric](18, 0) NULL,
	[Address] [nvarchar](max) NULL,
	[Passport] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[IDClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposits]    Script Date: 15.10.2024 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposits](
	[IDDeposit] [int] NOT NULL,
	[DepositName] [nvarchar](max) NULL,
	[MonthsOfStorage] [int] NULL,
	[InterestRate] [float] NULL,
	[Currency] [nvarchar](max) NULL,
 CONSTRAINT [PK_Deposits] PRIMARY KEY CLUSTERED 
(
	[IDDeposit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (101, CAST(98948560 AS Numeric(20, 0)), 1, 3, CAST(N'2023-03-11' AS Date), CAST(N'2024-04-11' AS Date), 100000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (102, CAST(40871335 AS Numeric(20, 0)), 6, 2, CAST(N'2024-01-04' AS Date), CAST(N'2025-07-04' AS Date), 150000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (103, CAST(15659988 AS Numeric(20, 0)), 3, 5, CAST(N'2024-02-07' AS Date), CAST(N'2024-12-07' AS Date), 60000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (104, CAST(38729019 AS Numeric(20, 0)), 4, 1, CAST(N'2024-07-22' AS Date), CAST(N'2025-08-22' AS Date), 400000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (105, CAST(93866744 AS Numeric(20, 0)), 5, 4, CAST(N'2024-05-19' AS Date), CAST(N'2025-05-19' AS Date), 90000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (106, CAST(94812229 AS Numeric(20, 0)), 8, 7, CAST(N'2022-03-27' AS Date), CAST(N'2025-03-27' AS Date), 300000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (107, CAST(38885888 AS Numeric(20, 0)), 7, 6, CAST(N'2024-02-10' AS Date), CAST(N'2024-08-10' AS Date), 50000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (108, CAST(87789732 AS Numeric(20, 0)), 2, 2, CAST(N'2023-11-24' AS Date), CAST(N'2025-05-24' AS Date), 250000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (109, CAST(97156035 AS Numeric(20, 0)), 4, 7, CAST(N'2023-11-28' AS Date), CAST(N'2024-05-28' AS Date), 250000.0000, NULL)
INSERT [dbo].[BankAccounts] ([IDAccount], [AccountNumber], [IDClient], [IDDeposit], [OpeningDate], [ClosingDate], [SumOfMoney], [Information]) VALUES (110, CAST(84610263 AS Numeric(20, 0)), 6, 4, CAST(N'2023-02-09' AS Date), CAST(N'2024-02-09' AS Date), 80000.0000, NULL)
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (1, N'Шурков Дмитрий Александрович', CAST(89897254257 AS Numeric(18, 0)), N'г. Березовский, ул. Спортивная 3', CAST(6518220049 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (2, N'Ковязин Андрей Михайлович', CAST(89804472923 AS Numeric(18, 0)), N'г. Екатеринбург, проспект Космонавтов 50', CAST(4310981224 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (3, N'Иванов Игорь Николаевич', CAST(89217358536 AS Numeric(18, 0)), N'г. Березовский, ул. Шиловская 5', CAST(4672583562 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (4, N'Рыбакова Евгения Викторовная', CAST(89312972734 AS Numeric(18, 0)), N'г. Екатеринбург, ул. 8 Марта 17', CAST(4614155199 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (5, N'Гордеев Никита Эдуардович', CAST(89715889416 AS Numeric(18, 0)), N'г. Екатеринбург, ул. Сурикова 7', CAST(4971288207 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (6, N'Степанова Татьяна Васильевна', CAST(89606601735 AS Numeric(18, 0)), N'г. Екатеринбург, ул. Щорса 9', CAST(4584860507 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (7, N'Машковцева Марина Сергеевна', CAST(89976985889 AS Numeric(18, 0)), N'г. Екатеринбург, ул. Луначарского 13', CAST(4686993488 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (8, N'Брылин Максим Иванович', CAST(89304565855 AS Numeric(18, 0)), N'г. Екатеринбург, ул. Карла Маркса 5', CAST(4014222046 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (9, N'Бочкарёва Оксана Степановна', CAST(89931780432 AS Numeric(18, 0)), N'г. Екатеринбург, ул. Чайковского 7', CAST(4392681671 AS Numeric(18, 0)))
INSERT [dbo].[Clients] ([IDClient], [FullName], [Phone], [Address], [Passport]) VALUES (10, N'Рыжков Тимофей Денисович', CAST(89121291445 AS Numeric(18, 0)), N'г. Екатеринбург, ул. Декабристов 12', CAST(4029490992 AS Numeric(18, 0)))
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (1, N'Накопительный', 13, 8.5, N'RUB')
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (2, N'Капитал', 18, 0.95, N'USD')
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (3, N'Победа', 13, 5, N'RUB')
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (4, N'К отпуску', 12, 4.5, N'RUB')
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (5, N'Студенческий', 10, 5.3, N'RUB')
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (6, N'Срочный', 6, 4.1, N'RUB')
INSERT [dbo].[Deposits] ([IDDeposit], [DepositName], [MonthsOfStorage], [InterestRate], [Currency]) VALUES (7, N'Долгосрочный', 36, 6.1, N'EUR')
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [FK_BankAccounts_Clients] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Clients] ([IDClient])
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [FK_BankAccounts_Clients]
GO
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [FK_BankAccounts_Deposits] FOREIGN KEY([IDDeposit])
REFERENCES [dbo].[Deposits] ([IDDeposit])
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [FK_BankAccounts_Deposits]
GO
