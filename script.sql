USE [kt6_lenchuk]
GO
/****** Object:  Table [dbo].[building]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[building](
	[id] [int] NOT NULL,
	[buildingName] [int] NULL,
 CONSTRAINT [PK_building] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[categoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [int] NOT NULL,
	[cityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[currentDiscount]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currentDiscount](
	[id] [int] NOT NULL,
	[currentDiscountName] [int] NOT NULL,
 CONSTRAINT [PK_currentDiscount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deliver]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deliver](
	[id] [int] NOT NULL,
	[deliverName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_deliver] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inStock]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inStock](
	[id] [int] NOT NULL,
	[inStockName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_inStock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[id] [int] NOT NULL,
	[articul] [nvarchar](100) NOT NULL,
	[idItemName] [int] NOT NULL,
	[idQuantityType] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[idMaxDiscount] [int] NOT NULL,
	[idProducer] [int] NOT NULL,
	[idDeliver] [int] NOT NULL,
	[idCategory] [int] NOT NULL,
	[idCurrentDiscount] [int] NOT NULL,
	[idInStock] [int] NOT NULL,
	[description] [nvarchar](300) NOT NULL,
	[image] [nvarchar](100) NULL,
	[imageFile] [nvarchar](100) NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maxDiscount]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maxDiscount](
	[id] [int] NOT NULL,
	[maxDiscountName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_maxDiscount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[name]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[name](
	[id] [int] NOT NULL,
	[itemNames] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_name] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[contain] [nvarchar](100) NOT NULL,
	[orderDate] [date] NOT NULL,
	[deliveryDate] [date] NOT NULL,
	[idPoint] [int] NOT NULL,
	[lname] [nvarchar](100) NULL,
	[fname] [nvarchar](100) NULL,
	[patro] [nvarchar](100) NULL,
	[acceptCode] [int] NOT NULL,
	[idStatus] [int] NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pointNums]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointNums](
	[id] [int] NOT NULL,
	[pointName] [int] NOT NULL,
 CONSTRAINT [PK_pointNums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[points]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[points](
	[id] [int] NOT NULL,
	[num] [int] NOT NULL,
	[idCity] [int] NOT NULL,
	[idStreet] [int] NOT NULL,
	[idBuilding] [int] NOT NULL,
 CONSTRAINT [PK_points] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producer]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producer](
	[id] [int] NOT NULL,
	[producerName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_producer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quantityType]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quantityType](
	[id] [int] NOT NULL,
	[quantityTypeName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_quantityType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statuses]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statuses](
	[id] [int] NOT NULL,
	[statusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_statuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[street]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[street](
	[id] [int] NOT NULL,
	[streetName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 21.01.2025 12:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[idRoles] [int] NOT NULL,
	[lname] [nvarchar](100) NOT NULL,
	[fname] [nvarchar](100) NOT NULL,
	[patro] [nvarchar](100) NOT NULL,
	[login] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[building] ([id], [buildingName]) VALUES (1, 1)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (2, 3)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (3, 4)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (4, 8)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (5, 12)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (6, 13)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (7, 17)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (8, 19)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (9, 20)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (10, 24)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (11, 25)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (12, 26)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (13, 28)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (14, 30)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (15, 32)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (16, 35)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (17, 40)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (18, 41)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (19, 43)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (20, 44)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (21, 46)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (22, 47)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (23, 49)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (24, 50)
INSERT [dbo].[building] ([id], [buildingName]) VALUES (25, NULL)
GO
INSERT [dbo].[category] ([id], [categoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[category] ([id], [categoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[category] ([id], [categoryName]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[city] ([id], [cityName]) VALUES (1, N'г. Нефтеюганск')
GO
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (1, 2)
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (2, 3)
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (3, 4)
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (4, 5)
GO
INSERT [dbo].[deliver] ([id], [deliverName]) VALUES (1, N'PetShop')
INSERT [dbo].[deliver] ([id], [deliverName]) VALUES (2, N'ZooMir')
GO
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (1, N'3')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (2, N'4')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (3, N'5')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (4, N'6')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (5, N'7')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (6, N'8')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (7, N'9')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (8, N'13')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (9, N'15')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (10, N'16')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (11, N'17')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (12, N'18')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (13, N'19')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (14, N'21')
GO
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (1, N'А112Т4', 3, 1, 123, 6, 4, 1, 2, 2, 4, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', NULL, N'А112Т4.png')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (2, N'G453T5', 8, 1, 149, 3, 12, 2, 1, 1, 5, N'Щетка-варежка True Touch для вычесывания шерсти, синий', NULL, N'G453T5.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (3, N'F432F4', 7, 1, 1200, 2, 8, 2, 2, 2, 9, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', NULL, N'F432F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (4, N'Y324F4', 3, 1, 86, 1, 9, 1, 3, 3, 11, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', NULL, N'Y324F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (5, N'E532Q5', 3, 1, 166, 3, 9, 1, 3, 4, 12, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', NULL, N'E532Q5.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (6, N'T432F4', 7, 1, 1700, 5, 2, 2, 3, 1, 3, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', NULL, N'T432F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (7, N'G345E4', 6, 1, 300, 1, 6, 2, 3, 2, 13, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', NULL, N'G345E4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (8, N'E345R4', 1, 1, 199, 1, 5, 2, 2, 4, 5, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', NULL, N'E345R4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (9, N'R356F4', 5, 1, 234, 2, 7, 1, 3, 2, 11, N'Миска Nobby с рисунком Dog для собак 130 мл красный', NULL, N'R356F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (10, N'E431R5', 3, 1, 170, 1, 10, 2, 3, 4, 3, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', NULL, N'E431R5.png')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (11, N'D563F4', 1, 1, 600, 2, 10, 1, 3, 4, 3, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (12, N'H436R4', 1, 1, 300, 3, 10, 1, 3, 1, 9, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (13, N'D643B5', 7, 1, 4100, 6, 1, 1, 2, 3, 7, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (14, N'H432F4', 5, 1, 385, 2, 10, 2, 1, 1, 11, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (15, N'S245R4', 7, 1, 280, 3, 1, 2, 2, 2, 6, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (16, N'V352R4', 7, 1, 1700, 5, 2, 1, 3, 3, 7, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (17, N'H342F5', 1, 1, 510, 1, 10, 2, 3, 1, 11, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (18, N'Q245F5', 1, 1, 510, 1, 10, 2, 3, 1, 11, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (19, N'G542F5', 7, 1, 2190, 6, 8, 1, 3, 3, 5, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (20, N'H542R6', 3, 1, 177, 3, 10, 2, 3, 2, 9, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (21, N'K436T5', 6, 1, 100, 1, 10, 2, 3, 3, 14, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (22, N'V527T5', 1, 1, 640, 1, 10, 1, 3, 4, 2, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (23, N'K452T5', 4, 1, 800, 5, 13, 2, 3, 1, 11, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (24, N'E466T6', 2, 1, 3500, 6, 10, 2, 3, 4, 1, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (25, N'B427R5', 5, 1, 400, 3, 10, 2, 1, 3, 3, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (26, N'H643W2', 5, 1, 292, 5, 10, 1, 1, 2, 8, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (27, N'D356R4', 6, 1, 600, 3, 11, 1, 3, 1, 10, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (28, N'E434U6', 3, 1, 140, 4, 9, 2, 3, 2, 13, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (29, N'M356R4', 3, 1, 50, 1, 9, 2, 3, 3, 4, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (30, N'W548O7', 7, 1, 600, 3, 3, 1, 3, 4, 9, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
GO
INSERT [dbo].[maxDiscount] ([id], [maxDiscountName]) VALUES (1, N'5')
INSERT [dbo].[maxDiscount] ([id], [maxDiscountName]) VALUES (2, N'10')
INSERT [dbo].[maxDiscount] ([id], [maxDiscountName]) VALUES (3, N'15')
INSERT [dbo].[maxDiscount] ([id], [maxDiscountName]) VALUES (4, N'20')
INSERT [dbo].[maxDiscount] ([id], [maxDiscountName]) VALUES (5, N'25')
INSERT [dbo].[maxDiscount] ([id], [maxDiscountName]) VALUES (6, N'30')
GO
INSERT [dbo].[name] ([id], [itemNames]) VALUES (1, N'Игрушка')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (2, N'Клетка')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (3, N'Лакомство')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (4, N'Лежак')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (5, N'Миска')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (6, N'Мячик')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (7, N'Сухой корм')
INSERT [dbo].[name] ([id], [itemNames]) VALUES (8, N'Щетка-варежка')
GO
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (1, N'А112Т4, 15, G453T5, 1', CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 5, NULL, NULL, NULL, 601, 2)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (2, N'F432F4, 15, Y324F4, 15', CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 2, NULL, NULL, NULL, 602, 2)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (3, N'E532Q5, 10, T432F4, 10', CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 3, N'Шилова', N'Майя', N'Артемьевна', 603, 1)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (4, N'G345E4, 1, E345R4, 2', CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 4, NULL, NULL, NULL, 604, 1)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (5, N'R356F4, 1, E431R5, 10', CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 5, NULL, NULL, NULL, 605, 1)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (6, N'H436R4, 1, D643B5, 1', CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 6, N'Филимонов', N'Роберт', N'Васильевич', 606, 1)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (7, N'H342F5, 2, Q245F5, 2', CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 9, NULL, NULL, NULL, 607, 2)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (8, N'K436T5, 1, V527T5, 1', CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 7, NULL, NULL, NULL, 608, 2)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (9, N'V527T5, 1, K452T5, 1', CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 8, N'Волкова', N'Эмилия', N'Артёмовна', 609, 2)
INSERT [dbo].[orders] ([id], [contain], [orderDate], [deliveryDate], [idPoint], [lname], [fname], [patro], [acceptCode], [idStatus]) VALUES (10, N'M356R4, 1, W548O7, 1', CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 9, N'Чистякова', N'Виктория', N'Степановна', 610, 1)
GO
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (1, 25)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (2, 20)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (3, 22)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (4, 24)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (5, 25)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (6, 28)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (7, 32)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (8, 34)
INSERT [dbo].[pointNums] ([id], [pointName]) VALUES (9, 36)
GO
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (1, 344288, 1, 26, 1)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (2, 614164, 1, 29, 14)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (3, 394242, 1, 6, 19)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (4, 660540, 1, 22, 11)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (5, 125837, 1, 28, 17)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (6, 125703, 1, 15, 23)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (7, 625283, 1, 16, 21)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (8, 614611, 1, 10, 24)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (9, 454311, 1, 13, 8)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (10, 660007, 1, 14, 8)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (11, 603036, 1, 19, 3)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (12, 450983, 1, 7, 12)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (13, 394782, 1, 26, 2)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (14, 603002, 1, 4, 13)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (15, 450558, 1, 11, 14)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (16, 394060, 1, 24, 19)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (17, 410661, 1, 27, 24)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (18, 625590, 1, 6, 9)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (19, 625683, 1, 1, 25)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (20, 400562, 1, 5, 15)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (21, 614510, 1, 8, 22)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (22, 410542, 1, 20, 21)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (23, 620839, 1, 25, 4)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (24, 443890, 1, 6, 1)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (25, 603379, 1, 23, 21)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (26, 603721, 1, 3, 18)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (27, 410172, 1, 21, 6)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (28, 420151, 1, 2, 15)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (29, 125061, 1, 17, 4)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (30, 630370, 1, 28, 10)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (31, 614753, 1, 18, 16)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (32, 426030, 1, 8, 20)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (33, 450375, 1, 30, 20)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (34, 625560, 1, 12, 5)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (35, 630201, 1, 7, 7)
INSERT [dbo].[points] ([id], [num], [idCity], [idStreet], [idBuilding]) VALUES (36, 190949, 1, 9, 12)
GO
INSERT [dbo].[producer] ([id], [producerName]) VALUES (1, N'Cat Chow')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (2, N'Chappy')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (3, N'Dog Chow')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (4, N'Dreames')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (6, N'LIKER')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (7, N'Nobby')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (8, N'Pro Plan')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (9, N'TitBit')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (10, N'Triol')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (11, N'trixie')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (12, N'True Touch')
INSERT [dbo].[producer] ([id], [producerName]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[quantityType] ([id], [quantityTypeName]) VALUES (1, N'шт.')
GO
INSERT [dbo].[roles] ([id], [roleName]) VALUES (1, N'Администратор')
INSERT [dbo].[roles] ([id], [roleName]) VALUES (2, N'Клиент')
INSERT [dbo].[roles] ([id], [roleName]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[statuses] ([id], [statusName]) VALUES (1, N'Завершен')
INSERT [dbo].[statuses] ([id], [statusName]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[street] ([id], [streetName]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[street] ([id], [streetName]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[street] ([id], [streetName]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[street] ([id], [streetName]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (6, N' ул. Коммунистическая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (7, N' ул. Комсомольская')
INSERT [dbo].[street] ([id], [streetName]) VALUES (8, N' ул. Маяковского')
INSERT [dbo].[street] ([id], [streetName]) VALUES (9, N' ул. Мичурина')
INSERT [dbo].[street] ([id], [streetName]) VALUES (10, N' ул. Молодежная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (11, N' ул. Набережная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (12, N' ул. Некрасова')
INSERT [dbo].[street] ([id], [streetName]) VALUES (13, N' ул. Новая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (14, N' ул. Октябрьская')
INSERT [dbo].[street] ([id], [streetName]) VALUES (15, N' ул. Партизанская')
INSERT [dbo].[street] ([id], [streetName]) VALUES (16, N' ул. Победы')
INSERT [dbo].[street] ([id], [streetName]) VALUES (17, N' ул. Подгорная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (18, N' ул. Полевая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (19, N' ул. Садовая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (20, N' ул. Светлая')
INSERT [dbo].[street] ([id], [streetName]) VALUES (21, N' ул. Северная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (22, N' ул. Солнечная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (23, N' ул. Спортивная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (24, N' ул. Фрунзе')
INSERT [dbo].[street] ([id], [streetName]) VALUES (25, N' ул. Цветочная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (26, N' ул. Чехова')
INSERT [dbo].[street] ([id], [streetName]) VALUES (27, N' ул. Школьная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (28, N' ул. Шоссейная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (29, N'  ул. Степная')
INSERT [dbo].[street] ([id], [streetName]) VALUES (30, N'ул. Клубная')
GO
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (1, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (2, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (4, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (5, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (6, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (8, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (9, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[users] ([id], [idRoles], [lname], [fname], [patro], [login], [password]) VALUES (10, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_category] FOREIGN KEY([idCategory])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_category]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_currentDiscount] FOREIGN KEY([idCurrentDiscount])
REFERENCES [dbo].[currentDiscount] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_currentDiscount]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_deliver] FOREIGN KEY([idDeliver])
REFERENCES [dbo].[deliver] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_deliver]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_inStock] FOREIGN KEY([idInStock])
REFERENCES [dbo].[inStock] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_inStock]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_maxDiscount] FOREIGN KEY([idMaxDiscount])
REFERENCES [dbo].[maxDiscount] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_maxDiscount]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_name] FOREIGN KEY([idItemName])
REFERENCES [dbo].[name] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_name]
GO
ALTER TABLE [dbo].[item]  WITH NOCHECK ADD  CONSTRAINT [FK_item_orders] FOREIGN KEY([id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_orders]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_producer] FOREIGN KEY([idProducer])
REFERENCES [dbo].[producer] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_producer]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_quantityType] FOREIGN KEY([idQuantityType])
REFERENCES [dbo].[quantityType] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_quantityType]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_pointNums] FOREIGN KEY([idPoint])
REFERENCES [dbo].[pointNums] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_pointNums]
GO
ALTER TABLE [dbo].[orders]  WITH NOCHECK ADD  CONSTRAINT [FK_orders_points] FOREIGN KEY([id])
REFERENCES [dbo].[points] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_points]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_statuses] FOREIGN KEY([idStatus])
REFERENCES [dbo].[statuses] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_statuses]
GO
ALTER TABLE [dbo].[points]  WITH CHECK ADD  CONSTRAINT [FK_points_building] FOREIGN KEY([idBuilding])
REFERENCES [dbo].[building] ([id])
GO
ALTER TABLE [dbo].[points] CHECK CONSTRAINT [FK_points_building]
GO
ALTER TABLE [dbo].[points]  WITH CHECK ADD  CONSTRAINT [FK_points_city] FOREIGN KEY([idCity])
REFERENCES [dbo].[city] ([id])
GO
ALTER TABLE [dbo].[points] CHECK CONSTRAINT [FK_points_city]
GO
ALTER TABLE [dbo].[points]  WITH CHECK ADD  CONSTRAINT [FK_points_street] FOREIGN KEY([idStreet])
REFERENCES [dbo].[street] ([id])
GO
ALTER TABLE [dbo].[points] CHECK CONSTRAINT [FK_points_street]
GO
ALTER TABLE [dbo].[points]  WITH NOCHECK ADD  CONSTRAINT [FK_points_users] FOREIGN KEY([id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[points] CHECK CONSTRAINT [FK_points_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([idRoles])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
