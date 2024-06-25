USE master
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'dbDistribuidora')
BEGIN
    ALTER DATABASE dbDistribuidora SET SINGLE_USER WITH ROLLBACK IMMEDIATE
    DROP DATABASE dbDistribuidora;
END
GO

CREATE DATABASE dbDistribuidora 
GO

USE dbDistribuidora
GO

--CREACION DE TABLAS
CREATE TABLE [categorias](
	[id_categoria] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [clientes]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [clientes](
	[id_cliente] [int] NOT NULL,
	[tipo_doc] [char](3) NULL,
	[nro_doc] [varchar](12) NULL,
	[apellidos] [varchar](40) NULL,
	[nombres] [varchar](40) NULL,
	[direccion] [varchar](120) NULL,
	[id_ubigeo] [int] NULL,
	[celular] [varchar](15) NULL,
 CONSTRAINT [PK__clientes__677F38F5C0BE86FA] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [compras]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [compras](
	[id_compra] [int] NOT NULL,
	[id_proveedor] [int] NULL,
	[id_sucursal] [int] NULL,
	[nro_documento] [varchar](15) NULL,
	[fecha_compra] [date] NULL,
	[hora_compra] [time](7) NULL,
 CONSTRAINT [PK__compras__C4BAA6041C2484C0] PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [compras_detalle]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [compras_detalle](
	[id_compra_detalle] [int] NOT NULL,
	[id_compra] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio_unitario] [float] NULL,
	[sub_total] [float] NULL,
	[numero_lote] [int] NULL,
 CONSTRAINT [PK__compras___C08AA006FCE8BA12] PRIMARY KEY CLUSTERED 
(
	[id_compra_detalle] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_compra_producto] UNIQUE NONCLUSTERED 
(
	[id_compra] ASC,
	[id_producto] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [forma_pago]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [forma_pago](
	[id_forma_pago] [int] NOT NULL,
	[descripcion] [varchar](20) NULL,
	[dias_vencimiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [inventario]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [inventario](
	[id_inventario] [int] NOT NULL,
	[id_pedido_detalle] [int] NULL,
	[id_compra_detalle] [int] NULL,
	[id_sucursal] [int] NULL,
	[id_tipo_operacion] [int] NULL,
	[stock_actual] [float] NULL,
	[stock_final] [float] NULL,
	[fecha_inventario] [date] NULL,
	[hora_inventario] [time](7) NULL,
 CONSTRAINT [PK__inventar__013AEB5195A14882] PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pedido_detalle]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pedido_detalle](
	[id_pedido_detalle] [int] NOT NULL,
	[id_pedido] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio_unitario] [float] NULL,
	[sub_total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pedido_detalle] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_pedido_producto] UNIQUE NONCLUSTERED 
(
	[id_pedido] ASC,
	[id_producto] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pedidos]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pedidos](
	[id_pedido] [int] NOT NULL,
	[id_cliente] [int] NULL,
	[id_vendedor] [int] NULL,
	[id_sucursal] [int] NULL,
	[nro_documento] [varchar](15) NULL,
	[fecha_pedido] [date] NULL,
	[hora_pedido] [time](7) NULL,
	[id_forma_pago] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [productos]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [productos](
	[id_producto] [int] NOT NULL,
	[id_categoria] [int] NULL,
	[descripcion] [varchar](150) NULL,
	[id_unidad_medida] [char](3) NULL,
	[precio] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [proveedores]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [proveedores](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[ruc] [varchar](11) NULL,
	[razon_social] [varchar](80) NULL,
	[direccion] [varchar](120) NULL,
	[id_ubigeo] [int] NULL,
	[celular] [varchar](15) NULL,
	[contacto] [varchar](50) NULL,
 CONSTRAINT [PK__proveedo__8D3DFE28ADA9EF14] PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sucursales]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sucursales](
	[id_sucursal] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tipo_operacion]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tipo_operacion](
	[id_tipo_operacion] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_operacion] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ubigeo]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ubigeo](
	[id_ubigeo] [int] NOT NULL,
	[departamento] [varchar](50) NULL,
	[provincia] [varchar](50) NULL,
	[distrito] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ubigeo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [unidad_medida]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [unidad_medida](
	[id_unidad_medida] [char](3) NOT NULL,
	[descripcion] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_unidad_medida] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [vendedores]    Script Date: 23/06/2024 09:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vendedores](
	[id_vendedor] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](12) NULL,
	[apellidos] [varchar](40) NULL,
	[nombres] [varchar](40) NULL,
	[direccion] [varchar](120) NULL,
	[id_ubigeo] [int] NULL,
	[celular] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vendedor] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_ubigeo] FOREIGN KEY([id_ubigeo])
