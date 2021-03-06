GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustFirstName] [varchar](200) NULL,
	[CustLastName] [varchar](200) NULL,
	[CustPhone] [varchar](200) NULL,
	[CustEmail] [varchar](200) NULL,
	[CustStreet] [varchar](200) NULL,
	[CustCity] [varchar](200) NULL,
	[CustState] [varchar](200) NULL,
	[CustZip] [varchar](200) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmpFirstName] [varchar](200) NULL,
	[EmpLastName] [varchar](200) NULL,
	[EmpSupervisor] [varchar](200) NULL,
	[EmpEmail] [varchar](200) NULL,
	[EmpJobTitle] [varchar](200) NULL,
	[EmpStreet] [varchar](200) NULL,
	[EmpCity] [varchar](200) NULL,
	[EmpState] [varchar](200) NULL,
	[EmpZip] [varchar](200) NULL,
	[EmpDOB] [date] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Ordertatus] [varchar](20) NOT NULL,
	[ReferenceNum] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_OrdID] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Payment]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Payment](
	[OrderPaymentID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ReferenceNum] [int] NOT NULL,
 CONSTRAINT [PK_OrdPayID] PRIMARY KEY CLUSTERED 
(
	[OrderPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Product]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Product](
	[OrderProductID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrdProQty] [int] NOT NULL,
	[OrdProPrice] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_OrdPrdID] PRIMARY KEY CLUSTERED 
(
	[OrderProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ReferenceNum] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[PaymentDate] [date] NOT NULL,
	[PaidTotalPrice] [decimal](5, 2) NOT NULL,
	[PaymentTax] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_RefNum] PRIMARY KEY CLUSTERED 
(
	[ReferenceNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/2/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [varchar](200) NOT NULL,
	[ProVendor] [varchar](200) NOT NULL,
	[ProDescription] [varchar](200) NOT NULL,
	[ProQty] [int] NOT NULL,
	[ProCost] [decimal](5, 2) NOT NULL,
	[ProRevenue] [decimal](5, 2) NOT NULL,
	[ProType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ProdID] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustFirstName], [CustLastName], [CustPhone], [CustEmail], [CustStreet], [CustCity], [CustState], [CustZip]) VALUES (1, N'Anthony', N'Horowitz', N'(907) 262-6612', N'horowitz@gmail.com', N'24486 Yukon Rd', N'Kasilof', N'AK', N'99610')
INSERT [dbo].[Customer] ([CustomerID], [CustFirstName], [CustLastName], [CustPhone], [CustEmail], [CustStreet], [CustCity], [CustState], [CustZip]) VALUES (2, N'Brayden ', N'Chase', N'(720) 322-5543', N'chase@outlook.com', N'3663 Davis Lane', N'Denver', N'CO', N'80022')
INSERT [dbo].[Customer] ([CustomerID], [CustFirstName], [CustLastName], [CustPhone], [CustEmail], [CustStreet], [CustCity], [CustState], [CustZip]) VALUES (3, N'Julian', N'Wick', N'(714) 201-7277', N'Wick7@gmail.com', N'4852 Driftwood Rd', N'Oakland', N'CA', N'94612')
INSERT [dbo].[Customer] ([CustomerID], [CustFirstName], [CustLastName], [CustPhone], [CustEmail], [CustStreet], [CustCity], [CustState], [CustZip]) VALUES (4, N'Andy', N'Wier', N'(463) 434-3124', N'Wier@gmail.com', N'21 North Manor Station St', N'La Porte', N'IN', N'46350')
INSERT [dbo].[Customer] ([CustomerID], [CustFirstName], [CustLastName], [CustPhone], [CustEmail], [CustStreet], [CustCity], [CustState], [CustZip]) VALUES (5, N'Charlie ', N'Higson', N'(952) 343-5499', N'Higson1@outlook.com', N'17741 Fairlawn Ave', N'Prior Lake', N'MN', N'55372')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [EmpFirstName], [EmpLastName], [EmpSupervisor], [EmpEmail], [EmpJobTitle], [EmpStreet], [EmpCity], [EmpState], [EmpZip], [EmpDOB]) VALUES (1, N'Wendy', N'White', N'James Weaver', N'wendyW@outlook.com', N'PC Technician', N'1271 Jerome Ave', N'Harlingen', N'TX', N'78550', CAST(N'1985-06-14' AS Date))
INSERT [dbo].[Employee] ([EmployeeID], [EmpFirstName], [EmpLastName], [EmpSupervisor], [EmpEmail], [EmpJobTitle], [EmpStreet], [EmpCity], [EmpState], [EmpZip], [EmpDOB]) VALUES (2, N'James', N'Smith', N'David Pohl', N'smithJ@gmail.com', N'Support Services Technician', N'4143 Meadowview Drive', N'Waynesboro', N'VA', N'22980', CAST(N'1979-02-06' AS Date))
INSERT [dbo].[Employee] ([EmployeeID], [EmpFirstName], [EmpLastName], [EmpSupervisor], [EmpEmail], [EmpJobTitle], [EmpStreet], [EmpCity], [EmpState], [EmpZip], [EmpDOB]) VALUES (3, N'Roberta', N'Flores', N'David Pohl', N'flores22@gmail.com', N'Mobile Support Specialist', N'3145 West Street ', N'Grand Rapids', N'MI', N'49504', CAST(N'1992-05-23' AS Date))
INSERT [dbo].[Employee] ([EmployeeID], [EmpFirstName], [EmpLastName], [EmpSupervisor], [EmpEmail], [EmpJobTitle], [EmpStreet], [EmpCity], [EmpState], [EmpZip], [EmpDOB]) VALUES (4, N'Steve ', N'Meeks', N'James Weaver', N'MeeksS@gmail.com', N'Mac Technician', N'3753 Pride Ave', N'New York', N'NY', N'10004', CAST(N'1990-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [EmployeeID], [OrderDate], [Ordertatus], [ReferenceNum], [CustomerID]) VALUES (4, 3, CAST(N'2021-10-05' AS Date), N'Delivered', 1, 4)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [OrderDate], [Ordertatus], [ReferenceNum], [CustomerID]) VALUES (5, 1, CAST(N'2022-04-01' AS Date), N'Processed', 5, 5)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [OrderDate], [Ordertatus], [ReferenceNum], [CustomerID]) VALUES (6, 4, CAST(N'2021-09-12' AS Date), N'Delivered', 4, 2)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [OrderDate], [Ordertatus], [ReferenceNum], [CustomerID]) VALUES (7, 2, CAST(N'2022-03-28' AS Date), N'In Transit', 2, 3)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [OrderDate], [Ordertatus], [ReferenceNum], [CustomerID]) VALUES (10, 4, CAST(N'2022-01-02' AS Date), N'Delivered', 3, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Payment] ON 

INSERT [dbo].[Order_Payment] ([OrderPaymentID], [CustomerID], [ReferenceNum]) VALUES (1, 4, 1)
INSERT [dbo].[Order_Payment] ([OrderPaymentID], [CustomerID], [ReferenceNum]) VALUES (2, 3, 2)
INSERT [dbo].[Order_Payment] ([OrderPaymentID], [CustomerID], [ReferenceNum]) VALUES (3, 1, 3)
INSERT [dbo].[Order_Payment] ([OrderPaymentID], [CustomerID], [ReferenceNum]) VALUES (5, 2, 4)
INSERT [dbo].[Order_Payment] ([OrderPaymentID], [CustomerID], [ReferenceNum]) VALUES (6, 5, 5)
SET IDENTITY_INSERT [dbo].[Order_Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Product] ON 

INSERT [dbo].[Order_Product] ([OrderProductID], [OrderID], [ProductID], [OrdProQty], [OrdProPrice]) VALUES (1, 4, 3, 1, CAST(125.00 AS Decimal(5, 2)))
INSERT [dbo].[Order_Product] ([OrderProductID], [OrderID], [ProductID], [OrdProQty], [OrdProPrice]) VALUES (2, 5, 3, 2, CAST(250.00 AS Decimal(5, 2)))
INSERT [dbo].[Order_Product] ([OrderProductID], [OrderID], [ProductID], [OrdProQty], [OrdProPrice]) VALUES (3, 6, 5, 1, CAST(70.00 AS Decimal(5, 2)))
INSERT [dbo].[Order_Product] ([OrderProductID], [OrderID], [ProductID], [OrdProQty], [OrdProPrice]) VALUES (4, 7, 7, 2, CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Order_Product] ([OrderProductID], [OrderID], [ProductID], [OrdProQty], [OrdProPrice]) VALUES (5, 10, 7, 1, CAST(40.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Order_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([ReferenceNum], [CustomerID], [PaymentDate], [PaidTotalPrice], [PaymentTax]) VALUES (1, 4, CAST(N'2021-10-05' AS Date), CAST(125.00 AS Decimal(5, 2)), CAST(6.25 AS Decimal(5, 2)))
INSERT [dbo].[Payment] ([ReferenceNum], [CustomerID], [PaymentDate], [PaidTotalPrice], [PaymentTax]) VALUES (2, 3, CAST(N'2022-03-28' AS Date), CAST(80.00 AS Decimal(5, 2)), CAST(4.00 AS Decimal(5, 2)))
INSERT [dbo].[Payment] ([ReferenceNum], [CustomerID], [PaymentDate], [PaidTotalPrice], [PaymentTax]) VALUES (3, 1, CAST(N'2022-01-02' AS Date), CAST(40.00 AS Decimal(5, 2)), CAST(2.00 AS Decimal(5, 2)))
INSERT [dbo].[Payment] ([ReferenceNum], [CustomerID], [PaymentDate], [PaidTotalPrice], [PaymentTax]) VALUES (4, 2, CAST(N'2021-09-12' AS Date), CAST(70.00 AS Decimal(5, 2)), CAST(3.50 AS Decimal(5, 2)))
INSERT [dbo].[Payment] ([ReferenceNum], [CustomerID], [PaymentDate], [PaidTotalPrice], [PaymentTax]) VALUES (5, 5, CAST(N'2022-04-01' AS Date), CAST(250.00 AS Decimal(5, 2)), CAST(12.50 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProName], [ProVendor], [ProDescription], [ProQty], [ProCost], [ProRevenue], [ProType]) VALUES (3, N'Laptop Battery', N'Repairdo', N'Battery replacement for laptops', 23, CAST(125.00 AS Decimal(5, 2)), CAST(25.00 AS Decimal(5, 2)), N'Battery')
INSERT [dbo].[Product] ([ProductID], [ProName], [ProVendor], [ProDescription], [ProQty], [ProCost], [ProRevenue], [ProType]) VALUES (4, N'Laptop RAM', N'Highland Computer Solutions', N'RAM for laptops', 45, CAST(60.00 AS Decimal(5, 2)), CAST(20.00 AS Decimal(5, 2)), N'RAM')
INSERT [dbo].[Product] ([ProductID], [ProName], [ProVendor], [ProDescription], [ProQty], [ProCost], [ProRevenue], [ProType]) VALUES (5, N'Mobile Lithium Ion Battery', N'Repairdo', N'Battery replacement for phones', 32, CAST(70.00 AS Decimal(5, 2)), CAST(15.00 AS Decimal(5, 2)), N'Battery')
INSERT [dbo].[Product] ([ProductID], [ProName], [ProVendor], [ProDescription], [ProQty], [ProCost], [ProRevenue], [ProType]) VALUES (6, N'Laptop Screen', N'Highland Computer Solutions', N'Screen replacement for laptops', 67, CAST(100.00 AS Decimal(5, 2)), CAST(30.00 AS Decimal(5, 2)), N'Screens')
INSERT [dbo].[Product] ([ProductID], [ProName], [ProVendor], [ProDescription], [ProQty], [ProCost], [ProRevenue], [ProType]) VALUES (7, N'Mobile Screens', N'Mobile Repair', N'Screen replacement for mobile phones', 12, CAST(40.00 AS Decimal(5, 2)), CAST(10.00 AS Decimal(5, 2)), N'Screens')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_CustID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_CustID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_EmpID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_EmpID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_RefNum] FOREIGN KEY([ReferenceNum])
REFERENCES [dbo].[Payment] ([ReferenceNum])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_RefNum]
GO
ALTER TABLE [dbo].[Order_Payment]  WITH CHECK ADD  CONSTRAINT [FK_CustomID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order_Payment] CHECK CONSTRAINT [FK_CustomID]
GO
ALTER TABLE [dbo].[Order_Payment]  WITH CHECK ADD  CONSTRAINT [FK_ReferNum] FOREIGN KEY([ReferenceNum])
REFERENCES [dbo].[Payment] ([ReferenceNum])
GO
ALTER TABLE [dbo].[Order_Payment] CHECK CONSTRAINT [FK_ReferNum]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_OrdID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_OrdID]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_ProdID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_ProdID]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_CusID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_CusID]
GO