REFERENCES [ubigeo] ([id_ubigeo])
GO
ALTER TABLE [clientes] CHECK CONSTRAINT [FK_clientes_ubigeo]
GO
ALTER TABLE [compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_proveedores] FOREIGN KEY([id_proveedor])
REFERENCES [proveedores] ([id_proveedor])
GO
ALTER TABLE [compras] CHECK CONSTRAINT [FK_compras_proveedores]
GO
ALTER TABLE [compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_sucursales] FOREIGN KEY([id_sucursal])
REFERENCES [sucursales] ([id_sucursal])
GO
ALTER TABLE [compras] CHECK CONSTRAINT [FK_compras_sucursales]
GO
ALTER TABLE [compras_detalle]  WITH CHECK ADD  CONSTRAINT [FK_compras_detalle_compras] FOREIGN KEY([id_compra])
REFERENCES [compras] ([id_compra])
GO
ALTER TABLE [compras_detalle] CHECK CONSTRAINT [FK_compras_detalle_compras]
GO
ALTER TABLE [compras_detalle]  WITH CHECK ADD  CONSTRAINT [FK_compras_detalle_productos] FOREIGN KEY([id_producto])
REFERENCES [productos] ([id_producto])
GO
ALTER TABLE [compras_detalle] CHECK CONSTRAINT [FK_compras_detalle_productos]
GO
ALTER TABLE [inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_compras_detalle] FOREIGN KEY([id_compra_detalle])
REFERENCES [compras_detalle] ([id_compra_detalle])
GO
ALTER TABLE [inventario] CHECK CONSTRAINT [FK_inventario_compras_detalle]
GO
ALTER TABLE [inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_pedido_detalle] FOREIGN KEY([id_pedido_detalle])
REFERENCES [pedido_detalle] ([id_pedido_detalle])
GO
ALTER TABLE [inventario] CHECK CONSTRAINT [FK_inventario_pedido_detalle]
GO
ALTER TABLE [inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_sucursales] FOREIGN KEY([id_sucursal])
REFERENCES [sucursales] ([id_sucursal])
GO
ALTER TABLE [inventario] CHECK CONSTRAINT [FK_inventario_sucursales]
GO
ALTER TABLE [inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_tipo_operacion] FOREIGN KEY([id_tipo_operacion])
REFERENCES [tipo_operacion] ([id_tipo_operacion])
GO
ALTER TABLE [inventario] CHECK CONSTRAINT [FK_inventario_tipo_operacion]
GO
ALTER TABLE [pedido_detalle]  WITH CHECK ADD  CONSTRAINT [FK_pedido_detalle_pedidos] FOREIGN KEY([id_pedido])
REFERENCES [pedidos] ([id_pedido])
GO
ALTER TABLE [pedido_detalle] CHECK CONSTRAINT [FK_pedido_detalle_pedidos]
GO
ALTER TABLE [pedido_detalle]  WITH CHECK ADD  CONSTRAINT [FK_pedido_detalle_productos] FOREIGN KEY([id_producto])
REFERENCES [productos] ([id_producto])
GO
ALTER TABLE [pedido_detalle] CHECK CONSTRAINT [FK_pedido_detalle_productos]
GO
ALTER TABLE [pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_clientes] FOREIGN KEY([id_cliente])
REFERENCES [clientes] ([id_cliente])
GO
ALTER TABLE [pedidos] CHECK CONSTRAINT [FK_pedidos_clientes]
GO
ALTER TABLE [pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_forma_pago] FOREIGN KEY([id_forma_pago])
REFERENCES [forma_pago] ([id_forma_pago])
GO
ALTER TABLE [pedidos] CHECK CONSTRAINT [FK_pedidos_forma_pago]
GO
ALTER TABLE [pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_sucursales] FOREIGN KEY([id_sucursal])
REFERENCES [sucursales] ([id_sucursal])
GO
ALTER TABLE [pedidos] CHECK CONSTRAINT [FK_pedidos_sucursales]
GO
ALTER TABLE [pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_vendedores] FOREIGN KEY([id_vendedor])
REFERENCES [vendedores] ([id_vendedor])
GO
ALTER TABLE [pedidos] CHECK CONSTRAINT [FK_pedidos_vendedores]
GO
ALTER TABLE [productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_categorias] FOREIGN KEY([id_categoria])
REFERENCES [categorias] ([id_categoria])
GO
ALTER TABLE [productos] CHECK CONSTRAINT [FK_productos_categorias]
GO
ALTER TABLE [productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_unidad_medida] FOREIGN KEY([id_unidad_medida])
REFERENCES [unidad_medida] ([id_unidad_medida])
GO
ALTER TABLE [productos] CHECK CONSTRAINT [FK_productos_unidad_medida]
GO
ALTER TABLE [proveedores]  WITH CHECK ADD  CONSTRAINT [FK_proveedores_ubigeo] FOREIGN KEY([id_ubigeo])
REFERENCES [ubigeo] ([id_ubigeo])
GO
ALTER TABLE [proveedores] CHECK CONSTRAINT [FK_proveedores_ubigeo]
GO
ALTER TABLE [vendedores]  WITH CHECK ADD  CONSTRAINT [FK_vendedores_ubigeo] FOREIGN KEY([id_ubigeo])
REFERENCES [ubigeo] ([id_ubigeo])
GO
ALTER TABLE [vendedores] CHECK CONSTRAINT [FK_vendedores_ubigeo]
GO
