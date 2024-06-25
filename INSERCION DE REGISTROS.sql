USE dbDistribuidora
GO

-- INSERCION DE DATOS

--FORMA DE PAGO
INSERT forma_pago (id_forma_pago, descripcion, dias_vencimiento) VALUES (1, N'CONTADO', 0)
GO
INSERT forma_pago (id_forma_pago, descripcion, dias_vencimiento) VALUES (2, N'CREDITO 7 DIAS', 7)
GO
INSERT forma_pago (id_forma_pago, descripcion, dias_vencimiento) VALUES (3, N'CREDITO 15 DIAS', 15)
GO

-- CATEGORIAS
INSERT categorias (id_categoria, descripcion) VALUES (1, N'CANASTA BASICA')
GO
INSERT categorias (id_categoria, descripcion) VALUES (2, N'LICORES')
GO
INSERT categorias (id_categoria, descripcion) VALUES (3, N'SNACKS')
GO
INSERT categorias (id_categoria, descripcion) VALUES (4, N'ACEITES')
GO
INSERT categorias (id_categoria, descripcion) VALUES (5, N'PRODUCTOS LACTEOS')
GO

--SUCURSALES
INSERT sucursales (id_sucursal, nombre) VALUES (1, N'OFICINA SAN MIGUEL')
GO
INSERT sucursales (id_sucursal, nombre) VALUES (2, N'OFICINA CENTRAL')
GO
INSERT sucursales (id_sucursal, nombre) VALUES (3, N'OFICINA LOS OLIVOS')
GO

--TIPO DE OPERACION
INSERT tipo_operacion (id_tipo_operacion, descripcion) VALUES (1, N'SALIDAS POR PEDIDOS')
GO
INSERT tipo_operacion (id_tipo_operacion, descripcion) VALUES (2, N'INGRESO POR COMPRAS')
GO

--UBIGEO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150116, N'LIMA', N'LIMA', N'LINCE')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150117, N'LIMA', N'LIMA', N'LOS OLIVOS')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150118, N'LIMA', N'LIMA', N'LURIGANCHO (CHOSICA)')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150119, N'LIMA', N'LIMA', N'LURIN')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150120, N'LIMA', N'LIMA', N'MAGDALENA DEL MAR')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150121, N'LIMA', N'LIMA', N'PUEBLO LIBRE')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150122, N'LIMA', N'LIMA', N'MIRAFLORES')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150123, N'LIMA', N'LIMA', N'PACHACAMAC')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150124, N'LIMA', N'LIMA', N'PUCUSANA')
GO
INSERT ubigeo (id_ubigeo, departamento, provincia, distrito) VALUES (150125, N'LIMA', N'LIMA', N'PUENTE PIEDRA')
GO

--PROVEEDORES
SET IDENTITY_INSERT proveedores ON 
GO
INSERT proveedores (id_proveedor, ruc, razon_social, direccion, id_ubigeo, celular, contacto) VALUES (1, N'10297541251', N'ALICORP', N'CARRETERA PANAM 125', 150118, N'89458585', N'Julio Torres')
GO
INSERT proveedores (id_proveedor, ruc, razon_social, direccion, id_ubigeo, celular, contacto) VALUES (2, N'10294585821', N'GLORIA S.A', N'AV. GALAXIA 1458', 150118, N'45785852', N'Anita Perez')
GO
INSERT proveedores (id_proveedor, ruc, razon_social, direccion, id_ubigeo, celular, contacto) VALUES (3, N'10124578965', N'LICORES SABROSOS', N'AV. 28 DE JULIO 1525', 150120, N'12525585', N'Oscar Salinas')
GO
INSERT proveedores (id_proveedor, ruc, razon_social, direccion, id_ubigeo, celular, contacto) VALUES (4, N'10124579966', N'RIO MAGDALENA  SAC', N'MALECON PEDRO DE OSMA  272 ', 150121, N'932499255', N'PEDRO SALAS')
GO
INSERT proveedores (id_proveedor, ruc, razon_social, direccion, id_ubigeo, celular, contacto) VALUES (5, N'10124600967', N'INVERSIONES OMEGA  EIRL', N'AV SAN LUIS  2040', 150121, N'978321412', N'GERMAN  MARIN')
GO
SET IDENTITY_INSERT proveedores OFF
GO

--VENDEDORES
SET IDENTITY_INSERT vendedores ON 
GO
INSERT vendedores (id_vendedor, dni, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (1, N'78569858', N'BUSTINZA ARAOS', N'JULIO', N'AV. CATEDRAL 1585', 150116, N'12345678')
GO
INSERT vendedores (id_vendedor, dni, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (2, N'59869858', N'SALAS MONTES', N'CESAR', N'AV. PUMACAHUA 568', 150116, N'12458956')
GO
INSERT vendedores (id_vendedor, dni, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (3, N'23568945', N'CARRASCO MADRID', N'OFELIA', N'URB. SANTOS B-10', 150118, N'23568945')
GO
INSERT vendedores (id_vendedor, dni, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (4, N'12345678', N'CONCHA GARATE', N'ARTURO LISBAN', N'CALLE. PARIS 1525', 150118, N'12457845')
GO
INSERT vendedores (id_vendedor, dni, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (5, N'88888888', N'TERRONES PACOMPIA', N'CECILIA LUCIANA', N'URB. LUNAR B-8', 150117, N'56894512')
GO
INSERT vendedores (id_vendedor, dni, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (6, N'77886655', N'SOPLOPUCO PALACIOS', N'HANS SERBANDO', N'AV, SIEMPRE VIVA 666', 150117, N'98765432')
GO
SET IDENTITY_INSERT vendedores OFF
GO

--CLIENTES
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (1, N'DNI', N'29785856', N'PEREZ ROJAS', N'JUAN PEDRO', N'AV. LOS ALAMOS 520', 150120, N'945235689')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (2, N'DNI', N'45788956', N'SALAZAR QUISPE', N'ANTONIETA', N'URB. LAS PIEDRAS A-7', 150120, N'457896588')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (3, N'DNI', N'29785825', N'PONCE CARBAJAL', N'LILIANA TERESA', N'URB. ALEGRIA C-45', 150125, N'947585444')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (4, N'DNI', N'45568978', N'LOPEZ DE ZEGARRA', N'JULIA', N'AV. EL SOL 1523', 150117, N'914235689')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (5, N'DNI', N'15265847', N'SALAS PINEDA', N'OFELIA CRISTINA', N'CALLE RONDON 456', 150117, N'915235689')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (6, N'DNI', N'25569636', N'RAMOS QUISPE', N'JOSEFINO', N'URB. VISTA BUENA D-89', 150118, N'947124578')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (7, N'DNI', N'15478525', N'ARAUJO MAMANI', N'BRAULIO', N'AV. BUENOS AIRES 789', 150116, N'963587485')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (8, N'DNI', N'29584523', N'ORTIZ CASTRO', N'MARIA FERNANDA', N'COOP. MAGISTERIAL A-8', 150125, N'125852558')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (9, N'DNI', N'23568978', N'RAMOS SALAZAR', N'LUCIANA', N'CALLE 15 DE ABRIL 125', 150118, N'914582569')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (10, N'DNI', N'15487896', N'QUISPE CONDORI', N'JUSTINIANA', N'CALLE. LEOPOLIS 458', 150118, N'957141827')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (11, N'DNI', N'15487896', N'SOTELO RUIZ', N'PEDRO', N'AV. LOS OLIVOS  2015', 150120, N'757451812')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (12, N'DNI', N'65485890', N'GARCIA  HUAMAN', N'AMERICA', N'CALLE 10 DE ENERO 120', 150118, N'352142828')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (13, N'DNI', N'75477899', N'PACHAS SANTOS ', N'LUIS', N'AV. GARCIA NARANJO  315', 150116, N'257111857')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (14, N'DNI', N'25481896', N'MEDINA  CARPIO', N'ANDREA', N'CALLE 11 DE FEBRERO  555', 150120, N'337101820')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (15, N'DNI', N'24483396', N'PEREZ SUAREZ ', N'ALEJANDRA', N'AV. NICOLINI 150', 150120, N'343141921')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (16, N'DNI', N'27487898', N'RIVAS AGURTO', N'LUIS FERNANDO', N'AV. LA RINCONADA  456', 150119, N'457101327')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (17, N'DNI', N'35487842', N'PAREDES  RUIZ ', N'SANTIAGO', N'AV. PRIMAVERA 3030', 150118, N'230014185')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (18, N'DNI', N'95411893', N'PINEDO SALAS ', N'MARIA CARMEN', N'CALLE 12  DE MARZO 989', 150120, N'224489082')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (19, N'DNI', N'88548784', N'BAUTISTA LEON', N'SANDRO', N'AV. RIVA AGUERO 1467', 150125, N'449571668')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (20, N'DNI', N'33482296', N'SANCHEZ RAMOS ', N'JOSE LUIS', N'JR. ATAHUALPA  1156', 150125, N'214319082')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (21, N'DNI', N'45487896', N'SANCHEZ PERALTA ', N'MARIA LUISA', N'CALLE 7 DE JUNIO   770', 150120, N'557451813')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (22, N'DNI', N'64875696', N'RAMOS DE LA CRUZ ', N'MARCELA ', N'JR LIMATAMBO 1190', 150122, N'457904518')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (23, N'DNI', N'56848781', N'CABRERA  GARCIA ', N'MARILUZ', N'JR SANCHEZ CERRO 2020', 150122, N'657161822')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (24, N'DNI', N'44487820', N'CUADROS  MEDINA', N'JESUS ', N'AV. PRIMERO DE ENERO 200', 150121, N'257990827')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (25, N'DNI', N'51487409', N'SANTANA PONCE ', N'LUISA', N'AV PERU 4567', 150120, N'957141261')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (26, N'DNI', N'75481237', N'SANCHEZ PONCE', N'JORGE', N'AV PERU 2090', 150124, N'154534182')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (27, N'DNI', N'85487844', N'SANCHEZ  SANCHEZ ', N'LUIS ALBERTO', N'JR MIRONES  1189', 150124, N'444906821')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (28, N'DNI', N'17470989', N'PEREZ PERALTA ', N'ROSAURA', N'JR TRUJILLO  2376', 150116, N'560711222')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (29, N'DNI', N'33484461', N'LUYO ARIAS ', N'MARGARITA', N'AV ALFONSO UGARTE  4490', 150116, N'667714438')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (30, N'DNI', N'55543202', N'SUAREZ PALOMINO', N'ANTONIO', N'JR TAHUANTINSUYO 2468', 150118, N'956684301')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (31, N'DNI', N'12543200', N'PALOMARES  SANCHEZ ', N'JULIA', N'AV. ZARATE  1169', 150120, N'776684344')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (32, N'DNI', N'25566411', N'ALMEIDA  CASTRO', N'MERCEDES', N'AV.  PRIMAVERA  1590', 150121, N'766633309')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (33, N'DNI', N'15555288', N'CASTRO RUIZ ', N'LUISA', N'JR. CELENDIN  445', 150122, N'756334430')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (34, N'DNI', N'51653330', N'CORDOVA MARIN', N'ESTEBAN', N'CALLE LOS ROSALES  456', 150123, N'756224399')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (35, N'DNI', N'34783245', N'CALDERON SANCHEZ ', N'JACKELIN', N'CALLE LOS GIRASOLES  888', 150124, N'456774391')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (36, N'DNI', N'24567202', N'PEREZ  SANCHEZ ', N'JUAN PABLO', N'AV. PERU  2424', 150125, N'566684300')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (37, N'DNI', N'56843267', N'MEDINA ARIAS ', N'ESTEBAN', N'AV. SAN FRANCISCO 2020', 150125, N'951234101')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (38, N'DNI', N'45546701', N'SANTOS GUARDIA ', N'AMERICO', N'AV. INDEPENDENCIA  568', 150116, N'256459407')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (39, N'DNI', N'45113302', N'TARAZONA LEVANO ', N'JULIA', N'AV. INDUSTRIAL 4540', 150117, N'156684354')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (40, N'DNI', N'15843569', N'RUIZ PERALTA ', N'ANTONIO', N'CALLE BOLOGNESI  345', 150118, N'567684991')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (41, N'DNI', N'17546603', N'SEPULVEDA  SANCHEZ ', N'MARIA', N'JR. ALTUVE  190', 150119, N'226684308')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (42, N'DNI', N'50545221', N'LUYO QUISPE ', N'MARIA ANTONIETA', N'CALLE SAN MARTIN 190', 150120, N'456688008')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (43, N'DNI', N'19543203', N'SANCHEZ CARPIO ', N'MARTIN', N'CALLE LAS FRESAS 388', 150121, N'911898901')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (44, N'DNI', N'15325267', N'DELGADO RUIZ ', N'JUAN CARLOS ', N'AV. SAN AGUSTIN  5550', 150122, N'356674390')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (45, N'DNI', N'45545208', N'SUAREZ SARMIENTO ', N'ALEJANDRA', N'AV. LAS FLORES 4456', 150123, N'125655671')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (46, N'DNI', N'55432444', N'HUAMAN SANCHEZ ', N'RICARDO', N'JR. PAZ SOLDAN  190', 150124, N'944984301')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (47, N'DNI', N'22243902', N'PEREZ PERALTA ', N'DIEGO', N'AV 28 DE JULIO  2700', 150125, N'226684366')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (48, N'DNI', N'33674342', N'QUISPE GUTIERREZ', N'ANTONIETA', N'CALLE  LAS MALVINAS  1190', 150125, N'356684388')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (49, N'DNI', N'45643208', N'CASTRO LEVANO', N'ROSA MARIA ', N'JR. 12 DE OCTUBRE', 150124, N'904584377')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (50, N'DNI', N'12432337', N'RAMIREZ  RAMOS ', N'CECILIA ', N'AV. GRAN CHIMU  2320', 150116, N'916338427')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (51, N'DNI', N'56343208', N'QUISPE BERNUY ', N'SIXTO', N'AV. CINCO ESQUINAS  345', 150125, N'334916221')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (52, N'DNI', N'21743208', N'ROJAS MELENDEZ', N'JUANA ', N'JR CALLAO 250', 150116, N'116635695')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (53, N'DNI', N'45688764', N'PEDROZA SANCHEZ ', N'MARIA DEL CARMEN', N'AV. LAS AMERICA 1125', 150117, N'346338200')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (54, N'DNI', N'46685609', N'RUIZ TASAYCO', N'MARIA ELENA ', N'CALLE SAN CARLOS  190', 150118, N'456008411')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (55, N'DNI', N'21432900', N'MEDINA  LEON', N'PEDRO', N'AV. PRINCIPAL 4040', 150120, N'346355427')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (56, N'DNI', N'66843445', N'CARPIO SANCHEZ ', N'JULIO', N'JR. PAZ SOLDAN 2890', 150121, N'916338516')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (57, N'DNI', N'77693211', N'MARTINEZ  RUIZ', N'LUIS', N'AV EL SOL 4555', 150124, N'925318427')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (58, N'DNI', N'21454328', N'MALLQUI QUISPE ', N'SANDRO', N'AV. DIAGONAL 1125', 150122, N'113300877')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (59, N'DNI', N'28563456', N'SAAVEDRA  LINARES ', N'MARIA LUISA', N'AV. SHELL 345', 150125, N'216338444')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (60, N'DNI', N'56643222', N'SANCHEZ MELGAR', N'WALTER', N'JR  CRISTO REDENTOR  200', 150122, N'678338412')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (61, N'DNI', N'56043208', N'YUPANQUI SALAS ', N'CARMEN ANTONIETA', N'JR HUANUCO 2040', 150116, N'143438127')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (62, N'DNI', N'77745677', N'QUISPE SANCHEZ ', N'PEDRO', N'AV INDEPENDENCIA  2687', 150117, N'156338432')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (63, N'DNI', N'99445558', N'PACHAS CABRERA ', N'SANTIAGO', N'AV TAHUANTINSUYO  200', 150117, N'166338420')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (64, N'DNI', N'45448898', N'PAJUELO  LEON', N'JUAN CARLOS ', N'AV PRIALE 2567', 150125, N'176338402')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (65, N'DNI', N'45678335', N'LEON MARTINEZ ', N'CRISTOBAL', N'AV BOCANEGRA  2512', 150125, N'186344429')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (66, N'DNI', N'65467978', N'GUTIERREZ  MALQUI', N'CARLOS ', N'CALLE ARRIBA PERU 220', 150116, N'191677427')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (67, N'DNI', N'45345203', N'MUSQUI SANCHEZ', N'JUAN CARLOS ', N'AV CORPORACION 7890', 150117, N'194433423')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (68, N'DNI', N'56756708', N'SAAVEDRA QUISPE ', N'MARIO', N'AV SAN CARLOS  1200', 150118, N'206333107')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (69, N'DNI', N'56893233', N'PEDROZA SANCHEZ ', N'MARIA LUISA', N'CALLE PALMEIRA  255', 150119, N'216668427')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (70, N'DNI', N'66893203', N'CONTRERAS MAZO', N'LUIS', N'AV TUPAC AMARU 4000', 150120, N'226338007')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (71, N'DNI', N'35683228', N'MEDINA URBINA ', N'SANDRA', N'JR CUETO FERNANDINIZ 568', 150116, N'236338411')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (72, N'DNI', N'55673678', N'OBLITAS SANCHEZ ', N'ANGELICA', N'AV. LAS BANDERAS 598', 150116, N'246338422')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (73, N'DNI', N'88990001', N'PEREZ CARBONERO ', N'PEDRO ALBERTO', N'CALLE PILCOMAYO 1140', 150124, N'256355127')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (74, N'DNI', N'67325108', N'QUISPE CARRION', N'TERESA', N'JR CALANGO 240', 150117, N'266388427')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (75, N'DNI', N'67843204', N'TRUJILLO PAZ ', N'ALBERTO', N'CALLE PRINCIPAL  120', 150119, N'276338438')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (76, N'DNI', N'46789233', N'ANICAMA  PEREZ', N'JULIA', N'AV PRIMAVERA  500', 150121, N'286338400')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (77, N'DNI', N'56094323', N'PEREZ OBANDO', N'WALTER', N'AV SAEN PEÑA  290', 150123, N'291621421')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (78, N'DNI', N'99567808', N'TARAZONA  SANCHEZ ', N'CARLA', N'AV FERROCARRIL 400', 150123, N'306338499')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (79, N'DNI', N'65903321', N'VELARDE RUIZ ', N'MARIA JULIA', N'AV. SUCRE 2940', 150124, N'316311027')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (80, N'DNI', N'45678708', N'LEON  VILELA ', N'JOSE CARLOS ', N'JR UCAYALI 120', 150116, N'329138111')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (81, N'DNI', N'12678712', N'LEON VELARDE', N'PEDRO ALBERTO', N'JR CHASQUI 300', 150117, N'339138101')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (82, N'DNI', N'13671870', N'SOTELO SANCHEZ ', N'MIRIAM', N'CALLE CAPULI 150', 150118, N'349138102')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (83, N'DNI', N'14560018', N'APARICIO LEYVA', N'SUSAN ', N'JR SAN CARLS 900', 150119, N'359138103')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (84, N'DNI', N'15678707', N'QUISPE QUINCHO', N'ANDRES', N'CALLE CHINCHEROS 800', 150120, N'362913814')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (85, N'DNI', N'16678706', N'HERMOZA RIOS ', N'LUIS ALBERTO', N'JR TRES CRUCES 500', 150121, N'372213815')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (86, N'DNI', N'17678705', N'HERNANDEZ SAAVEDRA', N'CARLA', N'JR MONTIVIDEO 456', 150122, N'389138116')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (87, N'DNI', N'18674706', N'SALVATIERRA SANCHEZ ', N'MANUEL', N'CALLE SAN ANTONIO 445', 150123, N'399134417')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (88, N'DNI', N'19517705', N'PEÑA PERALTA', N'CARMELITA', N'JR SANDIA  900', 150124, N'409138181')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (89, N'DNI', N'20678308', N'ROJAS MEJIA', N'ESTHER', N'CALLE RAYMONDI 190', 150125, N'419138182')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (90, N'DNI', N'21678471', N'ROBLES MIRANDA ', N'LUISA', N'AV PACIFICO  5890', 150124, N'429144111')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (91, N'DNI', N'22678722', N'BARBARAN CANDELA ', N'MILAGROS', N'CALLE  LAS FRESAS 160', 150125, N'432913892')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (92, N'DNI', N'23447118', N'ORTIZ RIVAS', N'SANDRO', N'JR  FERROCARRIL  890', 150125, N'449138389')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (93, N'DNI', N'24671109', N'CASTRILLON ALBURJA', N'LILIANA  ELENA', N'JR  LOS DELIRIOS 900', 150124, N'459138221')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (94, N'DNI', N'25678725', N'PACHECO LINARES', N'PERCY', N'AV LA MARINA 4545', 150123, N'502913324')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (95, N'DNI', N'26672608', N'PAJUELO  PAJARES ', N'NATALY', N'AV PRIMAVERA  1500', 150122, N'519138311')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (96, N'DNI', N'27678727', N'SANCHEZ LARA', N'MANUEL', N'AV INDUSTRIAL  2525', 150121, N'529138441')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (97, N'DNI', N'28678728', N'HERNANDEZ TAPIA ', N'MARIA MERCEDES', N'CALLE SAN LUIS  400', 150120, N'532100112')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (98, N'DNI', N'29678729', N'CARMONA  SANCHEZ ', N'VERONIKA ', N'CALLE CARLOS QUINTO  190', 150119, N'548138113')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (99, N'DNI', N'30678730', N'MUÑOZ LARA', N'PERCY', N'JR LETICIA  390', 150118, N'549178141')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (100, N'DNI', N'31678732', N'BURGA  ARTEAGA', N'JUAN CARLOS ', N'JR PARURO 520', 150117, N'553267132')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (101, N'DNI', N'32674730', N'SALINAS HUERTAS ', N'MILAGROS', N'JR CREPUSCULO 340', 150116, N'223267175')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (102, N'DNI', N'33367222', N'SANCHEZ SORIA ', N'SAMUEL', N'JR RAYMONDI 234', 150117, N'953267198')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (103, N'DNI', N'34678332', N'TAPIA CARDENAS ', N'ARTURO', N'AV LOS HEROES NAVALES 200', 150118, N'943267111')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (104, N'DNI', N'35078731', N'CASTILLO PEÑA ', N'MARIA DEL CARMEN', N'JR PACASMAYO 690', 150119, N'953267133')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (105, N'DNI', N'36672232', N'CORONADO MEDINA ', N'JESSICA', N'JR PERRICHOLI 390', 150120, N'963234131')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (106, N'DNI', N'37671139', N'PEÑA  RUBIO', N'SANDRA', N'AV ARICA 1160', 150121, N'973267172')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (107, N'DNI', N'38678552', N'PEREZ GARCIA', N'MARIA LUISA', N'AV PANAMA  4545', 150122, N'983266630')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (108, N'DNI', N'39678932', N'QUINO QUIROZ ', N'RAFAEL', N'JR LA PERLA  1010', 150123, N'893267432')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (109, N'DNI', N'40678731', N'GRIMALDO SANCHEZ', N'PERDO ALBERTO', N'CALLE 20 DE JULIO 2356', 150124, N'883256131')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (110, N'DNI', N'41672732', N'QUISPE KAN', N'FRANCISCO', N'CALLE AZANGARO 345', 150125, N'783265634')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (111, N'DNI', N'42670032', N'HEREDIA LOO', N'FELIX', N'CALLE SAN BERNARDO 670', 150124, N'673267432')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (112, N'DNI', N'43787331', N'ACOSTA LINARES ', N'DELIA', N'CALLE COTABAMBA  321', 150125, N'653267125')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (113, N'DNI', N'44678744', N'CUADROS  MOLINARES ', N'EDITH', N'JR SAN MARTIN 130', 150124, N'663267532')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (114, N'DNI', N'45678725', N'PUICON RAMIREZ ', N'HUGO', N'AV ARRIOLA 490', 150123, N'673267132')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (115, N'DNI', N'46612726', N'BAZAN MATTOS ', N'DENYS', N'AV PERU  5600', 150122, N'683267772')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (116, N'DNI', N'47678727', N'OCHOA SANCHEZ ', N'LEANDRO', N'AV GRANDA 4509', 150121, N'693264545')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (117, N'DNI', N'48678728', N'CISNERO TAPIA ', N'WILLY', N'JR SAN ANTONIO 1580', 150119, N'703267170')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (118, N'DNI', N'49178729', N'VALDERRAMA  RAMOS ', N'LILY', N'JR EL EJERCITO 456', 150118, N'713267442')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (119, N'DNI', N'50678750', N'SOTELO GARCIA', N'LEONOR', N'AV PRINCIPAL 4570', 150117, N'723267444')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (120, N'DNI', N'51678751', N'SANCHEZ PALOMINO ', N'MARCELA ', N'AV ZORRITOS 1230', 150116, N'733261557')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (121, N'DNI', N'46052889', N'VERA DONAIRES', N'FLOR DE MARIA', N'JR. TORRE TAGLE N° 237', 150120, N'748762283')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (122, N'DNI', N'6014583', N'ZEVALLOS SOTO', N'FALIONERI ALBERTO', N'JR. VIRREY TOLEDO N° 387', 150119, N'757666743')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (123, N'DNI', N'23259018', N'LEONMARIN', N'JULISSA', N'JR. VICTORIA GARMA Nº 335 - CERCADO - (MINJUS)', 150124, N'767664113')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (124, N'DNI', N'44206519', N'CHIRE CERVANTES', N'NATALIA ARCELIA', N'JR. NICOLAS DE PIEROLA Nº 495 - 2DO. PISO - CERCADO', 150123, N'777666786')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (125, N'DNI', N'6783630', N'VEGA CARO', N'NORY MARILYN', N'AV. ANDRES AVELINO CACERES S/N', 150123, N'780677483')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (126, N'DNI', N'42200135', N'HUAMAN DE LA CRUZ', N'PEDRO ANIBAL', N'MALECON VIRGEN DE LA CANDELARIA N° 119 (AL COSTADO DE LA ESCUELA DE POLICIAS)', 150125, N'791104567')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (127, N'DNI', N'7948969', N'VALDIVIA MANCHEGO', N'LANDERER TULA ROXANA', N'JR. MANUEL P. FERNANDEZ N°315 2DO NIVEL', 150116, N'807677383')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (128, N'DNI', N'29593228', N'ARANDA ZURITA', N'GISELLA MASSIELA', N'AVENIDA CENTENARIO N° 1004', 150118, N'817636602')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (129, N'DNI', N'25681928', N'TUNQUE DUEÑAS', N'FANY LIZ', N'AVENIDA CELESTINO MANCHEGO MUÑOZ N° 391, INTERIOR 302 CERCADO', 150124, N'686243210')
GO
INSERT clientes (id_cliente, tipo_doc, nro_doc, apellidos, nombres, direccion, id_ubigeo, celular) VALUES (130, N'DNI', N'20406880', N'VALENCIA TUNQUE', N'FEDERICO', N'JR. VIRREY TOLEDO N° 241-251', 150118, N'999244903')
GO

--UNIDAD DE MEDIDA
INSERT unidad_medida (id_unidad_medida, descripcion) VALUES (N'BOL', N'BOLSA')
GO
INSERT unidad_medida (id_unidad_medida, descripcion) VALUES (N'BOT', N'BOTELLA')
GO
INSERT unidad_medida (id_unidad_medida, descripcion) VALUES (N'CAJ', N'CAJA')
GO
INSERT unidad_medida (id_unidad_medida, descripcion) VALUES (N'DIS', N'DISPLAY')
GO
INSERT unidad_medida (id_unidad_medida, descripcion) VALUES (N'PAQ', N'PAQUETE')
GO
INSERT unidad_medida (id_unidad_medida, descripcion) VALUES (N'UND', N'UNIDAD')
GO


--PRODUCTOS
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (10, 5, N'LECHE GLORIA LATA x 100 ML', N'UND', 5.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (11, 3, N'PAPITAS LAYS 12 x 50 gr', N'DIS', 20)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (12, 5, N'QUESO SCHEDAR 1KL', N'UND', 18.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (13, 2, N'RON FLOR DE CAÑA 1L X12', N'CAJ', 350)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (14, 4, N'ACEITE GIRASOL 750 ML', N'UND', 12.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (15, 1, N'PAN MOLDE 250 GR X 24 UND', N'PAQ', 7.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (16, 1, N'AZUCAR MARCATE 5K', N'BOL', 19)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (17, 2, N'RON CARTAVIO 8 AÑOS 1L X 12', N'CAJ', 380)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (18, 1, N'ARROZ COSTEÑO 1KL', N'BOL', 3.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (19, 4, N'ACEITE PRIMOR 1L', N'UND', 15)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (20, 1, N'ARROZ FARAON 1KL', N'BOL', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (21, 1, N'ARROZ SUPERIOR 1KL', N'BOL', 4.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (22, 1, N'ARROZ EL GRAN GRANO', N'BOL', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (23, 1, N'ARROZ CAPOTEÑA', N'BOL', 3.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (24, 1, N'FIDEO MOLITALIA', N'BOL', 4.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (25, 1, N'FIDEO NICOLINI', N'BOL', 4.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (26, 1, N'FIDEO DON VITTORIO', N'BOL', 4.7)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (27, 1, N'FIDEO GRANO DE ORO', N'BOL', 4.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (28, 1, N'FIDEO BELLS', N'BOL', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (29, 1, N'FIDEO VIVO', N'BOL', 4.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (30, 2, N'VINO SANTIAGO QUEIROLO', N'BOT', 28.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (31, 2, N'VINO TABERNERO', N'BOT', 26.7)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (32, 2, N'VINO TACAMA', N'BOT', 28.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (33, 2, N'VINO INTIPALKA ', N'BOT', 28.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (34, 2, N'VINO PAMPAS DE ICA ', N'BOT', 25.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (35, 2, N'VINO CONDE DE LA CONQUISTA', N'BOT', 26.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (36, 2, N'VINO  VIÑA DE CAMPOS ', N'BOT', 25.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (37, 2, N'VINO LA TOSTADORA', N'BOT', 25.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (38, 4, N'ACEITE  VEGETAL DE 750 ML', N'UND', 11.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (39, 4, N'ACEITE PRIMOR DE 750 ML', N'UND', 12.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (40, 4, N'ACEITE COCINERO  DE 750 ML', N'UND', 12.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (41, 4, N'ACEITE CAPRI X 5 LT', N'UND', 48.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (42, 4, N'ACEITE BELTRAN  DE 750 ML', N'UND', 10.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (43, 4, N'ACEITE ALPHA  DE 750 ML', N'UND', 10.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (44, 4, N'ACEITE VEGA DE 750 ML', N'UND', 10.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (45, 4, N'ACEITE TOMONEL DE 750 ML', N'UND', 10.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (46, 4, N'ACEITE AL SOL DE 750 ML', N'UND', 10.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (47, 5, N'QUESO FRESCO DE CAJAMARCA 1K', N'UND', 16.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (48, 5, N'QUESO FRESCO DE AREQUIPA  1K', N'UND', 18.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (49, 5, N'QUESO FRESCO DE AYACUCHO 1K', N'UND', 16.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (50, 5, N'QUESO MOZARELLA  ESPAÑOL 1K', N'UND', 27.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (51, 5, N'QUESO PHILADELPHIA  ESPAÑOL1 K', N'UND', 32.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (52, 5, N'QUESO MANCHEGO ESPAÑOL 1K', N'UND', 35.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (53, 5, N'QUESO CABRALES  ESPAÑOL 1K', N'UND', 34.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (54, 5, N'QUESO STILTON - INGLES  1K', N'UND', 35.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (55, 5, N'QUESO ROQUEFORT FRANCIA  1K ', N'UND', 39.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (56, 5, N'QUESO GORGONSOLA  ITALIA  1K', N'UND', 38.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (57, 5, N'QUESO ANDINO PERU 1K', N'UND', 36.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (58, 5, N'LECHE FRESCA LA VAQUITA MU 1L', N'UND', 6.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (59, 5, N'YOGUR NATURAL DE FRESA 1L ', N'UND', 5.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (60, 5, N'YOGUR NATURAL DE LUCMA 1L ', N'UND', 5.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (61, 5, N'LECHE PURA VIDA  LATA DE 100 ML', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (62, 5, N'LECHE NESTLE  LATA DE 100 ML ', N'UND', 6.7)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (63, 5, N'LECHE LAIVE  LATA DE 100ML ', N'UND', 7.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (64, 5, N'LECHE NESTLE CONDENSADA 150 ML', N'UND', 9.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (65, 5, N'LECHE NESTLE EL MANJAR 150 ML', N'UND', 9.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (66, 5, N'LECHE NESTLE CREMA  150 ML', N'UND', 9.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (67, 5, N'LECHE ANCHOR LATA  100 ML', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (68, 5, N'LECHE IDEAL LATA 100 ML', N'UND', 4.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (69, 5, N'LECHE IDEAL CREMADA  LATA 100 ML ', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (70, 3, N'PAPA LAYS CLASICA  BOLSA  150 GR', N'UND', 7.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (71, 3, N'PAPA LAYS ONDA PICANTE BOLSA 105 GR', N'UND', 3.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (72, 3, N'PAPA LAYS SAL MARINA  BOLSA 34 GR', N'UND', 2.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (73, 3, N'PAPA LAYS CLASICA  BOLSA  34 GR', N'UND', 2.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (74, 3, N'PAPA LAYS BBQ BOLSA 34 GR', N'UND', 2.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (75, 3, N'HABAS SALADAS TAPER 140 GR', N'UND', 4.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (76, 3, N'MANI SALADO  BOLSA  180 GR', N'UND', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (77, 3, N'MANI GRANUT BOLSA 180 GR', N'UND', 6.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (78, 3, N'HABAS SALADA  NATURA  BOLSA 150 GR', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (79, 3, N'MANI CONFITADO BOLSA 150 GR', N'UND', 4.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (80, 3, N'HABAS SALADA BOLSA 100 GR', N'UND', 3.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (81, 3, N'CRUNCH DE GRABANZO BOLSA 100 GR', N'UND', 7.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (82, 3, N'PISTACHOS TAPER 150 GR', N'UND', 17.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (83, 3, N'PECANA PELADA  BOLSA 90 GR', N'UND', 11.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (84, 3, N'NUEZ PELADA BOLSA 90 GR', N'UND', 9.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (85, 3, N'MEZCLA DE NUECES BOLSA  160 GR', N'UND', 11.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (86, 3, N'HABA SALADA TAPER  250 GR ', N'UND', 10.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (87, 3, N'MANI TOSTADO SN SAL TAPER 250 GR', N'UND', 8.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (88, 3, N'MANI TOSTADO TAPER 200GR', N'UND', 7.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (89, 3, N'MANI TOSTADO Y PELADO BOLSA  98 GR', N'UND', 4.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (90, 3, N'CRUNCH DE GRABAN DYFFE BOLSA 120 GR', N'UND', 7.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (91, 3, N'CASHEWS BOLSA 90 GR', N'UND', 10.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (92, 3, N'ALMENDRA NATURAL BOLSA 90 GR', N'UND', 7.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (93, 3, N'PISTACHOS CON CASCARAS BOLSA 90 GR', N'UND', 11.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (94, 3, N'ARANDALOS BOLSA 50 GR', N'UND', 3.7)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (95, 3, N'PIQUEO MANI BOLSA TAPER 125  GR', N'UND', 3.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (96, 3, N'MANI FRITO SALADO TAPER 140 GR', N'UND', 4.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (97, 3, N'MANI ORIENTAL A LIMON BOLSA 180 GR', N'UND', 6.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (98, 3, N'MANI TOSTADO BOLSA  80 GR', N'UND', 4.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (99, 3, N'PISTACHO TOSTADO BOLSA 227 GR', N'UND', 45.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (100, 3, N'PISTACHO TOSTADO Y SALADO BOLSA  35 GR', N'UND', 10.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (101, 3, N'MANI CONFITADO BOLSA 80 GR', N'UND', 6.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (102, 3, N'CANCHITA PARA MICROONDA  BOLSA 80 GR', N'UND', 4.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (103, 3, N'MAIZ POP CORN PAQUETE  100 GR', N'UND', 12.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (104, 3, N'MAIZ POP CORN  BOLSA  85 GR', N'UND', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (105, 3, N'MAIZ POP CORN MANTEQUILLA  BOLSA  85 GR', N'UND', 4.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (106, 3, N'PALOMITA DE MAIZ PAQUETE 250 GR', N'UND', 12.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (107, 3, N'HOJUELA DE VEGETALES BOLSA 250 GR', N'UND', 8.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (108, 3, N'CHICHARRON AMERICANO BOLSA  165 GR', N'UND', 9.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (109, 3, N'CANCHA CHULLPI BOLSA  500 GR', N'UND', 17.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (110, 1, N'PAN DE TRIGO ARTESANAL BOLSA 1 K', N'UND', 12.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (111, 1, N'PAN DE CEBADA  GRIEGO BOLSA  500 GR', N'UND', 15.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (112, 1, N'PAN INTEGRAL SANDIWCH BOLSA  800 GR', N'UND', 8.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (113, 1, N'PAN INTEGRAL DE MOLDE   1K', N'UND', 7.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (114, 1, N'PAN INTEGRAL BIMBO BOLSA 480 GR', N'UND', 10.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (115, 1, N'PAN INTEGRAL CLASICO BOLSA  500 GR', N'UND', 10.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (116, 1, N'GALLETA CON CHOCOLATE BOLSA 500 GR', N'UND', 9.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (117, 1, N'GALLETA  DE JENGIBRE BOLSA  800 GR', N'UND', 12.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (118, 1, N'GALLETA DE AVENAS Y PASAS BOLSA 800 GR', N'UND', 13.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (119, 1, N'GALLETA DE MANTEQUILLA  BOLSA  750 GR ', N'UND', 10.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (120, 1, N'HUEVO BLANCO  BOLSA 1 K ', N'UND', 9.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (121, 1, N'HUEVO ROSADO  BOLSA 1K', N'UND', 10.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (122, 1, N'HUEVO DE CORDIZ  BOLLSA  500 GR', N'UND', 6.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (123, 1, N'HUEVO DE PATO BOLSA 1K', N'UND', 12.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (124, 1, N'MANZANA ISRAEL BOLSA1K ', N'UND', 6.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (125, 1, N'MANZANA SANTA ROSA  BOLSA 1K', N'UND', 8.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (126, 1, N'MELON BOLSA  1K ', N'UND', 7.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (127, 1, N'SANDIA  ROJA  1K', N'UND', 2.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (128, 1, N'SANDIA AMARILLA  1K ', N'UND', 3.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (129, 1, N'TUNA  PERUANA  BOLSA 1K', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (130, 1, N'PAPA BLANCA BOLSA 1K', N'UND', 3.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (131, 1, N'PAPA AMARILLA BOLSA 1K', N'UND', 5.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (132, 1, N'PAPA HUAYRO  BOLSA 1K ', N'UND', 4.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (133, 1, N'PAPA  PERUANITA  BOLSA 1K ', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (134, 1, N'PAPA YUNGAY BOLSA  1K', N'UND', 3.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (135, 1, N'PAPA ROSADA BOLSA 1K ', N'UND', 4.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (136, 1, N'PAPA NATIVA PERUANA  BOLSA 1K', N'UND', 6.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (137, 1, N'CAMOTE AMARILLO BOLSA 1K', N'UND', 3.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (138, 1, N'CAMOTE BLANCO BOLSA 1K ', N'UND', 3.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (139, 1, N'CAMOTE MORADO BOLSA 1K', N'UND', 3.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (140, 1, N'AZUCAR BLANCA  BOLSA  1K', N'UND', 3.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (141, 1, N'AZUCAR RUBIA  BOLSA 1K', N'UND', 3.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (142, 1, N'LENTEJA  MARRON BOLSA  1/2 K', N'UND', 4.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (143, 1, N'LENTEJA  VERDE BOLSA  1/2 K', N'UND', 3.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (144, 1, N'FRIJOL AMARILLO  BOLSA 1/2 K ', N'UND', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (145, 1, N'FRIJOL NEGRO BOLSA 1/2 K', N'UND', 4.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (146, 1, N'PANAMITO BOLSA 1/2K', N'UND', 3.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (147, 1, N'PALLARES  BOLSA 1/2 K', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (148, 1, N'ALVERJA  AMERICANA BOLSA 800GR', N'UND', 7.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (149, 1, N'MANI EN GRANO SECO BOLSA 1/2 K', N'UND', 6.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (150, 2, N'PISCO AROMATICO ALBILLA  750 ML', N'UND', 35.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (151, 2, N'PISCO AROMATICO ITALIA   750 ML', N'UND', 32.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (152, 2, N'PISCO AROMATICO MOSCATEL 750 ML', N'UND', 40.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (153, 2, N'PISCO AROMATICO TORONTEL 750 ML', N'UND', 40.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (154, 2, N'PISCO PURO MOLLAR 750 ML', N'UND', 34.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (155, 2, N'PISCO PURO QUEBRANTA  750 ML', N'UND', 35.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (156, 2, N'PISCO PURO UBINA  750 ML ', N'UND', 31.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (157, 2, N'PISCO PURO  NEGRA  COMUN 750 ML ', N'UND', 29.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (158, 2, N'PISCO PURO MOSCATEL ROSADO 750 ML', N'UND', 32.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (159, 2, N'PISCO  PURO ACHOLADO  750 ML', N'UND', 30.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (160, 1, N'CARNE DE TERNERA  BOLSA 1K', N'UND', 25.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (161, 1, N'CARNE DE CERDO  BOLSA 1K', N'UND', 18.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (162, 1, N'CARNE DE  VACA BOLSA 1K', N'UND', 20.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (163, 1, N'CARNE DE CORDERO BOLSA 1K', N'UND', 16.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (164, 1, N'CARNE DE PATO  BOLSA   1K', N'UND', 19.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (165, 1, N'CARNE DE GANSO BOLSA  1K ', N'UND', 23.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (166, 1, N'CARNE DE POLLO BOLSA  1K ', N'UND', 12.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (167, 1, N'CARNE DE GALLINA DE CORRAL BOLSA  1K', N'UND', 18.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (168, 1, N'CARNE DE CABRA BOLSA 1K ', N'UND', 14.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (169, 1, N'CARNE DE BUEY BOLSA 1K', N'UND', 22.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (170, 1, N'AGUAYMANTO BOLSA 1K  ', N'UND', 16.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (171, 1, N'UVA ITALIA  BOLSA 1K', N'UND', 12.1)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (172, 1, N'UVA BORGOÑA NEGRA  BOLSA 1K', N'UND', 8.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (173, 1, N'UVA BORGOÑA BLANCA BOLSA 1K ', N'UND', 8.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (174, 1, N'UVA QUEBRANTA BOLSA  1K', N'UND', 7.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (175, 1, N'CAMU CAMU BOLSA 1/2 K ', N'UND', 10.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (176, 1, N'CARAMBOLA BOLSA  1/2 K ', N'UND', 8.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (177, 1, N'CHIRIMOYA  BOLSA  1K ', N'UND', 4.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (178, 1, N'CIRUELA ROJA  EXTRA BOLSA 1K', N'UND', 10.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (179, 1, N'GUAYABAS AMARILLAS BOLSA 1K ', N'UND', 6.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (180, 1, N'PLATANOS DE SEDA BOLSA 1K', N'UND', 3.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (181, 1, N'PLATANOS DE ISLA  BOLSA 1K', N'UND', 4.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (182, 1, N'PLATANOS MORADO BOLSA 1K', N'UND', 5.5)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (183, 1, N'MANGO EXTRA  BOLSA 1K', N'UND', 6.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (184, 1, N'GUANABANA  BOLSA  1K', N'UND', 7.3)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (185, 1, N'PERA BOLSA 1K', N'UND', 10.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (186, 1, N'TOMATE ROJO BOLSA  1K', N'UND', 5.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (187, 1, N'LIMON NORTEÑO BOLSA 1K', N'UND', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (188, 1, N'AGUACATE HASH  BOLSA 1K', N'UND', 10.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (189, 1, N'AGUACATE FUERTE  BOLSA 1K', N'UND', 12.4)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (190, 5, N'YOGURT MORA BAJO EN GRASA 150 ML ', N'UND', 3.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (191, 5, N'YOGURT MELOCOTON BAJO EN GRASA 150 ML ', N'UND', 4.2)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (192, 5, N'YOGURT MANDARINA BAJO EN GRASA  150 ML', N'UND', 4.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (193, 5, N'YOGURT FRESA BAJO EN GRASA  150 ML ', N'UND', 4.6)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (194, 5, N'YOGURT UVA BAJO EN GRASA  150 ML', N'UND', 4.7)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (195, 2, N'WISKY BRILLANTE BOTELLA 750 ML', N'UND', 52.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (196, 2, N'WISKY JOHNNIE WALKER BOTELLA 750 ML', N'UND', 94.8)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (197, 2, N'PISCO PORTON MOSTO BOTELLA 750 ML', N'UND', 89.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (198, 2, N'PISCO PORTON ACHOLADO BOTELLA 750 ML', N'UND', 88.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (199, 2, N'PISCO QUEIROLO ACHOÑADO BOTELLA  750 ML', N'UND', 30.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (200, 2, N'RON FLOR DE CAÑA  BOTELLA 750 ML', N'UND', 99.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (201, 2, N'PISCO QUEIROLO  QUEBRANTA BOTELLA  750 ML', N'UND', 30.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (202, 2, N'PISCO PORTON NEGRA BOTELLA 750 ML', N'UND', 89.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (203, 2, N'WISKY CHIVAS REGAL BOTELLA 750 ML', N'UND', 92.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (204, 2, N'GIN BEEFEATER  BOTELLA  750 ML', N'UND', 79.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (205, 2, N'WISKY RED LABEL BOTELLA  750 ML', N'UND', 49.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (206, 2, N'RON CARTAVIO BLACK BOTELLA 750 ML', N'UND', 27.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (207, 2, N'PISCO CUATRO GALLOS ACHOLADO 750 ML', N'UND', 42.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (208, 2, N'PISCO CUATRO GALLOS QUEBRANTA 750 ML', N'UND', 42.9)
GO
INSERT productos (id_producto, id_categoria, descripcion, id_unidad_medida, precio) VALUES (209, 2, N'VODKA SMIRNOFF BOTELLA 750 ML', N'UND', 39.9)
GO


--COMPRAS
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60001, 2, 1, N'FA-125456', CAST(N'2023-01-30' AS Date), CAST(N'13:05:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60002, 2, 1, N'FA-136666', CAST(N'2023-01-30' AS Date), CAST(N'13:26:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60003, 1, 1, N'FA-147876', CAST(N'2023-01-30' AS Date), CAST(N'18:51:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60004, 1, 1, N'FA-159086', CAST(N'2023-02-28' AS Date), CAST(N'09:41:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60005, 1, 1, N'FA-170296', CAST(N'2023-02-28' AS Date), CAST(N'11:21:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60006, 2, 3, N'FA-181506', CAST(N'2023-02-28' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60007, 2, 3, N'FA-192716', CAST(N'2023-03-31' AS Date), CAST(N'12:56:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60008, 2, 3, N'FA-203926', CAST(N'2023-03-31' AS Date), CAST(N'11:50:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60009, 3, 1, N'FA-215136', CAST(N'2023-03-31' AS Date), CAST(N'09:16:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60010, 3, 1, N'FA-226346', CAST(N'2023-04-30' AS Date), CAST(N'08:52:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60011, 3, 1, N'FA-237556', CAST(N'2023-04-30' AS Date), CAST(N'08:49:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60012, 4, 2, N'FA-248766', CAST(N'2023-04-30' AS Date), CAST(N'09:01:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60013, 4, 2, N'FA-259976', CAST(N'2023-05-31' AS Date), CAST(N'11:52:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60014, 4, 2, N'FA-271186', CAST(N'2023-05-31' AS Date), CAST(N'16:48:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60015, 5, 1, N'FA-282396', CAST(N'2023-05-31' AS Date), CAST(N'17:07:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60016, 5, 1, N'FA-293606', CAST(N'2023-06-30' AS Date), CAST(N'15:10:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60017, 5, 1, N'FA-304816', CAST(N'2023-06-30' AS Date), CAST(N'14:54:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60018, 1, 1, N'FA-316026', CAST(N'2023-06-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60019, 2, 2, N'FA-327236', CAST(N'2023-07-31' AS Date), CAST(N'12:04:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60020, 3, 3, N'FA-338446', CAST(N'2023-07-31' AS Date), CAST(N'08:50:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60021, 4, 2, N'FA-349656', CAST(N'2023-07-31' AS Date), CAST(N'13:36:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60022, 5, 3, N'FA-360866', CAST(N'2023-08-31' AS Date), CAST(N'12:36:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60023, 5, 2, N'FA-372076', CAST(N'2023-08-31' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60024, 5, 2, N'FA-383286', CAST(N'2023-08-31' AS Date), CAST(N'15:57:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60025, 4, 2, N'FA-394496', CAST(N'2023-09-30' AS Date), CAST(N'13:04:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60026, 3, 3, N'FA-405706', CAST(N'2023-09-30' AS Date), CAST(N'09:19:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60027, 2, 3, N'FA-416916', CAST(N'2023-09-30' AS Date), CAST(N'14:37:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60028, 1, 3, N'FA-428126', CAST(N'2023-10-31' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60029, 2, 2, N'FA-439336', CAST(N'2023-10-31' AS Date), CAST(N'11:39:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60030, 2, 2, N'FA-450546', CAST(N'2023-10-31' AS Date), CAST(N'10:45:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60031, 4, 2, N'FA-461756', CAST(N'2023-11-30' AS Date), CAST(N'14:25:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60032, 4, 1, N'FA-472966', CAST(N'2023-11-30' AS Date), CAST(N'09:54:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60033, 4, 1, N'FA-484176', CAST(N'2023-11-30' AS Date), CAST(N'12:27:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60034, 4, 2, N'FA-495386', CAST(N'2023-12-31' AS Date), CAST(N'11:51:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60035, 2, 1, N'FA-506596', CAST(N'2023-12-31' AS Date), CAST(N'18:13:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60036, 2, 1, N'FA-517806', CAST(N'2023-12-31' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60037, 2, 1, N'FA-529016', CAST(N'2024-01-31' AS Date), CAST(N'13:55:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60038, 1, 2, N'FA-540226', CAST(N'2024-01-31' AS Date), CAST(N'14:17:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60039, 1, 2, N'FA-551436', CAST(N'2024-01-31' AS Date), CAST(N'15:55:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60040, 1, 3, N'FA-562646', CAST(N'2024-02-29' AS Date), CAST(N'16:03:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60041, 3, 3, N'FA-573856', CAST(N'2024-02-29' AS Date), CAST(N'19:32:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60042, 3, 3, N'FA-585066', CAST(N'2024-02-29' AS Date), CAST(N'14:36:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60043, 2, 2, N'FA-596276', CAST(N'2024-03-31' AS Date), CAST(N'08:23:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60044, 2, 1, N'FA-607486', CAST(N'2024-03-31' AS Date), CAST(N'11:59:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60045, 2, 1, N'FA-618696', CAST(N'2024-03-31' AS Date), CAST(N'18:38:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60046, 3, 2, N'FA-629906', CAST(N'2024-05-30' AS Date), CAST(N'11:46:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60047, 3, 2, N'FA-641116', CAST(N'2024-05-30' AS Date), CAST(N'13:03:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60048, 4, 2, N'FA-652326', CAST(N'2024-05-30' AS Date), CAST(N'13:16:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60049, 5, 1, N'FA-663536', CAST(N'2024-06-03' AS Date), CAST(N'18:36:00' AS Time))
GO
INSERT compras (id_compra, id_proveedor, id_sucursal, nro_documento, fecha_compra, hora_compra) VALUES (60050, 1, 1, N'FA-674746', CAST(N'2024-06-05' AS Date), CAST(N'18:41:00' AS Time))
GO

--COMPRAS DETALLE
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15401, 60001, 10, 77, 4.8, 369.6, 1)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15402, 60001, 12, 76, 17.5, 1330, 2)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15403, 60002, 13, 49, 349, 17101, 3)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15404, 60002, 14, 69, 11.5, 793.5, 4)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15405, 60002, 16, 75, 15, 1125, 5)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15406, 60003, 18, 60, 2.8, 168, 6)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15407, 60003, 10, 63, 4.8, 302.4, 7)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15408, 60003, 16, 74, 15, 1110, 8)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15409, 60004, 16, 62, 15, 930, 9)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15410, 60004, 14, 63, 11.5, 724.5, 10)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15411, 60005, 10, 73, 4.8, 350.4, 11)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15412, 60005, 16, 73, 15, 1095, 12)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15413, 60005, 15, 77, 6.5, 500.5, 13)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15414, 60006, 10, 57, 4.8, 273.6, 14)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15415, 60006, 15, 72, 6.5, 468, 15)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15416, 60006, 16, 60, 15, 900, 16)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15417, 60007, 185, 61, 9.2, 561.2, 17)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15418, 60007, 16, 48, 15, 720, 18)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15419, 60007, 15, 53, 6.5, 344.5, 19)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15420, 60008, 208, 66, 41.9, 2765.4, 20)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15421, 60008, 180, 51, 2.2, 112.2, 21)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15422, 60008, 15, 71, 6.5, 461.5, 22)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15423, 60009, 15, 71, 6.5, 461.5, 23)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15424, 60009, 18, 68, 2.8, 190.4, 24)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15425, 60009, 180, 55, 2.2, 121, 25)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15426, 60010, 10, 70, 4.8, 336, 26)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15427, 60010, 180, 57, 2.2, 125.4, 27)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15428, 60010, 14, 64, 11.5, 736, 28)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15429, 60011, 148, 49, 6.2, 303.8, 29)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15430, 60011, 16, 57, 15, 855, 30)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15431, 60011, 208, 50, 41.9, 2095, 31)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15432, 60012, 208, 64, 41.9, 2681.6, 32)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15433, 60012, 14, 75, 11.5, 862.5, 33)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15434, 60012, 10, 72, 4.8, 345.6, 34)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15435, 60013, 15, 73, 6.5, 474.5, 35)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15436, 60013, 16, 52, 15, 780, 36)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15437, 60013, 10, 70, 4.8, 336, 37)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15438, 60014, 18, 68, 2.8, 190.4, 38)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15439, 60014, 180, 71, 2.2, 156.2, 39)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15440, 60014, 16, 62, 15, 930, 40)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15441, 60015, 185, 76, 9.2, 699.2, 41)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15442, 60015, 18, 74, 2.8, 207.2, 42)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15443, 60015, 148, 67, 6.2, 415.4, 43)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15444, 60016, 180, 62, 2.2, 136.4, 44)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15445, 60016, 148, 57, 6.2, 353.4, 45)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15446, 60016, 10, 76, 4.8, 364.8, 46)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15447, 60017, 18, 47, 2.8, 131.6, 47)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15448, 60017, 180, 55, 2.2, 121, 48)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15449, 60017, 14, 59, 11.5, 678.5, 49)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15450, 60018, 16, 64, 15, 960, 50)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15451, 60018, 14, 74, 11.5, 851, 51)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15452, 60018, 18, 69, 2.8, 193.2, 52)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15453, 60019, 14, 56, 11.5, 644, 53)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15454, 60019, 185, 55, 9.2, 506, 54)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15455, 60019, 10, 53, 4.8, 254.4, 55)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15456, 60020, 18, 65, 2.8, 182, 56)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15457, 60020, 16, 70, 15, 1050, 57)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15458, 60020, 10, 65, 4.8, 312, 58)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15459, 60021, 180, 55, 2.2, 121, 59)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15460, 60021, 148, 68, 6.2, 421.6, 60)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15461, 60021, 11, 55, 19, 1045, 61)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15462, 60022, 180, 71, 2.2, 156.2, 62)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15463, 60022, 18, 59, 2.8, 165.2, 63)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15464, 60022, 16, 67, 15, 1005, 64)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15465, 60023, 15, 61, 6.5, 396.5, 65)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15466, 60023, 11, 64, 19, 1216, 66)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15467, 60023, 16, 47, 15, 705, 67)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15468, 60024, 14, 63, 11.5, 724.5, 68)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15469, 60024, 16, 74, 15, 1110, 69)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15470, 60024, 18, 57, 2.8, 159.6, 70)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15471, 60025, 14, 77, 11.5, 885.5, 71)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15472, 60025, 15, 56, 6.5, 364, 72)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15473, 60025, 148, 52, 6.2, 322.4, 73)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15474, 60026, 14, 55, 11.5, 632.5, 74)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15475, 60026, 18, 62, 2.8, 173.6, 75)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15476, 60026, 10, 77, 4.8, 369.6, 76)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15477, 60027, 10, 54, 4.8, 259.2, 77)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15478, 60027, 16, 47, 15, 705, 78)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15479, 60027, 15, 67, 6.5, 435.5, 79)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15480, 60028, 180, 61, 2.2, 134.2, 80)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15481, 60028, 15, 58, 6.5, 377, 81)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15482, 60028, 16, 64, 15, 960, 82)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15483, 60029, 14, 62, 11.5, 713, 83)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15484, 60029, 185, 64, 9.2, 588.8, 84)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15485, 60029, 180, 68, 2.2, 149.6, 85)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15486, 60030, 15, 74, 6.5, 481, 86)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15487, 60030, 16, 56, 15, 840, 87)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15488, 60030, 208, 58, 41.9, 2430.2, 88)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15489, 60031, 185, 63, 9.2, 579.6, 89)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15490, 60031, 148, 54, 6.2, 334.8, 90)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15491, 60031, 18, 50, 2.8, 140, 91)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15492, 60032, 14, 73, 11.5, 839.5, 92)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15493, 60032, 18, 48, 2.8, 134.4, 93)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15494, 60032, 148, 67, 6.2, 415.4, 94)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15495, 60033, 10, 60, 4.8, 288, 95)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15496, 60033, 11, 52, 19, 988, 96)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15497, 60033, 148, 47, 6.2, 291.4, 97)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15498, 60034, 185, 65, 9.2, 598, 98)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15499, 60034, 208, 77, 41.9, 3226.3, 99)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15500, 60034, 11, 49, 19, 931, 100)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15501, 60035, 180, 72, 2.2, 158.4, 101)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15502, 60035, 16, 55, 15, 825, 102)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15503, 60035, 11, 57, 19, 1083, 103)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15504, 60036, 180, 55, 2.2, 121, 104)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15505, 60036, 16, 70, 15, 1050, 105)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15506, 60036, 208, 65, 41.9, 2723.5, 106)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15507, 60037, 14, 51, 11.5, 586.5, 107)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15508, 60037, 16, 69, 15, 1035, 108)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15509, 60037, 15, 62, 6.5, 403, 109)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15510, 60038, 148, 61, 6.2, 378.2, 110)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15511, 60038, 14, 67, 11.5, 770.5, 111)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15512, 60038, 18, 72, 2.8, 201.6, 112)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15513, 60039, 180, 76, 2.2, 167.2, 113)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15514, 60039, 16, 66, 15, 990, 114)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15515, 60039, 14, 76, 11.5, 874, 115)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15516, 60040, 15, 72, 6.5, 468, 116)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15517, 60040, 148, 47, 6.2, 291.4, 117)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15518, 60040, 10, 71, 4.8, 340.8, 118)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15519, 60041, 10, 71, 4.8, 340.8, 119)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15520, 60041, 16, 57, 15, 855, 120)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15521, 60041, 18, 64, 2.8, 179.2, 121)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15522, 60042, 185, 56, 9.2, 515.2, 122)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15523, 60042, 11, 59, 19, 1121, 123)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15524, 60042, 16, 70, 15, 1050, 124)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15525, 60043, 15, 76, 6.5, 494, 125)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15526, 60043, 11, 77, 19, 1463, 126)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15527, 60043, 16, 66, 15, 990, 127)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15528, 60044, 15, 56, 6.5, 364, 128)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15529, 60044, 16, 57, 15, 855, 129)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15530, 60044, 180, 53, 2.2, 116.6, 130)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15531, 60045, 185, 74, 9.2, 680.8, 131)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15532, 60045, 16, 65, 15, 975, 132)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15533, 60045, 10, 64, 4.8, 307.2, 133)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15534, 60046, 180, 57, 2.2, 125.4, 134)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15535, 60046, 18, 61, 2.8, 170.8, 135)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15536, 60046, 208, 69, 41.9, 2891.1, 136)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15537, 60047, 15, 63, 6.5, 409.5, 137)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15538, 60047, 18, 53, 2.8, 148.4, 138)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15539, 60047, 180, 57, 2.2, 125.4, 139)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15540, 60048, 15, 55, 6.5, 357.5, 140)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15541, 60048, 208, 62, 41.9, 2597.8, 141)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15542, 60048, 185, 48, 9.2, 441.6, 142)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15543, 60049, 180, 57, 2.2, 125.4, 143)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15544, 60049, 148, 69, 6.2, 427.8, 144)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15545, 60049, 10, 72, 4.8, 345.6, 145)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15546, 60050, 208, 53, 41.9, 2220.7, 146)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15547, 60050, 11, 58, 19, 1102, 147)
GO
INSERT compras_detalle (id_compra_detalle, id_compra, id_producto, cantidad, precio_unitario, sub_total, numero_lote) VALUES (15548, 60050, 185, 72, 9.2, 662.4, 148)
GO

--PEDIDOS
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100200, 1, 4, 1, N'FA-0000123', CAST(N'2023-01-03' AS Date), CAST(N'10:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100201, 9, 2, 1, N'BO-0000578', CAST(N'2023-01-04' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100202, 2, 1, 2, N'FA-0000124', CAST(N'2023-01-04' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100203, 3, 2, 3, N'BO-0000579', CAST(N'2023-01-11' AS Date), CAST(N'13:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100204, 4, 3, 3, N'FA-0000125', CAST(N'2023-01-29' AS Date), CAST(N'14:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100205, 5, 4, 3, N'BO-0000580', CAST(N'2023-01-29' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100206, 6, 5, 2, N'FA-0000126', CAST(N'2023-01-30' AS Date), CAST(N'16:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100207, 7, 3, 1, N'BO-0000581', CAST(N'2023-01-30' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100208, 3, 3, 1, N'FA-0000127', CAST(N'2023-01-30' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100209, 4, 4, 1, N'BO-0000582', CAST(N'2023-01-30' AS Date), CAST(N'19:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100210, 1, 6, 3, N'BO-0000584', CAST(N'2023-01-31' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100211, 2, 6, 3, N'BO-0000585', CAST(N'2023-02-01' AS Date), CAST(N'21:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100212, 3, 6, 3, N'BO-0000586', CAST(N'2023-02-01' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100213, 4, 5, 3, N'FA-0000128', CAST(N'2023-02-01' AS Date), CAST(N'23:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100214, 5, 5, 3, N'FA-0000129', CAST(N'2023-02-03' AS Date), CAST(N'00:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100215, 6, 5, 3, N'BO-0000587', CAST(N'2023-02-03' AS Date), CAST(N'01:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100216, 7, 1, 1, N'BO-0000588', CAST(N'2023-02-03' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100217, 8, 5, 3, N'BO-0000589', CAST(N'2023-02-13' AS Date), CAST(N'03:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100218, 9, 4, 2, N'BO-0000590', CAST(N'2023-02-20' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100219, 10, 5, 3, N'BO-0000591', CAST(N'2023-02-22' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100220, 11, 1, 1, N'BO-0000592', CAST(N'2023-02-22' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100221, 12, 6, 3, N'BO-0000593', CAST(N'2023-02-28' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100222, 13, 3, 2, N'FA-0000130', CAST(N'2023-02-28' AS Date), CAST(N'08:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100223, 14, 4, 2, N'FA-0000131', CAST(N'2023-02-28' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100224, 15, 5, 3, N'BO-0000594', CAST(N'2023-03-07' AS Date), CAST(N'10:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100225, 16, 2, 1, N'BO-0000595', CAST(N'2023-03-07' AS Date), CAST(N'11:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100226, 17, 1, 1, N'BO-0000596', CAST(N'2023-03-07' AS Date), CAST(N'12:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100227, 18, 1, 1, N'BO-0000597', CAST(N'2023-03-07' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100228, 19, 1, 1, N'BO-0000598', CAST(N'2023-03-15' AS Date), CAST(N'14:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100229, 20, 2, 1, N'BO-0000599', CAST(N'2023-03-15' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100230, 21, 3, 2, N'BO-0000600', CAST(N'2023-03-16' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100231, 22, 4, 2, N'FA-0000132', CAST(N'2023-03-28' AS Date), CAST(N'17:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100232, 23, 5, 3, N'FA-0000133', CAST(N'2023-03-30' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100233, 24, 6, 3, N'FA-0000134', CAST(N'2023-04-03' AS Date), CAST(N'19:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100234, 25, 6, 3, N'BO-0000601', CAST(N'2023-04-04' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100235, 26, 6, 3, N'BO-0000602', CAST(N'2023-04-04' AS Date), CAST(N'21:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100236, 27, 6, 3, N'BO-0000603', CAST(N'2023-04-13' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100237, 28, 5, 3, N'BO-0000604', CAST(N'2023-04-13' AS Date), CAST(N'23:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100238, 29, 5, 3, N'BO-0000605', CAST(N'2023-04-13' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100239, 30, 5, 3, N'BO-0000606', CAST(N'2023-04-13' AS Date), CAST(N'01:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100240, 31, 4, 2, N'FA-0000135', CAST(N'2023-04-27' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100241, 32, 4, 2, N'FA-0000136', CAST(N'2023-04-27' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100242, 33, 4, 2, N'FA-0000137', CAST(N'2023-05-02' AS Date), CAST(N'04:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100243, 34, 2, 1, N'BO-0000607', CAST(N'2023-05-02' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100244, 35, 2, 1, N'BO-0000608', CAST(N'2023-05-03' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100245, 36, 5, 3, N'BO-0000609', CAST(N'2023-05-03' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100246, 37, 5, 3, N'BO-0000610', CAST(N'2023-05-25' AS Date), CAST(N'08:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100247, 38, 6, 3, N'BO-0000611', CAST(N'2023-05-25' AS Date), CAST(N'09:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100248, 39, 2, 1, N'BO-0000612', CAST(N'2023-05-25' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100249, 40, 2, 1, N'BO-0000613', CAST(N'2023-05-29' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100250, 41, 1, 1, N'FA-0000138', CAST(N'2023-05-29' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100251, 42, 1, 1, N'FA-0000139', CAST(N'2023-05-31' AS Date), CAST(N'13:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100252, 43, 1, 1, N'FA-0000140', CAST(N'2023-05-31' AS Date), CAST(N'14:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100253, 44, 1, 1, N'BO-0000614', CAST(N'2023-05-31' AS Date), CAST(N'15:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100254, 45, 2, 1, N'BO-0000615', CAST(N'2023-05-31' AS Date), CAST(N'16:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100255, 46, 2, 1, N'BO-0000616', CAST(N'2023-06-01' AS Date), CAST(N'17:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100256, 47, 2, 1, N'FA-0000141', CAST(N'2023-06-05' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100257, 48, 2, 1, N'FA-0000142', CAST(N'2023-06-08' AS Date), CAST(N'19:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100258, 49, 3, 2, N'FA-0000143', CAST(N'2023-06-08' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100259, 50, 3, 2, N'BO-0000617', CAST(N'2023-06-09' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100260, 51, 3, 2, N'BO-0000618', CAST(N'2023-06-09' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100261, 52, 4, 2, N'BO-0000619', CAST(N'2023-06-23' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100262, 53, 5, 3, N'BO-0000620', CAST(N'2023-06-23' AS Date), CAST(N'00:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100263, 54, 4, 2, N'BO-0000621', CAST(N'2023-06-28' AS Date), CAST(N'01:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100264, 55, 6, 3, N'BO-0000622', CAST(N'2023-07-03' AS Date), CAST(N'02:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100265, 56, 5, 3, N'BO-0000623', CAST(N'2023-07-03' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100266, 57, 4, 2, N'BO-0000624', CAST(N'2023-07-03' AS Date), CAST(N'04:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100267, 58, 3, 2, N'BO-0000625', CAST(N'2023-07-07' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100268, 59, 2, 1, N'BO-0000626', CAST(N'2023-07-18' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100269, 60, 2, 1, N'FA-0000144', CAST(N'2023-07-18' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100270, 61, 3, 2, N'FA-0000145', CAST(N'2023-07-19' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100271, 62, 3, 2, N'FA-0000146', CAST(N'2023-07-21' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100272, 63, 3, 2, N'BO-0000627', CAST(N'2023-07-21' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100273, 64, 3, 2, N'BO-0000628', CAST(N'2023-07-24' AS Date), CAST(N'11:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100274, 65, 4, 2, N'BO-0000629', CAST(N'2023-07-25' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100275, 66, 4, 2, N'BO-0000630', CAST(N'2023-07-31' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100276, 67, 4, 2, N'BO-0000631', CAST(N'2023-07-31' AS Date), CAST(N'14:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100277, 68, 4, 2, N'BO-0000632', CAST(N'2023-08-01' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100278, 69, 5, 3, N'BO-0000633', CAST(N'2023-08-01' AS Date), CAST(N'16:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100279, 70, 5, 3, N'BO-0000634', CAST(N'2023-08-01' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100280, 71, 5, 3, N'BO-0000635', CAST(N'2023-08-01' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100281, 72, 6, 3, N'FA-0000147', CAST(N'2023-08-01' AS Date), CAST(N'19:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100282, 73, 6, 3, N'FA-0000148', CAST(N'2023-08-07' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100283, 74, 6, 3, N'FA-0000149', CAST(N'2023-08-07' AS Date), CAST(N'21:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100284, 75, 6, 3, N'BO-0000636', CAST(N'2023-08-15' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100285, 76, 4, 2, N'BO-0000637', CAST(N'2023-08-16' AS Date), CAST(N'23:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100286, 77, 2, 1, N'BO-0000638', CAST(N'2023-08-23' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100287, 78, 1, 1, N'BO-0000639', CAST(N'2023-09-07' AS Date), CAST(N'01:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100288, 79, 2, 1, N'BO-0000640', CAST(N'2023-09-07' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100289, 80, 3, 2, N'BO-0000641', CAST(N'2023-09-07' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100290, 81, 4, 2, N'BO-0000642', CAST(N'2023-09-26' AS Date), CAST(N'04:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100291, 82, 5, 3, N'BO-0000643', CAST(N'2023-09-27' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100292, 83, 3, 2, N'BO-0000644', CAST(N'2023-09-27' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100293, 84, 3, 2, N'BO-0000645', CAST(N'2023-10-02' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100294, 85, 4, 2, N'FA-0000150', CAST(N'2023-10-02' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100295, 86, 6, 3, N'FA-0000151', CAST(N'2023-10-02' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100296, 87, 6, 3, N'FA-0000152', CAST(N'2023-10-27' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100297, 88, 6, 3, N'BO-0000646', CAST(N'2023-10-27' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100298, 89, 5, 3, N'BO-0000647', CAST(N'2023-10-27' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100299, 90, 5, 3, N'BO-0000648', CAST(N'2023-11-03' AS Date), CAST(N'13:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100300, 91, 5, 3, N'BO-0000649', CAST(N'2023-11-07' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100301, 92, 1, 1, N'BO-0000650', CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100302, 93, 5, 3, N'BO-0000651', CAST(N'2023-11-08' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100303, 94, 4, 2, N'BO-0000652', CAST(N'2023-11-23' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100304, 95, 5, 3, N'BO-0000653', CAST(N'2023-11-23' AS Date), CAST(N'18:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100305, 96, 1, 1, N'BO-0000654', CAST(N'2023-11-24' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100306, 97, 6, 3, N'BO-0000655', CAST(N'2023-11-30' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100307, 98, 3, 2, N'BO-0000656', CAST(N'2023-12-01' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100308, 99, 4, 2, N'BO-0000657', CAST(N'2023-12-01' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100309, 100, 5, 3, N'BO-0000658', CAST(N'2023-12-01' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100310, 101, 2, 1, N'FA-0000153', CAST(N'2023-12-01' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100311, 102, 1, 1, N'BO-0000659', CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100312, 103, 1, 1, N'BO-0000660', CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100313, 104, 1, 1, N'BO-0000661', CAST(N'2023-12-05' AS Date), CAST(N'03:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100314, 105, 2, 1, N'BO-0000662', CAST(N'2023-12-05' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100315, 106, 3, 2, N'BO-0000663', CAST(N'2023-12-06' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100316, 107, 4, 2, N'BO-0000664', CAST(N'2023-12-06' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100317, 108, 5, 3, N'BO-0000665', CAST(N'2023-12-12' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100318, 109, 6, 3, N'FA-0000154', CAST(N'2023-12-13' AS Date), CAST(N'08:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100319, 110, 6, 3, N'FA-0000155', CAST(N'2023-12-13' AS Date), CAST(N'09:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100320, 111, 6, 3, N'FA-0000156', CAST(N'2023-12-13' AS Date), CAST(N'10:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100321, 112, 6, 3, N'BO-0000666', CAST(N'2023-12-13' AS Date), CAST(N'11:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100322, 113, 5, 3, N'BO-0000667', CAST(N'2023-12-20' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100323, 114, 5, 3, N'BO-0000668', CAST(N'2023-12-20' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100324, 115, 5, 3, N'BO-0000669', CAST(N'2023-12-20' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100325, 116, 4, 2, N'BO-0000670', CAST(N'2023-12-20' AS Date), CAST(N'15:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100326, 117, 4, 2, N'BO-0000671', CAST(N'2023-12-29' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100327, 118, 4, 2, N'BO-0000672', CAST(N'2023-12-29' AS Date), CAST(N'17:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100328, 119, 2, 1, N'BO-0000673', CAST(N'2023-12-29' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100329, 120, 2, 1, N'FA-0000157', CAST(N'2023-12-29' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100330, 121, 5, 3, N'FA-0000158', CAST(N'2023-12-29' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100331, 122, 5, 3, N'BO-0000674', CAST(N'2023-12-30' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100332, 123, 6, 3, N'BO-0000675', CAST(N'2024-01-04' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100333, 124, 2, 1, N'BO-0000676', CAST(N'2024-01-04' AS Date), CAST(N'23:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100334, 125, 2, 1, N'BO-0000677', CAST(N'2024-01-05' AS Date), CAST(N'00:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100335, 126, 1, 1, N'BO-0000678', CAST(N'2024-01-11' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100336, 127, 1, 1, N'BO-0000679', CAST(N'2024-01-11' AS Date), CAST(N'02:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100337, 128, 1, 1, N'BO-0000680', CAST(N'2024-01-11' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100338, 129, 1, 1, N'FA-0000159', CAST(N'2024-01-12' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100339, 130, 2, 1, N'FA-0000160', CAST(N'2024-01-12' AS Date), CAST(N'05:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100340, 1, 2, 1, N'BO-0000681', CAST(N'2024-01-12' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100341, 2, 2, 1, N'BO-0000682', CAST(N'2024-01-12' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100342, 3, 2, 1, N'BO-0000683', CAST(N'2024-01-12' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100343, 4, 3, 2, N'FA-0000161', CAST(N'2024-01-12' AS Date), CAST(N'11:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100344, 5, 3, 2, N'FA-0000162', CAST(N'2024-01-12' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100345, 6, 3, 2, N'BO-0000684', CAST(N'2024-01-12' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100346, 7, 4, 2, N'BO-0000685', CAST(N'2024-01-12' AS Date), CAST(N'14:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100347, 8, 5, 3, N'BO-0000686', CAST(N'2024-01-12' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100348, 9, 4, 2, N'BO-0000687', CAST(N'2024-01-12' AS Date), CAST(N'16:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100349, 10, 6, 3, N'BO-0000688', CAST(N'2024-01-17' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100350, 11, 5, 3, N'BO-0000689', CAST(N'2024-01-17' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100351, 12, 4, 2, N'BO-0000690', CAST(N'2024-01-17' AS Date), CAST(N'19:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100352, 13, 3, 2, N'FA-0000163', CAST(N'2024-01-17' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100353, 14, 2, 1, N'FA-0000164', CAST(N'2024-01-17' AS Date), CAST(N'21:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100354, 15, 2, 1, N'BO-0000691', CAST(N'2024-01-17' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100355, 16, 3, 2, N'BO-0000692', CAST(N'2024-01-17' AS Date), CAST(N'23:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100356, 17, 3, 2, N'BO-0000693', CAST(N'2024-01-17' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100357, 18, 3, 2, N'BO-0000694', CAST(N'2024-01-17' AS Date), CAST(N'01:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100358, 19, 3, 2, N'BO-0000695', CAST(N'2024-01-17' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100359, 20, 4, 2, N'BO-0000696', CAST(N'2024-01-17' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100360, 21, 4, 2, N'BO-0000697', CAST(N'2024-01-17' AS Date), CAST(N'04:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100361, 22, 4, 2, N'FA-0000165', CAST(N'2024-01-17' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100362, 23, 4, 2, N'FA-0000166', CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100363, 24, 5, 3, N'FA-0000167', CAST(N'2024-01-18' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100364, 25, 5, 3, N'BO-0000698', CAST(N'2024-01-19' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100365, 26, 5, 3, N'BO-0000699', CAST(N'2024-01-19' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100366, 27, 6, 3, N'BO-0000700', CAST(N'2024-01-19' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100367, 28, 6, 3, N'BO-0000701', CAST(N'2024-01-19' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100368, 29, 6, 3, N'BO-0000702', CAST(N'2024-01-22' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100369, 30, 6, 3, N'BO-0000703', CAST(N'2024-01-22' AS Date), CAST(N'13:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100370, 31, 4, 2, N'FA-0000168', CAST(N'2024-01-22' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100371, 32, 2, 1, N'FA-0000169', CAST(N'2024-01-23' AS Date), CAST(N'15:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100372, 33, 1, 1, N'FA-0000170', CAST(N'2024-01-23' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100373, 34, 2, 1, N'BO-0000704', CAST(N'2024-01-24' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100374, 35, 3, 2, N'BO-0000705', CAST(N'2024-01-24' AS Date), CAST(N'18:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100375, 36, 4, 2, N'BO-0000706', CAST(N'2024-01-25' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100376, 37, 5, 3, N'BO-0000707', CAST(N'2024-01-25' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100377, 38, 3, 2, N'BO-0000708', CAST(N'2024-01-25' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100378, 39, 3, 2, N'BO-0000709', CAST(N'2024-01-26' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100379, 40, 4, 2, N'BO-0000710', CAST(N'2024-01-26' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100380, 41, 6, 3, N'FA-0000171', CAST(N'2024-01-28' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100381, 42, 6, 3, N'FA-0000172', CAST(N'2024-01-29' AS Date), CAST(N'01:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100382, 43, 6, 3, N'FA-0000173', CAST(N'2024-01-30' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100383, 44, 5, 3, N'BO-0000711', CAST(N'2024-01-30' AS Date), CAST(N'03:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100384, 45, 5, 3, N'BO-0000712', CAST(N'2024-01-30' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100385, 46, 5, 3, N'BO-0000713', CAST(N'2024-01-30' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100386, 47, 1, 1, N'FA-0000174', CAST(N'2024-01-30' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100387, 48, 5, 3, N'FA-0000175', CAST(N'2024-01-30' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100388, 49, 4, 2, N'FA-0000176', CAST(N'2024-01-31' AS Date), CAST(N'08:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100389, 50, 5, 3, N'BO-0000714', CAST(N'2024-01-31' AS Date), CAST(N'09:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100390, 51, 1, 1, N'BO-0000715', CAST(N'2024-01-31' AS Date), CAST(N'10:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100391, 52, 6, 3, N'BO-0000716', CAST(N'2024-02-01' AS Date), CAST(N'11:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100392, 53, 3, 2, N'BO-0000717', CAST(N'2024-02-05' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100393, 54, 4, 2, N'BO-0000718', CAST(N'2024-02-05' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100394, 55, 5, 3, N'BO-0000719', CAST(N'2024-02-06' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100395, 56, 2, 1, N'BO-0000720', CAST(N'2024-02-06' AS Date), CAST(N'15:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100396, 57, 1, 1, N'BO-0000721', CAST(N'2024-02-08' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100397, 58, 1, 1, N'BO-0000722', CAST(N'2024-02-21' AS Date), CAST(N'17:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100398, 59, 1, 1, N'BO-0000723', CAST(N'2024-02-21' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100399, 60, 2, 1, N'FA-0000177', CAST(N'2024-02-22' AS Date), CAST(N'19:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100400, 61, 3, 2, N'FA-0000178', CAST(N'2024-02-22' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100401, 62, 4, 2, N'FA-0000179', CAST(N'2024-02-22' AS Date), CAST(N'21:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100402, 63, 5, 3, N'BO-0000724', CAST(N'2024-02-23' AS Date), CAST(N'22:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100403, 64, 6, 3, N'BO-0000725', CAST(N'2024-02-26' AS Date), CAST(N'23:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100404, 65, 6, 3, N'BO-0000726', CAST(N'2024-02-26' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100405, 66, 6, 3, N'BO-0000727', CAST(N'2024-02-28' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100406, 67, 6, 3, N'BO-0000728', CAST(N'2024-02-29' AS Date), CAST(N'02:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100407, 68, 5, 3, N'BO-0000729', CAST(N'2024-03-04' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100408, 69, 5, 3, N'BO-0000730', CAST(N'2024-03-04' AS Date), CAST(N'04:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100409, 70, 5, 3, N'BO-0000731', CAST(N'2024-03-05' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100410, 71, 4, 2, N'BO-0000732', CAST(N'2024-03-07' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100411, 72, 4, 2, N'FA-0000180', CAST(N'2024-03-07' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100412, 73, 4, 2, N'FA-0000181', CAST(N'2024-03-07' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100413, 74, 2, 1, N'FA-0000182', CAST(N'2024-03-07' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100414, 75, 2, 1, N'BO-0000733', CAST(N'2024-03-07' AS Date), CAST(N'10:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100415, 76, 5, 3, N'BO-0000734', CAST(N'2024-03-07' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100416, 77, 5, 3, N'BO-0000735', CAST(N'2024-03-13' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100417, 78, 6, 3, N'BO-0000736', CAST(N'2024-03-13' AS Date), CAST(N'13:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100418, 79, 2, 1, N'BO-0000737', CAST(N'2024-03-14' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100419, 80, 2, 1, N'BO-0000738', CAST(N'2024-03-14' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100420, 81, 1, 1, N'BO-0000739', CAST(N'2024-03-14' AS Date), CAST(N'16:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100421, 82, 1, 1, N'BO-0000740', CAST(N'2024-03-14' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100422, 83, 1, 1, N'BO-0000741', CAST(N'2024-03-14' AS Date), CAST(N'18:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100423, 84, 1, 1, N'BO-0000742', CAST(N'2024-03-14' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100424, 85, 2, 1, N'FA-0000183', CAST(N'2024-03-15' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100425, 86, 2, 1, N'FA-0000184', CAST(N'2024-03-15' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100426, 87, 2, 1, N'FA-0000185', CAST(N'2024-03-15' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100427, 88, 2, 1, N'BO-0000743', CAST(N'2024-03-15' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100428, 89, 3, 2, N'BO-0000744', CAST(N'2024-03-15' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100429, 90, 3, 2, N'BO-0000745', CAST(N'2024-03-15' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100430, 91, 3, 2, N'BO-0000746', CAST(N'2024-03-15' AS Date), CAST(N'02:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100431, 92, 4, 2, N'BO-0000747', CAST(N'2024-03-15' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100432, 93, 5, 3, N'BO-0000748', CAST(N'2024-03-20' AS Date), CAST(N'04:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100433, 94, 4, 2, N'BO-0000749', CAST(N'2024-03-20' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100434, 95, 6, 3, N'BO-0000750', CAST(N'2024-03-21' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100435, 96, 5, 3, N'BO-0000751', CAST(N'2024-03-21' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100436, 97, 4, 2, N'BO-0000752', CAST(N'2024-03-21' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100437, 98, 3, 2, N'BO-0000753', CAST(N'2024-03-21' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100438, 99, 2, 1, N'BO-0000754', CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100439, 100, 2, 1, N'BO-0000755', CAST(N'2024-03-22' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100440, 101, 3, 2, N'FA-0000186', CAST(N'2024-03-22' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100441, 102, 3, 2, N'BO-0000756', CAST(N'2024-03-22' AS Date), CAST(N'13:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100442, 103, 3, 2, N'BO-0000757', CAST(N'2024-03-28' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100443, 104, 3, 2, N'BO-0000758', CAST(N'2024-03-31' AS Date), CAST(N'15:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100444, 105, 4, 2, N'BO-0000759', CAST(N'2024-04-01' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100445, 106, 4, 2, N'BO-0000760', CAST(N'2024-04-01' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100446, 107, 4, 2, N'BO-0000761', CAST(N'2024-04-01' AS Date), CAST(N'18:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100447, 108, 4, 2, N'BO-0000762', CAST(N'2024-04-02' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100448, 109, 5, 3, N'FA-0000187', CAST(N'2024-04-02' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100449, 110, 5, 3, N'FA-0000188', CAST(N'2024-04-02' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100450, 111, 5, 3, N'FA-0000189', CAST(N'2024-04-02' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100451, 112, 6, 3, N'BO-0000763', CAST(N'2024-04-02' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100452, 113, 6, 3, N'BO-0000764', CAST(N'2024-04-02' AS Date), CAST(N'00:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100453, 114, 6, 3, N'BO-0000765', CAST(N'2024-04-02' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100454, 115, 6, 3, N'BO-0000766', CAST(N'2024-04-02' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100455, 116, 4, 2, N'BO-0000767', CAST(N'2024-04-03' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100456, 117, 2, 1, N'BO-0000768', CAST(N'2024-04-04' AS Date), CAST(N'04:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100457, 118, 1, 1, N'BO-0000769', CAST(N'2024-04-04' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100458, 119, 2, 1, N'BO-0000770', CAST(N'2024-04-04' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100459, 120, 3, 2, N'FA-0000190', CAST(N'2024-04-04' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100460, 121, 4, 2, N'FA-0000191', CAST(N'2024-04-05' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100461, 122, 5, 3, N'BO-0000771', CAST(N'2024-04-05' AS Date), CAST(N'09:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100462, 123, 3, 2, N'BO-0000772', CAST(N'2024-04-05' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100463, 124, 3, 2, N'BO-0000773', CAST(N'2024-04-05' AS Date), CAST(N'11:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100464, 125, 4, 2, N'BO-0000774', CAST(N'2024-04-09' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100465, 126, 6, 3, N'BO-0000775', CAST(N'2024-04-09' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100466, 127, 6, 3, N'BO-0000776', CAST(N'2024-04-09' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100467, 128, 6, 3, N'BO-0000777', CAST(N'2024-04-10' AS Date), CAST(N'15:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100468, 129, 5, 3, N'FA-0000192', CAST(N'2024-04-10' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100469, 130, 5, 3, N'FA-0000193', CAST(N'2024-04-10' AS Date), CAST(N'17:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100470, 83, 5, 3, N'BO-0000778', CAST(N'2024-04-10' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100471, 84, 1, 1, N'BO-0000779', CAST(N'2024-04-10' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100472, 85, 5, 3, N'FA-0000194', CAST(N'2024-04-10' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100473, 86, 4, 2, N'FA-0000195', CAST(N'2024-04-10' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100474, 87, 5, 3, N'FA-0000196', CAST(N'2024-04-10' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100475, 88, 1, 1, N'BO-0000780', CAST(N'2024-04-11' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100476, 89, 6, 3, N'BO-0000781', CAST(N'2024-04-16' AS Date), CAST(N'00:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100477, 90, 3, 2, N'BO-0000782', CAST(N'2024-04-16' AS Date), CAST(N'01:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100478, 91, 4, 2, N'BO-0000783', CAST(N'2024-04-17' AS Date), CAST(N'02:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100479, 92, 5, 3, N'BO-0000784', CAST(N'2024-04-17' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100480, 93, 2, 1, N'BO-0000785', CAST(N'2024-04-17' AS Date), CAST(N'04:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100481, 94, 1, 1, N'BO-0000786', CAST(N'2024-04-17' AS Date), CAST(N'05:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100482, 95, 1, 1, N'BO-0000787', CAST(N'2024-04-18' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100483, 96, 1, 1, N'BO-0000788', CAST(N'2024-04-18' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100484, 97, 2, 1, N'BO-0000789', CAST(N'2024-04-18' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100485, 98, 3, 2, N'BO-0000790', CAST(N'2024-04-22' AS Date), CAST(N'11:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100486, 99, 4, 2, N'BO-0000791', CAST(N'2024-04-22' AS Date), CAST(N'12:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100487, 100, 5, 3, N'BO-0000792', CAST(N'2024-04-23' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100488, 101, 6, 3, N'FA-0000197', CAST(N'2024-04-23' AS Date), CAST(N'14:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100489, 102, 6, 3, N'BO-0000793', CAST(N'2024-04-24' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100490, 103, 6, 3, N'BO-0000794', CAST(N'2024-04-24' AS Date), CAST(N'16:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100491, 104, 6, 3, N'BO-0000795', CAST(N'2024-04-24' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100492, 105, 5, 3, N'BO-0000796', CAST(N'2024-04-24' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100493, 106, 5, 3, N'BO-0000797', CAST(N'2024-04-24' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100494, 107, 5, 3, N'BO-0000798', CAST(N'2024-04-24' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100495, 108, 4, 2, N'BO-0000799', CAST(N'2024-04-24' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100496, 109, 4, 2, N'FA-0000198', CAST(N'2024-04-24' AS Date), CAST(N'22:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100497, 110, 4, 2, N'FA-0000199', CAST(N'2024-04-24' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100498, 111, 2, 1, N'FA-0000200', CAST(N'2024-05-02' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100499, 112, 2, 1, N'BO-0000800', CAST(N'2024-05-02' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100500, 113, 5, 3, N'BO-0000801', CAST(N'2024-05-02' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100501, 114, 5, 3, N'BO-0000802', CAST(N'2024-05-02' AS Date), CAST(N'03:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100502, 115, 6, 3, N'BO-0000803', CAST(N'2024-05-02' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100503, 116, 2, 1, N'BO-0000804', CAST(N'2024-05-02' AS Date), CAST(N'05:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100504, 117, 2, 1, N'BO-0000805', CAST(N'2024-05-02' AS Date), CAST(N'06:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100505, 118, 1, 1, N'BO-0000806', CAST(N'2024-05-02' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100506, 119, 1, 1, N'BO-0000807', CAST(N'2024-05-02' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100507, 120, 1, 1, N'FA-0000201', CAST(N'2024-05-02' AS Date), CAST(N'09:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100508, 121, 1, 1, N'FA-0000202', CAST(N'2024-05-03' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100509, 122, 2, 1, N'BO-0000808', CAST(N'2024-05-03' AS Date), CAST(N'11:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100510, 123, 2, 1, N'BO-0000809', CAST(N'2024-05-03' AS Date), CAST(N'12:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100511, 124, 2, 1, N'BO-0000810', CAST(N'2024-05-03' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100512, 125, 2, 1, N'BO-0000811', CAST(N'2024-05-03' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100513, 126, 3, 2, N'BO-0000812', CAST(N'2024-05-03' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100514, 127, 3, 2, N'BO-0000813', CAST(N'2024-05-07' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100515, 128, 3, 2, N'BO-0000814', CAST(N'2024-05-07' AS Date), CAST(N'17:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100516, 129, 4, 2, N'FA-0000203', CAST(N'2024-05-07' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100517, 130, 5, 3, N'FA-0000204', CAST(N'2024-05-07' AS Date), CAST(N'19:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100518, 5, 4, 2, N'FA-0000205', CAST(N'2024-05-08' AS Date), CAST(N'20:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100519, 6, 6, 3, N'BO-0000815', CAST(N'2024-05-08' AS Date), CAST(N'21:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100520, 7, 5, 3, N'BO-0000816', CAST(N'2024-05-08' AS Date), CAST(N'22:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100521, 3, 4, 2, N'BO-0000817', CAST(N'2024-05-08' AS Date), CAST(N'23:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100522, 4, 3, 2, N'FA-0000206', CAST(N'2024-05-08' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100523, 1, 2, 1, N'BO-0000818', CAST(N'2024-05-08' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100524, 2, 2, 1, N'BO-0000819', CAST(N'2024-05-08' AS Date), CAST(N'02:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100525, 3, 3, 2, N'BO-0000820', CAST(N'2024-05-08' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100526, 4, 3, 2, N'FA-0000207', CAST(N'2024-05-08' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100527, 5, 3, 2, N'FA-0000208', CAST(N'2024-05-09' AS Date), CAST(N'05:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100528, 6, 3, 2, N'BO-0000821', CAST(N'2024-05-09' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100529, 7, 4, 2, N'BO-0000822', CAST(N'2024-05-09' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100530, 8, 4, 2, N'BO-0000823', CAST(N'2024-05-09' AS Date), CAST(N'08:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100531, 9, 4, 2, N'BO-0000824', CAST(N'2024-05-10' AS Date), CAST(N'09:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100532, 10, 4, 2, N'BO-0000825', CAST(N'2024-05-10' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100533, 11, 5, 3, N'BO-0000826', CAST(N'2024-05-10' AS Date), CAST(N'11:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100534, 12, 5, 3, N'BO-0000827', CAST(N'2024-05-10' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100535, 13, 5, 3, N'FA-0000209', CAST(N'2024-05-10' AS Date), CAST(N'13:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100536, 14, 6, 3, N'FA-0000210', CAST(N'2024-05-10' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100537, 15, 6, 3, N'BO-0000828', CAST(N'2024-05-13' AS Date), CAST(N'15:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100538, 16, 6, 3, N'BO-0000829', CAST(N'2024-05-13' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100539, 17, 6, 3, N'BO-0000830', CAST(N'2024-05-13' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100540, 18, 6, 3, N'BO-0000831', CAST(N'2024-05-13' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100541, 19, 2, 1, N'BO-0000832', CAST(N'2024-05-13' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100542, 121, 2, 1, N'FA-0000211', CAST(N'2024-05-13' AS Date), CAST(N'20:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100543, 122, 1, 1, N'BO-0000833', CAST(N'2024-05-16' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100544, 123, 1, 1, N'BO-0000834', CAST(N'2024-05-16' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100545, 124, 1, 1, N'BO-0000835', CAST(N'2024-05-16' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100546, 125, 1, 1, N'BO-0000836', CAST(N'2024-05-21' AS Date), CAST(N'00:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100547, 126, 2, 1, N'BO-0000837', CAST(N'2024-05-21' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100548, 127, 2, 1, N'BO-0000838', CAST(N'2024-05-21' AS Date), CAST(N'02:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100549, 128, 2, 1, N'BO-0000839', CAST(N'2024-05-21' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100550, 129, 2, 1, N'FA-0000212', CAST(N'2024-05-23' AS Date), CAST(N'04:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100551, 130, 3, 2, N'FA-0000213', CAST(N'2024-05-23' AS Date), CAST(N'05:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100552, 1, 3, 2, N'BO-0000840', CAST(N'2024-05-23' AS Date), CAST(N'06:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100553, 2, 3, 2, N'BO-0000841', CAST(N'2024-05-23' AS Date), CAST(N'07:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100554, 3, 4, 2, N'BO-0000842', CAST(N'2024-05-23' AS Date), CAST(N'08:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100555, 4, 5, 3, N'FA-0000214', CAST(N'2024-05-23' AS Date), CAST(N'09:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100556, 5, 4, 2, N'FA-0000215', CAST(N'2024-05-24' AS Date), CAST(N'10:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100557, 6, 6, 3, N'BO-0000843', CAST(N'2024-05-24' AS Date), CAST(N'11:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100558, 7, 5, 3, N'BO-0000844', CAST(N'2024-05-24' AS Date), CAST(N'12:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100559, 8, 4, 2, N'BO-0000845', CAST(N'2024-05-24' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100560, 9, 3, 2, N'BO-0000846', CAST(N'2024-05-24' AS Date), CAST(N'14:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100561, 10, 2, 1, N'BO-0000847', CAST(N'2024-05-24' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100562, 11, 2, 1, N'BO-0000848', CAST(N'2024-05-24' AS Date), CAST(N'16:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100563, 12, 3, 2, N'BO-0000849', CAST(N'2024-05-24' AS Date), CAST(N'17:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100564, 44, 3, 2, N'BO-0000850', CAST(N'2024-05-24' AS Date), CAST(N'18:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100565, 45, 3, 2, N'BO-0000851', CAST(N'2024-05-30' AS Date), CAST(N'19:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100566, 46, 3, 2, N'BO-0000852', CAST(N'2024-05-30' AS Date), CAST(N'20:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100567, 47, 4, 2, N'FA-0000216', CAST(N'2024-05-30' AS Date), CAST(N'21:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100568, 48, 4, 2, N'FA-0000217', CAST(N'2024-05-30' AS Date), CAST(N'22:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100569, 49, 4, 2, N'FA-0000218', CAST(N'2024-05-30' AS Date), CAST(N'23:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100570, 50, 4, 2, N'BO-0000853', CAST(N'2024-05-30' AS Date), CAST(N'00:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100571, 51, 5, 3, N'BO-0000854', CAST(N'2024-05-30' AS Date), CAST(N'01:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100572, 52, 5, 3, N'BO-0000855', CAST(N'2024-05-30' AS Date), CAST(N'02:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100573, 53, 5, 3, N'BO-0000856', CAST(N'2024-05-30' AS Date), CAST(N'03:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100574, 54, 6, 3, N'BO-0000857', CAST(N'2024-05-30' AS Date), CAST(N'04:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100575, 55, 6, 3, N'BO-0000858', CAST(N'2024-05-30' AS Date), CAST(N'05:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100576, 56, 6, 3, N'BO-0000859', CAST(N'2024-05-31' AS Date), CAST(N'06:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100577, 57, 6, 3, N'BO-0000860', CAST(N'2024-05-31' AS Date), CAST(N'07:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100578, 58, 6, 3, N'BO-0000861', CAST(N'2024-05-31' AS Date), CAST(N'08:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100579, 59, 5, 3, N'BO-0000862', CAST(N'2024-05-31' AS Date), CAST(N'09:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100580, 60, 4, 2, N'FA-0000219', CAST(N'2024-06-02' AS Date), CAST(N'10:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100581, 129, 3, 2, N'FA-0000220', CAST(N'2024-06-02' AS Date), CAST(N'11:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100582, 130, 2, 1, N'FA-0000221', CAST(N'2024-06-03' AS Date), CAST(N'12:31:00' AS Time), 3)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100583, 1, 2, 1, N'BO-0000863', CAST(N'2024-06-03' AS Date), CAST(N'13:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100584, 2, 3, 2, N'BO-0000864', CAST(N'2024-06-03' AS Date), CAST(N'14:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100585, 3, 3, 2, N'BO-0000865', CAST(N'2024-06-03' AS Date), CAST(N'15:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100586, 4, 3, 2, N'FA-0000222', CAST(N'2024-06-04' AS Date), CAST(N'16:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100587, 51, 6, 3, N'BO-0000866', CAST(N'2024-06-04' AS Date), CAST(N'17:31:00' AS Time), 1)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100588, 52, 6, 3, N'BO-0000867', CAST(N'2024-06-04' AS Date), CAST(N'18:31:00' AS Time), 2)
GO
INSERT pedidos (id_pedido, id_cliente, id_vendedor, id_sucursal, nro_documento, fecha_pedido, hora_pedido, id_forma_pago) VALUES (100589, 53, 2, 1, N'BO-0000868', CAST(N'2024-06-05' AS Date), CAST(N'19:31:00' AS Time), 1)
GO


--PEDIDOS DETALLE
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200500, 100200, 10, 24, 5.8, 139.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200501, 100200, 11, 6, 20, 120)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200502, 100201, 15, 10, 7.5, 75)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200503, 100201, 10, 12, 5.8, 69.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200504, 100201, 13, 10, 350, 3500)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200505, 100202, 10, 5, 5.8, 29)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200506, 100202, 11, 3, 20, 60)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200507, 100203, 12, 5, 18.5, 92.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200508, 100203, 13, 2, 350, 700)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200509, 100203, 14, 1, 12.5, 12.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200510, 100204, 15, 2, 7.5, 15)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200511, 100204, 16, 6, 19, 114)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200512, 100204, 17, 6, 380, 2280)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200513, 100204, 18, 4, 3.8, 15.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200514, 100205, 10, 8, 5.8, 46.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200515, 100205, 11, 11, 20, 220)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200516, 100205, 12, 9, 18.5, 166.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200517, 100206, 13, 8, 350, 2800)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200518, 100206, 14, 9, 12.5, 106.25)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200519, 100206, 16, 8, 19, 157.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200520, 100206, 17, 8, 380, 3078)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200521, 100206, 18, 8, 3.8, 30.02)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200522, 100207, 13, 8, 350, 2695)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200523, 100207, 14, 8, 12.5, 93.75)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200524, 100207, 15, 7, 7.5, 54.75)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200525, 100207, 16, 7, 19, 134.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200526, 100208, 18, 7, 3.8, 26.22)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200527, 100208, 19, 7, 15, 100.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200528, 100209, 11, 7, 20, 130)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200529, 100209, 12, 6, 18.5, 116.55)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200530, 100210, 33, 6, 28.9, 173.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200531, 100210, 34, 12, 25.8, 309.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200532, 100210, 35, 11, 26.8, 294.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200533, 100211, 26, 20, 4.7, 94)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200534, 100211, 27, 20, 4.6, 92)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200535, 100212, 38, 6, 11.9, 71.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200536, 100212, 39, 10, 12.2, 122)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200537, 100212, 40, 15, 12.8, 192)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200538, 100213, 14, 8, 12.5, 100)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200539, 100213, 15, 8, 7.5, 60)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200540, 100214, 43, 9, 10.5, 94.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200541, 100214, 44, 12, 10.4, 124.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200542, 100215, 45, 15, 10.5, 157.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200543, 100215, 46, 8, 10.6, 84.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200544, 100216, 47, 11, 16.2, 178.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200545, 100217, 48, 9, 18.6, 167.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200546, 100218, 49, 8, 16.2, 129.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200547, 100218, 55, 5, 39.9, 199.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200548, 100218, 56, 6, 38.6, 231.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200549, 100219, 57, 7, 36.3, 254.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200550, 100220, 58, 13, 6.5, 84.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200551, 100221, 59, 14, 5.3, 74.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200552, 100222, 60, 16, 5.4, 86.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200553, 100222, 61, 18, 5.2, 93.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200554, 100223, 62, 11, 6.7, 73.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200555, 100224, 17, 4, 380, 1520)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200556, 100224, 18, 18, 3.8, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200557, 100225, 38, 9, 11.9, 107.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200558, 100226, 180, 11, 3.2, 35.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200559, 100227, 181, 15, 4.5, 67.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200560, 100228, 182, 13, 5.5, 71.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200561, 100229, 183, 8, 6.2, 49.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200562, 100230, 184, 12, 7.3, 87.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200563, 100231, 185, 12, 10.2, 122.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200564, 100232, 186, 7, 5.2, 36.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200565, 100233, 187, 9, 4.2, 37.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200566, 100234, 180, 14, 3.2, 44.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200567, 100234, 59, 21, 5.3, 111.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200568, 100234, 200, 3, 99.9, 299.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200569, 100234, 201, 8, 30.9, 247.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200570, 100234, 12, 11, 18.5, 203.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200571, 100235, 169, 5, 22.1, 110.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200572, 100236, 170, 8, 16.2, 129.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200573, 100237, 171, 6, 12.1, 72.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200574, 100238, 180, 7, 3.2, 22.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200575, 100238, 16, 5, 19, 95)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200576, 100238, 11, 11, 20, 220)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200577, 100239, 182, 17, 5.5, 93.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200578, 100239, 60, 21, 5.4, 113.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200579, 100240, 14, 5, 12.5, 62.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200580, 100241, 60, 11, 5.4, 59.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200581, 100241, 34, 5, 25.8, 129)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200582, 100242, 185, 8, 10.2, 81.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200583, 100243, 56, 9, 38.6, 347.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200584, 100244, 35, 6, 26.8, 160.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200585, 100245, 202, 5, 89.9, 449.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200586, 100245, 203, 4, 92.9, 371.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200587, 100245, 204, 3, 79.9, 239.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200588, 100245, 12, 7, 18.5, 129.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200589, 100246, 169, 13, 22.1, 287.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200590, 100246, 18, 24, 3.8, 91.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200591, 100247, 10, 12, 5.8, 69.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200592, 100248, 187, 16, 4.2, 67.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200593, 100249, 180, 21, 3.2, 67.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200594, 100250, 208, 7, 42.9, 300.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200595, 100251, 209, 12, 39.9, 478.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200596, 100251, 15, 11, 7.5, 82.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200597, 100252, 16, 12, 19, 228)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200598, 100252, 17, 3, 380, 1140)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200599, 100253, 180, 14, 3.2, 44.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200600, 100253, 204, 5, 79.9, 399.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200601, 100254, 61, 12, 5.2, 62.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200602, 100254, 11, 12, 20, 240)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200603, 100255, 18, 18, 3.8, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200604, 100256, 35, 7, 26.8, 187.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200605, 100257, 200, 5, 99.9, 499.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200606, 100258, 55, 7, 39.9, 279.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200607, 100259, 11, 7, 20, 140)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200608, 100260, 202, 3, 89.9, 269.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200609, 100260, 19, 10, 15, 150)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200610, 100260, 11, 12, 20, 240)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200611, 100261, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200612, 100261, 12, 3, 18.5, 55.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200613, 100262, 33, 5, 28.9, 144.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200614, 100263, 208, 5, 42.9, 214.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200615, 100264, 15, 12, 7.5, 90)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200616, 100265, 16, 10, 19, 190)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200617, 100266, 185, 20, 10.2, 204)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200618, 100266, 190, 6, 99.9, 599.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200619, 100267, 191, 12, 30.9, 370.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200620, 100267, 192, 6, 89.9, 539.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200621, 100268, 193, 6, 92.9, 557.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200622, 100268, 194, 6, 79.9, 479.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200623, 100269, 14, 10, 12.5, 125)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200624, 100269, 15, 9, 7.5, 67.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200625, 100270, 16, 14, 19, 266)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200626, 100271, 208, 7, 42.9, 300.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200627, 100272, 19, 5, 15, 75)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200628, 100273, 180, 24, 3.2, 76.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200629, 100273, 209, 6, 39.9, 239.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200630, 100274, 204, 2, 79.9, 159.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200631, 100275, 18, 18, 3.8, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200632, 100275, 205, 6, 49.9, 299.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200633, 100276, 206, 12, 27.9, 334.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200634, 100277, 207, 6, 42.9, 257.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200635, 100278, 204, 6, 79.9, 479.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200636, 100279, 11, 12, 20, 240)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200637, 100280, 12, 9, 18.5, 166.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200638, 100281, 190, 6, 99.9, 599.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200639, 100281, 55, 9, 39.9, 359.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200640, 100281, 56, 5, 38.6, 193)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200641, 100281, 19, 7, 15, 105)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200642, 100282, 208, 12, 42.9, 514.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200643, 100283, 209, 6, 39.9, 239.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200644, 100284, 12, 12, 18.5, 222)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200645, 100285, 13, 3, 350, 1050)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200646, 100286, 208, 9, 42.9, 386.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200647, 100287, 200, 7, 99.9, 699.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200648, 100288, 18, 30, 3.8, 114)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200649, 100289, 182, 21, 5.5, 115.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200650, 100290, 185, 15, 10.2, 153)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200651, 100291, 14, 12, 12.5, 150)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200652, 100292, 190, 8, 99.9, 799.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200653, 100293, 60, 16, 5.4, 86.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200654, 100294, 35, 6, 26.8, 160.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200655, 100295, 180, 24, 3.2, 76.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200656, 100295, 18, 18, 3.8, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200657, 100295, 204, 3, 79.9, 239.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200658, 100296, 195, 6, 52.9, 317.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200659, 100297, 196, 6, 94.8, 568.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200660, 100298, 18, 18, 3.8, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200661, 100299, 15, 15, 7.5, 112.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200662, 100300, 35, 12, 26.8, 321.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200663, 100301, 202, 3, 89.9, 269.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200664, 100301, 35, 11, 26.8, 294.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200665, 100301, 205, 4, 49.9, 199.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200666, 100301, 12, 9, 18.5, 166.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200667, 100301, 200, 3, 99.9, 299.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200668, 100301, 204, 3, 79.9, 239.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200669, 100302, 55, 7, 39.9, 279.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200670, 100302, 40, 11, 12.8, 140.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200671, 100302, 15, 5, 7.5, 37.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200672, 100302, 202, 7, 89.9, 629.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200673, 100302, 208, 5, 42.9, 214.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200674, 100303, 19, 3, 15, 45)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200675, 100304, 16, 5, 19, 95)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200676, 100305, 17, 2, 380, 760)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200677, 100306, 180, 21, 3.2, 67.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200678, 100306, 182, 11, 5.5, 60.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200679, 100306, 185, 7, 10.2, 71.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200680, 100306, 15, 9, 7.5, 67.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200681, 100307, 208, 2, 42.9, 85.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200682, 100308, 190, 8, 99.9, 799.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200683, 100309, 16, 3, 19, 57)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200684, 100310, 18, 9, 3.8, 34.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200685, 100311, 195, 4, 52.9, 211.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200686, 100311, 196, 9, 94.8, 853.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200687, 100311, 180, 35, 3.2, 112)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200688, 100311, 207, 5, 42.9, 214.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200689, 100311, 18, 12, 3.8, 45.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200690, 100311, 13, 4, 350, 1400)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200691, 100312, 208, 2, 42.9, 85.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200692, 100312, 204, 5, 79.9, 399.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200693, 100312, 194, 3, 79.9, 239.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200694, 100312, 15, 9, 7.5, 67.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200695, 100312, 190, 4, 99.9, 399.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200696, 100312, 195, 6, 52.9, 317.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200697, 100313, 196, 6, 94.8, 568.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200698, 100314, 197, 6, 89.9, 539.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200699, 100314, 63, 5, 7.1, 35.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200700, 100314, 64, 8, 9.2, 73.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200701, 100314, 65, 9, 9.8, 88.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200702, 100315, 15, 3, 7.5, 22.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200703, 100315, 142, 7, 4.1, 28.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200704, 100315, 208, 3, 42.9, 128.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200705, 100315, 188, 12, 10.2, 122.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200706, 100316, 189, 12, 12.4, 148.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200707, 100316, 18, 18, 3.8, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200708, 100317, 197, 2, 89.9, 179.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200709, 100318, 198, 2, 88.9, 177.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200710, 100318, 199, 6, 30.9, 185.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200711, 100318, 202, 2, 89.9, 179.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200712, 100319, 11, 7, 20, 140)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200713, 100320, 15, 5, 7.5, 37.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200714, 100321, 18, 11, 3.8, 41.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200715, 100322, 195, 5, 52.9, 264.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200716, 100322, 196, 6, 94.8, 568.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200717, 100322, 16, 3, 19, 57)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200718, 100323, 185, 12, 10.2, 122.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200719, 100324, 180, 11, 3.2, 35.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200720, 100325, 35, 9, 26.8, 241.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200721, 100326, 193, 6, 4.6, 27.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200722, 100327, 194, 6, 4.7, 28.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200723, 100328, 195, 3, 52.9, 158.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200724, 100329, 196, 3, 94.8, 284.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200725, 100330, 189, 14, 12.4, 173.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200726, 100330, 165, 7, 23.3, 163.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200727, 100330, 166, 7, 12.3, 86.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200728, 100331, 167, 7, 18.8, 131.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200729, 100332, 168, 7, 14.6, 102.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200730, 100333, 18, 15, 3.8, 57)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200731, 100334, 195, 3, 52.9, 158.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200732, 100335, 208, 6, 42.9, 257.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200733, 100336, 190, 1, 99.9, 99.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200734, 100337, 166, 3, 12.3, 36.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200735, 100338, 65, 12, 9.8, 117.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200736, 100339, 11, 9, 20, 180)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200737, 100340, 177, 9, 4.5, 40.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200738, 100341, 172, 6, 8.3, 49.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200739, 100342, 173, 6, 8.9, 53.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200740, 100343, 174, 7, 7.5, 52.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200741, 100344, 175, 9, 10.2, 91.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200742, 100345, 176, 9, 8.2, 73.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200743, 100346, 177, 9, 4.5, 40.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200744, 100347, 178, 5, 10.3, 51.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200745, 100348, 179, 7, 6.6, 46.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200746, 100349, 15, 5, 7.5, 37.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200747, 100350, 189, 6, 12.4, 74.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200748, 100351, 195, 3, 52.9, 158.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200749, 100352, 204, 2, 79.9, 159.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200750, 100353, 196, 2, 94.8, 189.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200751, 100354, 208, 3, 42.9, 128.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200752, 100355, 19, 4, 15, 60)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200753, 100356, 174, 3, 7.5, 22.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200754, 100357, 177, 13, 4.5, 58.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200755, 100358, 179, 9, 6.6, 59.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200756, 100359, 196, 1, 94.8, 94.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200757, 100360, 189, 19, 12.4, 235.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200758, 100361, 10, 10, 5.8, 58)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200759, 100362, 11, 12, 20, 240)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200760, 100362, 185, 6, 10.2, 61.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200761, 100362, 172, 12, 8.3, 99.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200762, 100362, 208, 5, 42.9, 214.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200763, 100362, 202, 1, 89.9, 89.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200764, 100362, 177, 15, 4.5, 67.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200765, 100363, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200766, 100363, 173, 9, 8.9, 80.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200767, 100363, 189, 11, 12.4, 136.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200768, 100363, 140, 13, 3.8, 49.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200769, 100363, 141, 11, 3.5, 38.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200770, 100364, 142, 9, 4.1, 36.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200771, 100365, 143, 8, 3.9, 31.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200772, 100366, 144, 7, 4.2, 29.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200773, 100366, 145, 6, 4.5, 27)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200774, 100366, 146, 13, 3.2, 41.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200775, 100366, 147, 14, 5.2, 72.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200776, 100367, 148, 15, 7.2, 108)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200777, 100368, 149, 14, 6.4, 89.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200778, 100369, 150, 7, 35.2, 246.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200779, 100370, 142, 7, 4.1, 28.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200780, 100370, 208, 3, 42.9, 128.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200781, 100370, 177, 7, 4.5, 31.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200782, 100371, 140, 11, 3.8, 41.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200783, 100372, 150, 4, 35.2, 140.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200784, 100373, 189, 12, 12.4, 148.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200785, 100373, 166, 3, 12.3, 36.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200786, 100373, 185, 9, 10.2, 91.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200787, 100374, 14, 7, 12.5, 87.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200788, 100375, 204, 2, 79.9, 159.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200789, 100375, 148, 9, 7.2, 64.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200790, 100376, 141, 17, 3.5, 59.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200791, 100376, 176, 7, 8.2, 57.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200792, 100376, 149, 12, 6.4, 76.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200793, 100377, 35, 7, 26.8, 187.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200794, 100377, 205, 2, 49.9, 99.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200795, 100378, 147, 8, 5.2, 41.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200796, 100379, 150, 5, 35.2, 176)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200797, 100380, 14, 5, 12.5, 62.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200798, 100380, 16, 4, 19, 76)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200799, 100380, 146, 8, 3.2, 25.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200800, 100380, 147, 9, 5.2, 46.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200801, 100380, 151, 2, 32.1, 64.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200802, 100381, 152, 3, 40.1, 120.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200803, 100382, 153, 3, 40.2, 120.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200804, 100382, 154, 2, 34.2, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200805, 100382, 155, 4, 35.2, 140.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200806, 100383, 156, 3, 31.1, 93.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200807, 100383, 157, 3, 29.8, 89.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200808, 100384, 158, 4, 32.4, 129.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200809, 100385, 159, 3, 30.2, 90.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200810, 100385, 185, 11, 10.2, 112.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200811, 100385, 204, 3, 79.9, 239.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200812, 100385, 155, 5, 35.2, 176)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200813, 100385, 186, 7, 5.2, 36.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200814, 100386, 151, 3, 32.1, 96.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200815, 100386, 205, 3, 49.9, 149.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200816, 100386, 156, 3, 31.1, 93.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200817, 100387, 63, 12, 7.1, 85.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200818, 100387, 64, 6, 9.2, 55.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200819, 100388, 204, 2, 79.9, 159.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200820, 100388, 140, 7, 3.8, 26.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200821, 100388, 176, 12, 8.2, 98.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200822, 100389, 190, 3, 99.9, 299.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200823, 100389, 140, 9, 3.8, 34.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200824, 100390, 14, 5, 12.5, 62.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200825, 100390, 15, 5, 7.5, 37.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200826, 100390, 16, 7, 19, 133)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200827, 100390, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200828, 100391, 148, 7, 7.2, 50.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200829, 100392, 208, 3, 42.9, 128.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200830, 100393, 153, 6, 40.2, 241.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200831, 100394, 165, 3, 23.3, 69.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200832, 100395, 14, 9, 12.5, 112.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200833, 100396, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200834, 100397, 195, 1, 52.9, 52.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200835, 100398, 196, 2, 94.8, 189.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200836, 100399, 80, 12, 3.3, 39.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200837, 100400, 81, 6, 7.5, 45)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200838, 100401, 82, 12, 17.9, 214.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200839, 100402, 83, 6, 11.9, 71.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200840, 100403, 84, 12, 9.5, 114)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200841, 100404, 85, 6, 11.1, 66.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200842, 100405, 86, 6, 10.9, 65.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200843, 100406, 87, 12, 8.9, 106.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200844, 100407, 88, 12, 7.9, 94.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200845, 100408, 89, 12, 4.8, 57.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200846, 100409, 90, 12, 7.6, 91.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200847, 100410, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200848, 100411, 165, 5, 23.3, 116.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200849, 100411, 83, 9, 11.9, 107.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200850, 100411, 140, 9, 3.8, 34.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200851, 100411, 151, 2, 32.1, 64.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200852, 100412, 84, 7, 9.5, 66.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200853, 100413, 85, 9, 11.1, 99.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200854, 100414, 148, 9, 7.2, 64.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200855, 100415, 88, 7, 7.9, 55.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200856, 100416, 90, 8, 7.6, 60.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200857, 100417, 156, 4, 31.1, 124.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200858, 100418, 10, 14, 5.8, 81.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200859, 100419, 86, 4, 10.9, 43.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200860, 100419, 142, 7, 4.1, 28.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200861, 100419, 208, 7, 42.9, 300.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200862, 100419, 85, 11, 11.1, 122.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200863, 100419, 88, 15, 7.9, 118.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200864, 100420, 90, 16, 7.6, 121.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200865, 100420, 159, 5, 30.2, 151)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200866, 100420, 89, 15, 4.8, 72)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200867, 100421, 90, 13, 7.6, 98.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200868, 100422, 148, 11, 7.2, 79.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200869, 100423, 83, 9, 11.9, 107.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200870, 100423, 157, 7, 29.8, 208.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200871, 100423, 158, 7, 32.4, 226.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200872, 100424, 142, 19, 4.1, 77.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200873, 100425, 208, 3, 42.9, 128.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200874, 100425, 90, 6, 7.6, 45.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200875, 100425, 84, 5, 9.5, 47.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200876, 100426, 167, 4, 18.8, 75.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200877, 100426, 28, 9, 4.2, 37.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200878, 100427, 29, 11, 4.1, 45.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200879, 100428, 30, 6, 28.5, 171)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200880, 100428, 31, 7, 26.7, 186.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200881, 100428, 32, 8, 28.4, 227.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200882, 100428, 87, 6, 8.9, 53.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200883, 100429, 10, 11, 5.8, 63.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200884, 100430, 29, 15, 4.1, 61.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200885, 100431, 204, 2, 79.9, 159.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200886, 100431, 88, 11, 7.9, 86.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200887, 100431, 148, 7, 7.2, 50.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200888, 100432, 80, 15, 3.3, 49.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200889, 100432, 151, 3, 32.1, 96.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200890, 100433, 205, 3, 49.9, 149.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200891, 100434, 90, 6, 7.6, 45.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200892, 100435, 28, 13, 4.2, 54.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200893, 100436, 172, 9, 8.3, 74.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200894, 100437, 173, 4, 8.9, 35.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200895, 100438, 32, 6, 28.4, 170.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200896, 100438, 148, 9, 7.2, 64.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200897, 100438, 156, 7, 31.1, 217.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200898, 100438, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200899, 100438, 88, 9, 7.9, 71.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200900, 100438, 16, 12, 19, 228)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200901, 100439, 204, 2, 79.9, 159.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200902, 100439, 156, 5, 31.1, 155.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200903, 100439, 157, 5, 29.8, 149)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200904, 100439, 30, 4, 28.5, 114)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200905, 100440, 148, 11, 7.2, 79.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200906, 100440, 157, 5, 29.8, 149)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200907, 100440, 158, 5, 32.4, 162)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200908, 100441, 195, 1, 52.9, 52.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200909, 100441, 196, 1, 94.8, 94.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200910, 100441, 148, 8, 7.2, 57.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200911, 100441, 70, 7, 7.5, 52.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200912, 100442, 71, 7, 3.5, 24.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200913, 100443, 72, 7, 2.5, 17.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200914, 100444, 73, 9, 2.5, 22.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200915, 100445, 74, 11, 2.5, 27.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200916, 100446, 75, 6, 4.4, 26.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200917, 100447, 76, 6, 4.2, 25.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200918, 100448, 77, 6, 6.1, 36.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200919, 100449, 78, 6, 5.2, 31.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200920, 100450, 79, 6, 4.9, 29.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200921, 100451, 80, 6, 3.3, 19.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200922, 100452, 16, 5, 19, 95)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200923, 100453, 196, 3, 94.8, 284.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200924, 100454, 172, 4, 8.3, 33.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200925, 100455, 148, 11, 7.2, 79.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200926, 100456, 78, 8, 5.2, 41.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200927, 100457, 158, 4, 32.4, 129.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200928, 100458, 195, 3, 52.9, 158.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200929, 100459, 148, 9, 7.2, 64.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200930, 100460, 70, 11, 7.5, 82.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200931, 100461, 88, 7, 7.9, 55.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200932, 100462, 89, 8, 4.8, 38.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200933, 100463, 90, 9, 7.6, 68.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200934, 100464, 166, 7, 12.3, 86.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200935, 100465, 167, 6, 18.8, 112.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200936, 100466, 168, 2, 14.6, 29.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200937, 100467, 151, 3, 32.1, 96.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200938, 100468, 149, 9, 6.4, 57.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200939, 100469, 150, 6, 35.2, 211.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200940, 100470, 209, 3, 39.9, 119.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200941, 100471, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200942, 100472, 91, 7, 10.9, 76.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200943, 100473, 92, 8, 7.9, 63.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200944, 100474, 93, 9, 11.5, 103.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200945, 100475, 94, 14, 3.7, 51.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200946, 100476, 95, 15, 3.9, 58.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200947, 100477, 96, 16, 4.3, 68.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200948, 100478, 97, 17, 6.2, 105.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200949, 100479, 98, 18, 4.3, 77.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200950, 100480, 99, 7, 45.9, 321.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200951, 100481, 100, 15, 10.9, 163.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200952, 100482, 158, 4, 32.4, 129.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200953, 100483, 195, 2, 52.9, 105.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200954, 100484, 94, 12, 3.7, 44.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200955, 100485, 208, 3, 42.9, 128.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200956, 100486, 85, 9, 11.1, 99.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200957, 100487, 92, 5, 7.9, 39.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200958, 100488, 96, 19, 4.3, 81.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200959, 100489, 93, 5, 11.5, 57.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200960, 100490, 168, 4, 14.6, 58.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200961, 100491, 195, 3, 52.9, 158.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200962, 100492, 208, 4, 42.9, 171.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200963, 100493, 85, 13, 11.1, 144.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200964, 100494, 100, 12, 10.9, 130.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200965, 100495, 104, 6, 4.2, 25.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200966, 100496, 108, 9, 9.2, 82.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200967, 100497, 157, 9, 29.8, 268.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200968, 100498, 158, 9, 32.4, 291.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200969, 100499, 91, 3, 10.9, 32.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200970, 100500, 102, 16, 4.6, 73.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200971, 100501, 109, 11, 17.9, 196.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200972, 100502, 64, 5, 9.2, 46)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200973, 100503, 204, 1, 79.9, 79.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200974, 100504, 110, 5, 12.3, 61.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200975, 100505, 92, 12, 7.9, 94.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200976, 100506, 73, 7, 2.5, 17.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200977, 100507, 74, 13, 2.5, 32.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200978, 100508, 92, 5, 7.9, 39.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200979, 100509, 97, 13, 6.2, 80.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200980, 100510, 105, 12, 4.3, 51.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200981, 100511, 102, 3, 4.6, 13.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200982, 100512, 103, 7, 12.4, 86.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200983, 100513, 99, 4, 45.9, 183.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200984, 100514, 74, 17, 2.5, 42.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200985, 100515, 208, 4, 42.9, 171.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200986, 100516, 112, 7, 8.3, 58.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200987, 100517, 113, 9, 7.9, 71.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200988, 100518, 94, 17, 3.7, 62.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200989, 100519, 116, 9, 9.8, 88.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200990, 100520, 80, 17, 3.3, 56.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200991, 100521, 101, 11, 6.8, 74.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200992, 100522, 102, 6, 4.6, 27.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200993, 100523, 103, 8, 12.4, 99.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200994, 100524, 104, 9, 4.2, 37.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200995, 100525, 105, 15, 4.3, 64.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200996, 100526, 106, 19, 12.4, 235.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200997, 100527, 107, 15, 8.9, 133.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200998, 100528, 108, 8, 9.2, 73.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (200999, 100529, 109, 13, 17.9, 232.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201000, 100530, 110, 12, 12.3, 147.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201001, 100531, 120, 9, 9.8, 88.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201002, 100532, 92, 11, 7.9, 86.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201003, 100533, 140, 16, 3.8, 60.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201004, 100534, 114, 11, 10.5, 115.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201005, 100535, 115, 12, 10.2, 122.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201006, 100536, 100, 13, 10.9, 141.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201007, 100537, 94, 19, 3.7, 70.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201008, 100538, 121, 6, 10.2, 61.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201009, 100539, 122, 9, 6.5, 58.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201010, 100540, 92, 8, 7.9, 63.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201011, 100541, 120, 12, 9.8, 117.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201012, 100542, 109, 7, 17.9, 125.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201013, 100543, 110, 5, 12.3, 61.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201014, 100544, 118, 13, 13.1, 170.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201015, 100545, 119, 17, 10.4, 176.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201016, 100546, 106, 12, 12.4, 148.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201017, 100547, 115, 13, 10.2, 132.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201018, 100548, 106, 13, 12.4, 161.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201019, 100549, 107, 7, 8.9, 62.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201020, 100550, 118, 9, 13.1, 117.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201021, 100551, 154, 3, 34.2, 102.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201022, 100552, 155, 5, 35.2, 176)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201023, 100553, 73, 17, 2.5, 42.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201024, 100554, 205, 7, 49.9, 349.3)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201025, 100555, 111, 5, 15.4, 77)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201026, 100556, 112, 9, 8.3, 74.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201027, 100557, 113, 13, 7.9, 102.7)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201028, 100558, 114, 17, 10.5, 178.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201029, 100559, 115, 15, 10.2, 153)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201030, 100560, 116, 7, 9.8, 68.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201031, 100561, 117, 9, 12.2, 109.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201032, 100562, 118, 11, 13.1, 144.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201033, 100563, 119, 16, 10.4, 166.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201034, 100564, 120, 14, 9.8, 137.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201035, 100565, 160, 7, 25.4, 177.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201036, 100566, 161, 8, 18.9, 151.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201037, 100567, 162, 9, 20.5, 184.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201038, 100568, 163, 4, 16.8, 67.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201039, 100569, 164, 5, 19.9, 99.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201040, 100570, 165, 7, 23.3, 163.1)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201041, 100571, 126, 9, 7.1, 63.9)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201042, 100572, 114, 13, 10.5, 136.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201043, 100573, 131, 16, 5.1, 81.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201044, 100574, 132, 17, 4.8, 81.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201045, 100575, 133, 18, 5.2, 93.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201046, 100576, 134, 19, 3.8, 72.2)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201047, 100577, 121, 7, 10.2, 71.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201048, 100578, 122, 8, 6.5, 52)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201049, 100579, 123, 5, 12.4, 62)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201050, 100580, 124, 12, 6.2, 74.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201051, 100581, 125, 15, 8.5, 127.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201052, 100582, 126, 15, 7.1, 106.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201053, 100583, 127, 14, 2.5, 35)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201054, 100584, 128, 18, 3.1, 55.8)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201055, 100585, 129, 7, 5.2, 36.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201056, 100586, 130, 9, 3.6, 32.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201057, 100587, 135, 15, 4.1, 61.5)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201058, 100588, 136, 9, 6.6, 59.4)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201059, 100588, 160, 4, 25.4, 101.6)
GO
INSERT pedido_detalle (id_pedido_detalle, id_pedido, id_producto, cantidad, precio_unitario, sub_total) VALUES (201060, 100589, 204, 3, 79.9, 239.7)
GO














--INVENTARIO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (1, 200500, NULL, 1, 1, 1000, 976, CAST(N'2023-01-03' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (2, 200501, NULL, 1, 1, 1000, 994, CAST(N'2023-01-03' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (3, 200502, NULL, 1, 1, 1000, 990, CAST(N'2023-01-04' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (4, 200503, NULL, 1, 1, 976, 964, CAST(N'2023-01-04' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (5, 200504, NULL, 1, 1, 1000, 990, CAST(N'2023-01-04' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (6, 200505, NULL, 2, 1, 964, 959, CAST(N'2023-01-04' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (7, 200506, NULL, 2, 1, 994, 991, CAST(N'2023-01-04' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (8, 200507, NULL, 3, 1, 1000, 995, CAST(N'2023-01-11' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (9, 200508, NULL, 3, 1, 990, 988, CAST(N'2023-01-11' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (10, 200509, NULL, 3, 1, 1000, 999, CAST(N'2023-01-11' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (11, 200510, NULL, 3, 1, 990, 988, CAST(N'2023-01-29' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (12, 200511, NULL, 3, 1, 1000, 994, CAST(N'2023-01-29' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (13, 200512, NULL, 3, 1, 1000, 994, CAST(N'2023-01-29' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (14, 200513, NULL, 3, 1, 1000, 996, CAST(N'2023-01-29' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (15, 200514, NULL, 3, 1, 959, 951, CAST(N'2023-01-29' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (16, 200515, NULL, 3, 1, 991, 980, CAST(N'2023-01-29' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (17, 200516, NULL, 3, 1, 995, 986, CAST(N'2023-01-29' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (18, NULL, 15401, 1, 2, 1000, 1077, CAST(N'2023-01-30' AS Date), CAST(N'13:05:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (19, NULL, 15402, 1, 2, 1000, 1076, CAST(N'2023-01-30' AS Date), CAST(N'13:05:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (20, NULL, 15403, 1, 2, 1000, 1049, CAST(N'2023-01-30' AS Date), CAST(N'13:26:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (21, NULL, 15404, 1, 2, 1000, 1069, CAST(N'2023-01-30' AS Date), CAST(N'13:26:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (22, NULL, 15405, 1, 2, 1000, 1075, CAST(N'2023-01-30' AS Date), CAST(N'13:26:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (23, 200517, NULL, 2, 1, 988, 980, CAST(N'2023-01-30' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (24, 200518, NULL, 2, 1, 999, 990, CAST(N'2023-01-30' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (25, 200519, NULL, 2, 1, 994, 986, CAST(N'2023-01-30' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (26, 200520, NULL, 2, 1, 994, 986, CAST(N'2023-01-30' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (27, 200521, NULL, 2, 1, 996, 988, CAST(N'2023-01-30' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (28, 200522, NULL, 1, 1, 980, 972, CAST(N'2023-01-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (29, 200523, NULL, 1, 1, 990, 982, CAST(N'2023-01-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (30, 200524, NULL, 1, 1, 988, 981, CAST(N'2023-01-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (31, 200525, NULL, 1, 1, 986, 979, CAST(N'2023-01-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (32, 200526, NULL, 1, 1, 988, 981, CAST(N'2023-01-30' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (33, 200527, NULL, 1, 1, 1000, 993, CAST(N'2023-01-30' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (34, NULL, 15406, 1, 2, 1000, 1060, CAST(N'2023-01-30' AS Date), CAST(N'18:51:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (35, NULL, 15407, 1, 2, 1077, 1140, CAST(N'2023-01-30' AS Date), CAST(N'18:51:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (36, NULL, 15408, 1, 2, 1075, 1149, CAST(N'2023-01-30' AS Date), CAST(N'18:51:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (37, 200528, NULL, 1, 1, 980, 973, CAST(N'2023-01-30' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (38, 200529, NULL, 1, 1, 986, 980, CAST(N'2023-01-30' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (39, 200530, NULL, 3, 1, 1000, 994, CAST(N'2023-01-31' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (40, 200531, NULL, 3, 1, 1000, 988, CAST(N'2023-01-31' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (41, 200532, NULL, 3, 1, 1000, 989, CAST(N'2023-01-31' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (42, 200533, NULL, 3, 1, 1000, 980, CAST(N'2023-02-01' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (43, 200534, NULL, 3, 1, 1000, 980, CAST(N'2023-02-01' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (44, 200535, NULL, 3, 1, 1000, 994, CAST(N'2023-02-01' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (45, 200536, NULL, 3, 1, 1000, 990, CAST(N'2023-02-01' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (46, 200537, NULL, 3, 1, 1000, 985, CAST(N'2023-02-01' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (47, 200538, NULL, 3, 1, 982, 974, CAST(N'2023-02-01' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (48, 200539, NULL, 3, 1, 981, 973, CAST(N'2023-02-01' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (49, 200540, NULL, 3, 1, 1000, 991, CAST(N'2023-02-03' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (50, 200541, NULL, 3, 1, 1000, 988, CAST(N'2023-02-03' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (51, 200542, NULL, 3, 1, 1000, 985, CAST(N'2023-02-03' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (52, 200543, NULL, 3, 1, 1000, 992, CAST(N'2023-02-03' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (53, 200544, NULL, 1, 1, 1000, 989, CAST(N'2023-02-03' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (54, 200545, NULL, 3, 1, 1000, 991, CAST(N'2023-02-13' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (55, 200546, NULL, 2, 1, 1001, 993, CAST(N'2023-02-20' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (56, 200547, NULL, 2, 1, 1000, 995, CAST(N'2023-02-20' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (57, 200548, NULL, 2, 1, 1000, 994, CAST(N'2023-02-20' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (58, 200549, NULL, 3, 1, 1000, 993, CAST(N'2023-02-22' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (59, 200550, NULL, 1, 1, 1001, 988, CAST(N'2023-02-22' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (60, 200551, NULL, 3, 1, 1000, 986, CAST(N'2023-02-28' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (61, 200552, NULL, 2, 1, 1000, 984, CAST(N'2023-02-28' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (62, 200553, NULL, 2, 1, 1000, 982, CAST(N'2023-02-28' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (63, 200554, NULL, 2, 1, 1000, 989, CAST(N'2023-02-28' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (64, NULL, 15409, 1, 2, 1149, 1211, CAST(N'2023-02-28' AS Date), CAST(N'09:41:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (65, NULL, 15410, 1, 2, 1069, 1132, CAST(N'2023-02-28' AS Date), CAST(N'09:41:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (66, NULL, 15414, 3, 2, 1213, 1270, CAST(N'2023-02-28' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (67, NULL, 15415, 3, 2, 1077, 1149, CAST(N'2023-02-28' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (68, NULL, 15416, 3, 2, 1284, 1344, CAST(N'2023-02-28' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (69, NULL, 15411, 1, 2, 1140, 1213, CAST(N'2023-02-28' AS Date), CAST(N'11:21:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (70, NULL, 15412, 1, 2, 1211, 1284, CAST(N'2023-02-28' AS Date), CAST(N'11:21:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (71, NULL, 15413, 1, 2, 1000, 1077, CAST(N'2023-02-28' AS Date), CAST(N'11:21:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (72, 200555, NULL, 3, 1, 986, 982, CAST(N'2023-03-07' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (73, 200556, NULL, 3, 1, 981, 963, CAST(N'2023-03-07' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (74, 200557, NULL, 1, 1, 994, 985, CAST(N'2023-03-07' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (75, 200558, NULL, 1, 1, 1000, 989, CAST(N'2023-03-07' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (76, 200559, NULL, 1, 1, 1000, 985, CAST(N'2023-03-07' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (77, 200560, NULL, 1, 1, 1000, 987, CAST(N'2023-03-15' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (78, 200561, NULL, 1, 1, 1000, 992, CAST(N'2023-03-15' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (79, 200562, NULL, 2, 1, 1000, 988, CAST(N'2023-03-16' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (80, 200563, NULL, 2, 1, 1000, 988, CAST(N'2023-03-28' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (81, 200564, NULL, 3, 1, 1000, 993, CAST(N'2023-03-30' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (82, NULL, 15423, 1, 2, 1273, 1344, CAST(N'2023-03-31' AS Date), CAST(N'09:16:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (83, NULL, 15424, 1, 2, 1060, 1128, CAST(N'2023-03-31' AS Date), CAST(N'09:16:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (84, NULL, 15425, 1, 2, 1051, 1106, CAST(N'2023-03-31' AS Date), CAST(N'09:16:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (85, NULL, 15420, 3, 2, 1000, 1066, CAST(N'2023-03-31' AS Date), CAST(N'11:50:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (86, NULL, 15421, 3, 2, 1000, 1051, CAST(N'2023-03-31' AS Date), CAST(N'11:50:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (87, NULL, 15422, 3, 2, 1202, 1273, CAST(N'2023-03-31' AS Date), CAST(N'11:50:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (88, NULL, 15417, 3, 2, 1000, 1061, CAST(N'2023-03-31' AS Date), CAST(N'12:56:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (89, NULL, 15418, 3, 2, 1344, 1392, CAST(N'2023-03-31' AS Date), CAST(N'12:56:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (90, NULL, 15419, 3, 2, 1149, 1202, CAST(N'2023-03-31' AS Date), CAST(N'12:56:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (91, 200565, NULL, 3, 1, 1000, 991, CAST(N'2023-04-03' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (92, 200566, NULL, 3, 1, 989, 975, CAST(N'2023-04-04' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (93, 200567, NULL, 3, 1, 986, 965, CAST(N'2023-04-04' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (94, 200568, NULL, 3, 1, 1000, 997, CAST(N'2023-04-04' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (95, 200569, NULL, 3, 1, 1000, 992, CAST(N'2023-04-04' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (96, 200570, NULL, 3, 1, 980, 969, CAST(N'2023-04-04' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (97, 200571, NULL, 3, 1, 1000, 995, CAST(N'2023-04-04' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (98, 200574, NULL, 3, 1, 975, 968, CAST(N'2023-04-13' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (99, 200575, NULL, 3, 1, 979, 974, CAST(N'2023-04-13' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (100, 200576, NULL, 3, 1, 973, 962, CAST(N'2023-04-13' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (101, 200577, NULL, 3, 1, 987, 970, CAST(N'2023-04-13' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (102, 200578, NULL, 3, 1, 984, 963, CAST(N'2023-04-13' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (103, 200572, NULL, 3, 1, 1000, 992, CAST(N'2023-04-13' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (104, 200573, NULL, 3, 1, 1000, 994, CAST(N'2023-04-13' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (105, 200579, NULL, 2, 1, 974, 969, CAST(N'2023-04-27' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (106, 200580, NULL, 2, 1, 963, 952, CAST(N'2023-04-27' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (107, 200581, NULL, 2, 1, 988, 983, CAST(N'2023-04-27' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (108, NULL, 15429, 1, 2, 1000, 1049, CAST(N'2023-04-30' AS Date), CAST(N'08:49:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (109, NULL, 15430, 1, 2, 1392, 1449, CAST(N'2023-04-30' AS Date), CAST(N'08:49:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (110, NULL, 15431, 1, 2, 1066, 1116, CAST(N'2023-04-30' AS Date), CAST(N'08:49:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (111, NULL, 15426, 1, 2, 1270, 1340, CAST(N'2023-04-30' AS Date), CAST(N'08:52:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (112, NULL, 15427, 1, 2, 1106, 1163, CAST(N'2023-04-30' AS Date), CAST(N'08:52:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (113, NULL, 15428, 1, 2, 1132, 1196, CAST(N'2023-04-30' AS Date), CAST(N'08:52:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (114, NULL, 15432, 2, 2, 1116, 1180, CAST(N'2023-04-30' AS Date), CAST(N'09:01:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (115, NULL, 15433, 2, 2, 1196, 1271, CAST(N'2023-04-30' AS Date), CAST(N'09:01:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (116, NULL, 15434, 2, 2, 1340, 1412, CAST(N'2023-04-30' AS Date), CAST(N'09:01:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (117, 200582, NULL, 2, 1, 988, 980, CAST(N'2023-05-02' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (118, 200583, NULL, 1, 1, 994, 985, CAST(N'2023-05-02' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (119, 200584, NULL, 1, 1, 989, 983, CAST(N'2023-05-03' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (120, 200585, NULL, 3, 1, 1000, 995, CAST(N'2023-05-03' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (121, 200586, NULL, 3, 1, 1000, 996, CAST(N'2023-05-03' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (122, 200587, NULL, 3, 1, 1000, 997, CAST(N'2023-05-03' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (123, 200588, NULL, 3, 1, 969, 962, CAST(N'2023-05-03' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (124, 200589, NULL, 3, 1, 995, 982, CAST(N'2023-05-25' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (125, 200590, NULL, 3, 1, 963, 939, CAST(N'2023-05-25' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (126, 200591, NULL, 3, 1, 951, 939, CAST(N'2023-05-25' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (127, 200592, NULL, 1, 1, 991, 975, CAST(N'2023-05-25' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (128, 200593, NULL, 1, 1, 968, 947, CAST(N'2023-05-29' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (129, 200594, NULL, 1, 1, 1000, 993, CAST(N'2023-05-29' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (130, NULL, 15435, 2, 2, 1344, 1417, CAST(N'2023-05-31' AS Date), CAST(N'11:52:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (131, NULL, 15436, 2, 2, 1449, 1501, CAST(N'2023-05-31' AS Date), CAST(N'11:52:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (132, NULL, 15437, 2, 2, 1412, 1482, CAST(N'2023-05-31' AS Date), CAST(N'11:52:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (133, 200595, NULL, 1, 1, 1000, 988, CAST(N'2023-05-31' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (134, 200596, NULL, 1, 1, 973, 962, CAST(N'2023-05-31' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (135, 200597, NULL, 1, 1, 974, 962, CAST(N'2023-05-31' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (136, 200598, NULL, 1, 1, 982, 979, CAST(N'2023-05-31' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (137, 200599, NULL, 1, 1, 947, 933, CAST(N'2023-05-31' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (138, 200600, NULL, 1, 1, 997, 992, CAST(N'2023-05-31' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (139, 200601, NULL, 1, 1, 982, 970, CAST(N'2023-05-31' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (140, 200602, NULL, 1, 1, 962, 950, CAST(N'2023-05-31' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (141, NULL, 15438, 2, 2, 1128, 1196, CAST(N'2023-05-31' AS Date), CAST(N'16:48:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (142, NULL, 15439, 2, 2, 1163, 1234, CAST(N'2023-05-31' AS Date), CAST(N'16:48:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (143, NULL, 15440, 2, 2, 1501, 1563, CAST(N'2023-05-31' AS Date), CAST(N'16:48:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (144, NULL, 15441, 1, 2, 1061, 1137, CAST(N'2023-05-31' AS Date), CAST(N'17:07:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (145, NULL, 15442, 1, 2, 1196, 1270, CAST(N'2023-05-31' AS Date), CAST(N'17:07:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (146, NULL, 15443, 1, 2, 1049, 1116, CAST(N'2023-05-31' AS Date), CAST(N'17:07:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (147, 200603, NULL, 1, 1, 939, 921, CAST(N'2023-06-01' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (148, 200604, NULL, 1, 1, 983, 976, CAST(N'2023-06-05' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (149, 200605, NULL, 1, 1, 997, 992, CAST(N'2023-06-08' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (150, 200606, NULL, 2, 1, 995, 988, CAST(N'2023-06-08' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (151, 200607, NULL, 2, 1, 950, 943, CAST(N'2023-06-09' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (152, 200608, NULL, 2, 1, 995, 992, CAST(N'2023-06-09' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (153, 200609, NULL, 2, 1, 993, 983, CAST(N'2023-06-09' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (154, 200610, NULL, 2, 1, 943, 931, CAST(N'2023-06-09' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (155, 200613, NULL, 3, 1, 994, 989, CAST(N'2023-06-23' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (156, 200611, NULL, 2, 1, 992, 991, CAST(N'2023-06-23' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (157, 200612, NULL, 2, 1, 962, 959, CAST(N'2023-06-23' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (158, 200614, NULL, 2, 1, 993, 988, CAST(N'2023-06-28' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (159, NULL, 15447, 1, 2, 1270, 1317, CAST(N'2023-06-30' AS Date), CAST(N'14:54:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (160, NULL, 15448, 1, 2, 1296, 1351, CAST(N'2023-06-30' AS Date), CAST(N'14:54:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (161, NULL, 15449, 1, 2, 1271, 1330, CAST(N'2023-06-30' AS Date), CAST(N'14:54:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (162, NULL, 15444, 1, 2, 1234, 1296, CAST(N'2023-06-30' AS Date), CAST(N'15:10:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (163, NULL, 15445, 1, 2, 1116, 1173, CAST(N'2023-06-30' AS Date), CAST(N'15:10:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (164, NULL, 15446, 1, 2, 1482, 1558, CAST(N'2023-06-30' AS Date), CAST(N'15:10:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (165, NULL, 15450, 1, 2, 1563, 1627, CAST(N'2023-06-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (166, NULL, 15451, 1, 2, 1330, 1404, CAST(N'2023-06-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (167, NULL, 15452, 1, 2, 1317, 1386, CAST(N'2023-06-30' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (168, 200615, NULL, 3, 1, 962, 950, CAST(N'2023-07-03' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (169, 200616, NULL, 3, 1, 962, 952, CAST(N'2023-07-03' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (170, 200617, NULL, 2, 1, 980, 960, CAST(N'2023-07-03' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (171, 200618, NULL, 2, 1, 1000, 994, CAST(N'2023-07-03' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (172, 200619, NULL, 2, 1, 1000, 988, CAST(N'2023-07-07' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (173, 200620, NULL, 2, 1, 1000, 994, CAST(N'2023-07-07' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (174, 200621, NULL, 1, 1, 1000, 994, CAST(N'2023-07-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (175, 200622, NULL, 1, 1, 1000, 994, CAST(N'2023-07-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (176, 200623, NULL, 1, 1, 969, 959, CAST(N'2023-07-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (177, 200624, NULL, 1, 1, 950, 941, CAST(N'2023-07-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (178, 200625, NULL, 2, 1, 952, 938, CAST(N'2023-07-19' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (179, 200626, NULL, 2, 1, 988, 981, CAST(N'2023-07-21' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (180, 200627, NULL, 2, 1, 983, 978, CAST(N'2023-07-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (181, 200628, NULL, 2, 1, 933, 909, CAST(N'2023-07-24' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (182, 200629, NULL, 2, 1, 988, 982, CAST(N'2023-07-24' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (183, 200630, NULL, 2, 1, 991, 989, CAST(N'2023-07-25' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (184, NULL, 15456, 3, 2, 1386, 1451, CAST(N'2023-07-31' AS Date), CAST(N'08:50:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (185, NULL, 15457, 3, 2, 1627, 1697, CAST(N'2023-07-31' AS Date), CAST(N'08:50:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (186, NULL, 15458, 3, 2, 1611, 1676, CAST(N'2023-07-31' AS Date), CAST(N'08:50:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (187, NULL, 15453, 2, 2, 1404, 1460, CAST(N'2023-07-31' AS Date), CAST(N'12:04:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (188, NULL, 15454, 2, 2, 1137, 1192, CAST(N'2023-07-31' AS Date), CAST(N'12:04:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (189, NULL, 15455, 2, 2, 1558, 1611, CAST(N'2023-07-31' AS Date), CAST(N'12:04:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (190, 200631, NULL, 2, 1, 921, 903, CAST(N'2023-07-31' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (191, 200632, NULL, 2, 1, 1000, 994, CAST(N'2023-07-31' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (192, NULL, 15459, 2, 2, 1351, 1406, CAST(N'2023-07-31' AS Date), CAST(N'13:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (193, NULL, 15460, 2, 2, 1173, 1241, CAST(N'2023-07-31' AS Date), CAST(N'13:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (194, NULL, 15461, 2, 2, 1000, 1055, CAST(N'2023-07-31' AS Date), CAST(N'13:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (195, 200633, NULL, 2, 1, 1000, 988, CAST(N'2023-07-31' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (196, 200634, NULL, 2, 1, 1000, 994, CAST(N'2023-08-01' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (197, 200635, NULL, 3, 1, 989, 983, CAST(N'2023-08-01' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (198, 200636, NULL, 3, 1, 931, 919, CAST(N'2023-08-01' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (199, 200637, NULL, 3, 1, 959, 950, CAST(N'2023-08-01' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (200, 200638, NULL, 3, 1, 994, 988, CAST(N'2023-08-01' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (201, 200639, NULL, 3, 1, 988, 979, CAST(N'2023-08-01' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (202, 200640, NULL, 3, 1, 985, 980, CAST(N'2023-08-01' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (203, 200641, NULL, 3, 1, 978, 971, CAST(N'2023-08-01' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (204, 200642, NULL, 3, 1, 981, 969, CAST(N'2023-08-07' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (205, 200643, NULL, 3, 1, 982, 976, CAST(N'2023-08-07' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (206, 200644, NULL, 3, 1, 950, 938, CAST(N'2023-08-15' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (207, 200645, NULL, 2, 1, 972, 969, CAST(N'2023-08-16' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (208, 200646, NULL, 1, 1, 969, 960, CAST(N'2023-08-23' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (209, NULL, 15462, 3, 2, 1406, 1477, CAST(N'2023-08-31' AS Date), CAST(N'12:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (210, NULL, 15463, 3, 2, 1451, 1510, CAST(N'2023-08-31' AS Date), CAST(N'12:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (211, NULL, 15464, 3, 2, 1697, 1764, CAST(N'2023-08-31' AS Date), CAST(N'12:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (212, NULL, 15468, 2, 2, 1460, 1523, CAST(N'2023-08-31' AS Date), CAST(N'15:57:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (213, NULL, 15469, 2, 2, 1811, 1885, CAST(N'2023-08-31' AS Date), CAST(N'15:57:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (214, NULL, 15470, 2, 2, 1510, 1567, CAST(N'2023-08-31' AS Date), CAST(N'15:57:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (215, NULL, 15465, 2, 2, 1417, 1478, CAST(N'2023-08-31' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (216, NULL, 15466, 2, 2, 1055, 1119, CAST(N'2023-08-31' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (217, NULL, 15467, 2, 2, 1764, 1811, CAST(N'2023-08-31' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (218, 200647, NULL, 1, 1, 992, 985, CAST(N'2023-09-07' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (219, 200648, NULL, 1, 1, 903, 873, CAST(N'2023-09-07' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (220, 200649, NULL, 2, 1, 970, 949, CAST(N'2023-09-07' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (221, 200650, NULL, 2, 1, 960, 945, CAST(N'2023-09-26' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (222, 200651, NULL, 3, 1, 959, 947, CAST(N'2023-09-27' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (223, 200652, NULL, 2, 1, 988, 980, CAST(N'2023-09-27' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (224, NULL, 15474, 3, 2, 1600, 1655, CAST(N'2023-09-30' AS Date), CAST(N'09:19:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (225, NULL, 15475, 3, 2, 1567, 1629, CAST(N'2023-09-30' AS Date), CAST(N'09:19:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (226, NULL, 15476, 3, 2, 1676, 1753, CAST(N'2023-09-30' AS Date), CAST(N'09:19:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (227, NULL, 15471, 2, 2, 1523, 1600, CAST(N'2023-09-30' AS Date), CAST(N'13:04:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (228, NULL, 15472, 2, 2, 1478, 1534, CAST(N'2023-09-30' AS Date), CAST(N'13:04:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (229, NULL, 15473, 2, 2, 1241, 1293, CAST(N'2023-09-30' AS Date), CAST(N'13:04:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (230, NULL, 15477, 3, 2, 1753, 1807, CAST(N'2023-09-30' AS Date), CAST(N'14:37:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (231, NULL, 15478, 3, 2, 1885, 1932, CAST(N'2023-09-30' AS Date), CAST(N'14:37:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (232, NULL, 15479, 3, 2, 1534, 1601, CAST(N'2023-09-30' AS Date), CAST(N'14:37:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (233, 200653, NULL, 2, 1, 952, 936, CAST(N'2023-10-02' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (234, 200654, NULL, 2, 1, 976, 970, CAST(N'2023-10-02' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (235, 200655, NULL, 3, 1, 909, 885, CAST(N'2023-10-02' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (236, 200656, NULL, 3, 1, 873, 855, CAST(N'2023-10-02' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (237, 200657, NULL, 3, 1, 983, 980, CAST(N'2023-10-02' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (238, 200658, NULL, 3, 1, 1000, 994, CAST(N'2023-10-27' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (239, 200659, NULL, 3, 1, 1000, 994, CAST(N'2023-10-27' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (240, 200660, NULL, 3, 1, 855, 837, CAST(N'2023-10-27' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (241, NULL, 15480, 3, 2, 1477, 1538, CAST(N'2023-10-31' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (242, NULL, 15481, 3, 2, 1601, 1659, CAST(N'2023-10-31' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (243, NULL, 15482, 3, 2, 1932, 1996, CAST(N'2023-10-31' AS Date), CAST(N'10:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (244, NULL, 15486, 2, 2, 1659, 1733, CAST(N'2023-10-31' AS Date), CAST(N'10:45:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (245, NULL, 15487, 2, 2, 1996, 2052, CAST(N'2023-10-31' AS Date), CAST(N'10:45:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (246, NULL, 15488, 2, 2, 1180, 1238, CAST(N'2023-10-31' AS Date), CAST(N'10:45:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (247, NULL, 15483, 2, 2, 1655, 1717, CAST(N'2023-10-31' AS Date), CAST(N'11:39:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (248, NULL, 15484, 2, 2, 1192, 1256, CAST(N'2023-10-31' AS Date), CAST(N'11:39:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (249, NULL, 15485, 2, 2, 1538, 1606, CAST(N'2023-10-31' AS Date), CAST(N'11:39:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (250, 200661, NULL, 3, 1, 941, 926, CAST(N'2023-11-03' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (251, 200662, NULL, 3, 1, 970, 958, CAST(N'2023-11-07' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (252, 200663, NULL, 1, 1, 992, 989, CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (253, 200664, NULL, 1, 1, 958, 947, CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (254, 200665, NULL, 1, 1, 994, 990, CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (255, 200666, NULL, 1, 1, 938, 929, CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (256, 200667, NULL, 1, 1, 985, 982, CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (257, 200668, NULL, 1, 1, 980, 977, CAST(N'2023-11-07' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (258, 200669, NULL, 3, 1, 979, 972, CAST(N'2023-11-08' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (259, 200670, NULL, 3, 1, 985, 974, CAST(N'2023-11-08' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (260, 200671, NULL, 3, 1, 926, 921, CAST(N'2023-11-08' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (261, 200672, NULL, 3, 1, 989, 982, CAST(N'2023-11-08' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (262, 200673, NULL, 3, 1, 960, 955, CAST(N'2023-11-08' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (263, 200674, NULL, 2, 1, 971, 968, CAST(N'2023-11-23' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (264, 200675, NULL, 3, 1, 938, 933, CAST(N'2023-11-23' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (265, 200676, NULL, 1, 1, 979, 977, CAST(N'2023-11-24' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (266, NULL, 15492, 1, 2, 1717, 1790, CAST(N'2023-11-30' AS Date), CAST(N'09:54:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (267, NULL, 15493, 1, 2, 1679, 1727, CAST(N'2023-11-30' AS Date), CAST(N'09:54:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (268, NULL, 15494, 1, 2, 1347, 1414, CAST(N'2023-11-30' AS Date), CAST(N'09:54:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (269, NULL, 15495, 1, 2, 1807, 1867, CAST(N'2023-11-30' AS Date), CAST(N'12:27:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (270, NULL, 15496, 1, 2, 1119, 1171, CAST(N'2023-11-30' AS Date), CAST(N'12:27:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (271, NULL, 15497, 1, 2, 1414, 1461, CAST(N'2023-11-30' AS Date), CAST(N'12:27:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (272, NULL, 15489, 2, 2, 1256, 1319, CAST(N'2023-11-30' AS Date), CAST(N'14:25:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (273, NULL, 15490, 2, 2, 1293, 1347, CAST(N'2023-11-30' AS Date), CAST(N'14:25:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (274, NULL, 15491, 2, 2, 1629, 1679, CAST(N'2023-11-30' AS Date), CAST(N'14:25:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (275, 200677, NULL, 3, 1, 885, 864, CAST(N'2023-11-30' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (276, 200678, NULL, 3, 1, 949, 938, CAST(N'2023-11-30' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (277, 200679, NULL, 3, 1, 945, 938, CAST(N'2023-11-30' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (278, 200680, NULL, 3, 1, 921, 912, CAST(N'2023-11-30' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (279, 200684, NULL, 1, 1, 837, 828, CAST(N'2023-12-01' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (280, 200685, NULL, 1, 1, 994, 990, CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (281, 200686, NULL, 1, 1, 994, 985, CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (282, 200687, NULL, 1, 1, 864, 829, CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (283, 200688, NULL, 1, 1, 994, 989, CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (284, 200689, NULL, 1, 1, 828, 816, CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (285, 200690, NULL, 1, 1, 969, 965, CAST(N'2023-12-01' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (286, 200681, NULL, 2, 1, 955, 953, CAST(N'2023-12-01' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (287, 200682, NULL, 2, 1, 980, 972, CAST(N'2023-12-01' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (288, 200683, NULL, 3, 1, 933, 930, CAST(N'2023-12-01' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (289, 200691, NULL, 1, 1, 953, 951, CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (290, 200692, NULL, 1, 1, 977, 972, CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (291, 200693, NULL, 1, 1, 994, 991, CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (292, 200694, NULL, 1, 1, 912, 903, CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (293, 200695, NULL, 1, 1, 972, 968, CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (294, 200696, NULL, 1, 1, 990, 984, CAST(N'2023-12-05' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (295, 200697, NULL, 1, 1, 985, 979, CAST(N'2023-12-05' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (296, 200698, NULL, 1, 1, 1000, 994, CAST(N'2023-12-05' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (297, 200699, NULL, 1, 1, 1000, 995, CAST(N'2023-12-05' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (298, 200700, NULL, 1, 1, 1000, 992, CAST(N'2023-12-05' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (299, 200701, NULL, 1, 1, 1000, 991, CAST(N'2023-12-05' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (300, 200702, NULL, 2, 1, 903, 900, CAST(N'2023-12-06' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (301, 200703, NULL, 2, 1, 1000, 993, CAST(N'2023-12-06' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (302, 200704, NULL, 2, 1, 951, 948, CAST(N'2023-12-06' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (303, 200705, NULL, 2, 1, 1000, 988, CAST(N'2023-12-06' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (304, 200706, NULL, 2, 1, 1000, 988, CAST(N'2023-12-06' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (305, 200707, NULL, 2, 1, 816, 798, CAST(N'2023-12-06' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (306, 200708, NULL, 3, 1, 994, 992, CAST(N'2023-12-12' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (307, 200709, NULL, 3, 1, 1000, 998, CAST(N'2023-12-13' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (308, 200710, NULL, 3, 1, 1000, 994, CAST(N'2023-12-13' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (309, 200711, NULL, 3, 1, 982, 980, CAST(N'2023-12-13' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (310, 200712, NULL, 3, 1, 919, 912, CAST(N'2023-12-13' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (311, 200713, NULL, 3, 1, 900, 895, CAST(N'2023-12-13' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (312, 200714, NULL, 3, 1, 798, 787, CAST(N'2023-12-13' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (313, 200715, NULL, 3, 1, 984, 979, CAST(N'2023-12-20' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (314, 200716, NULL, 3, 1, 979, 973, CAST(N'2023-12-20' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (315, 200717, NULL, 3, 1, 930, 927, CAST(N'2023-12-20' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (316, 200718, NULL, 3, 1, 938, 926, CAST(N'2023-12-20' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (317, 200719, NULL, 3, 1, 829, 818, CAST(N'2023-12-20' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (318, 200720, NULL, 2, 1, 947, 938, CAST(N'2023-12-20' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (319, 200721, NULL, 2, 1, 994, 988, CAST(N'2023-12-29' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (320, 200722, NULL, 2, 1, 991, 985, CAST(N'2023-12-29' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (321, 200723, NULL, 1, 1, 979, 976, CAST(N'2023-12-29' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (322, 200724, NULL, 1, 1, 973, 970, CAST(N'2023-12-29' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (323, 200725, NULL, 3, 1, 988, 974, CAST(N'2023-12-29' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (324, 200726, NULL, 3, 1, 1000, 993, CAST(N'2023-12-29' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (325, 200727, NULL, 3, 1, 1000, 993, CAST(N'2023-12-29' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (326, 200728, NULL, 3, 1, 1000, 993, CAST(N'2023-12-30' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (327, NULL, 15504, 1, 2, 1678, 1733, CAST(N'2023-12-31' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (328, NULL, 15505, 1, 2, 2107, 2177, CAST(N'2023-12-31' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (329, NULL, 15506, 1, 2, 1315, 1380, CAST(N'2023-12-31' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (330, NULL, 15498, 2, 2, 1319, 1384, CAST(N'2023-12-31' AS Date), CAST(N'11:51:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (331, NULL, 15499, 2, 2, 1238, 1315, CAST(N'2023-12-31' AS Date), CAST(N'11:51:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (332, NULL, 15500, 2, 2, 1171, 1220, CAST(N'2023-12-31' AS Date), CAST(N'11:51:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (333, NULL, 15501, 1, 2, 1606, 1678, CAST(N'2023-12-31' AS Date), CAST(N'18:13:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (334, NULL, 15502, 1, 2, 2052, 2107, CAST(N'2023-12-31' AS Date), CAST(N'18:13:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (335, NULL, 15503, 1, 2, 1220, 1277, CAST(N'2023-12-31' AS Date), CAST(N'18:13:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (336, 200729, NULL, 3, 1, 1000, 993, CAST(N'2024-01-04' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (337, 200730, NULL, 1, 1, 787, 772, CAST(N'2024-01-04' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (338, 200731, NULL, 1, 1, 976, 973, CAST(N'2024-01-05' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (339, 200732, NULL, 1, 1, 948, 942, CAST(N'2024-01-11' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (340, 200733, NULL, 1, 1, 968, 967, CAST(N'2024-01-11' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (341, 200734, NULL, 1, 1, 993, 990, CAST(N'2024-01-11' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (342, 200735, NULL, 1, 1, 991, 979, CAST(N'2024-01-12' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (343, 200736, NULL, 1, 1, 912, 903, CAST(N'2024-01-12' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (344, 200737, NULL, 1, 1, 1000, 991, CAST(N'2024-01-12' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (345, 200738, NULL, 1, 1, 1000, 994, CAST(N'2024-01-12' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (346, 200739, NULL, 1, 1, 1000, 994, CAST(N'2024-01-12' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (347, 200740, NULL, 2, 1, 1000, 993, CAST(N'2024-01-12' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (348, 200741, NULL, 2, 1, 1000, 991, CAST(N'2024-01-12' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (349, 200742, NULL, 2, 1, 1000, 991, CAST(N'2024-01-12' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (350, 200743, NULL, 2, 1, 991, 982, CAST(N'2024-01-12' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (351, 200744, NULL, 3, 1, 1000, 995, CAST(N'2024-01-12' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (352, 200745, NULL, 2, 1, 1000, 993, CAST(N'2024-01-12' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (353, 200753, NULL, 2, 1, 993, 990, CAST(N'2024-01-17' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (354, 200754, NULL, 2, 1, 982, 969, CAST(N'2024-01-17' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (355, 200755, NULL, 2, 1, 993, 984, CAST(N'2024-01-17' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (356, 200756, NULL, 2, 1, 968, 967, CAST(N'2024-01-17' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (357, 200757, NULL, 2, 1, 968, 949, CAST(N'2024-01-17' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (358, 200758, NULL, 2, 1, 939, 929, CAST(N'2024-01-17' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (359, 200746, NULL, 3, 1, 895, 890, CAST(N'2024-01-17' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (360, 200747, NULL, 3, 1, 974, 968, CAST(N'2024-01-17' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (361, 200748, NULL, 2, 1, 973, 970, CAST(N'2024-01-17' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (362, 200749, NULL, 2, 1, 972, 970, CAST(N'2024-01-17' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (363, 200750, NULL, 1, 1, 970, 968, CAST(N'2024-01-17' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (364, 200751, NULL, 1, 1, 942, 939, CAST(N'2024-01-17' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (365, 200752, NULL, 2, 1, 968, 964, CAST(N'2024-01-17' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (366, 200759, NULL, 2, 1, 903, 891, CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (367, 200760, NULL, 2, 1, 926, 920, CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (368, 200761, NULL, 2, 1, 994, 982, CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (369, 200762, NULL, 2, 1, 939, 934, CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (370, 200763, NULL, 2, 1, 980, 979, CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (371, 200764, NULL, 2, 1, 969, 954, CAST(N'2024-01-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (372, 200765, NULL, 3, 1, 970, 969, CAST(N'2024-01-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (373, 200766, NULL, 3, 1, 994, 985, CAST(N'2024-01-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (374, 200767, NULL, 3, 1, 949, 938, CAST(N'2024-01-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (375, 200768, NULL, 3, 1, 1000, 987, CAST(N'2024-01-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (376, 200769, NULL, 3, 1, 1000, 989, CAST(N'2024-01-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (377, 200770, NULL, 3, 1, 993, 984, CAST(N'2024-01-19' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (378, 200771, NULL, 3, 1, 1000, 992, CAST(N'2024-01-19' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (379, 200772, NULL, 3, 1, 1000, 993, CAST(N'2024-01-19' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (380, 200773, NULL, 3, 1, 1000, 994, CAST(N'2024-01-19' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (381, 200774, NULL, 3, 1, 1000, 987, CAST(N'2024-01-19' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (382, 200775, NULL, 3, 1, 1000, 986, CAST(N'2024-01-19' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (383, 200776, NULL, 3, 1, 1000, 985, CAST(N'2024-01-19' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (384, 200777, NULL, 3, 1, 1000, 986, CAST(N'2024-01-22' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (385, 200778, NULL, 3, 1, 1000, 993, CAST(N'2024-01-22' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (386, 200779, NULL, 2, 1, 984, 977, CAST(N'2024-01-22' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (387, 200780, NULL, 2, 1, 934, 931, CAST(N'2024-01-22' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (388, 200781, NULL, 2, 1, 954, 947, CAST(N'2024-01-22' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (389, 200782, NULL, 1, 1, 987, 976, CAST(N'2024-01-23' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (390, 200783, NULL, 1, 1, 993, 989, CAST(N'2024-01-23' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (391, 200784, NULL, 1, 1, 938, 926, CAST(N'2024-01-24' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (392, 200785, NULL, 1, 1, 990, 987, CAST(N'2024-01-24' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (393, 200786, NULL, 1, 1, 920, 911, CAST(N'2024-01-24' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (394, 200787, NULL, 2, 1, 947, 940, CAST(N'2024-01-24' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (395, 200788, NULL, 2, 1, 969, 967, CAST(N'2024-01-25' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (396, 200789, NULL, 2, 1, 985, 976, CAST(N'2024-01-25' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (397, 200790, NULL, 3, 1, 989, 972, CAST(N'2024-01-25' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (398, 200791, NULL, 3, 1, 991, 984, CAST(N'2024-01-25' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (399, 200792, NULL, 3, 1, 986, 974, CAST(N'2024-01-25' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (400, 200793, NULL, 2, 1, 938, 931, CAST(N'2024-01-25' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (401, 200794, NULL, 2, 1, 990, 988, CAST(N'2024-01-25' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (402, 200795, NULL, 2, 1, 986, 978, CAST(N'2024-01-26' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (403, 200796, NULL, 2, 1, 989, 984, CAST(N'2024-01-26' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (404, 200797, NULL, 3, 1, 940, 935, CAST(N'2024-01-28' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (405, 200798, NULL, 3, 1, 927, 923, CAST(N'2024-01-28' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (406, 200799, NULL, 3, 1, 987, 979, CAST(N'2024-01-28' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (407, 200800, NULL, 3, 1, 978, 969, CAST(N'2024-01-28' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (408, 200801, NULL, 3, 1, 1000, 998, CAST(N'2024-01-28' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (409, 200802, NULL, 3, 1, 1000, 997, CAST(N'2024-01-29' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (410, 200803, NULL, 3, 1, 1000, 997, CAST(N'2024-01-30' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (411, 200804, NULL, 3, 1, 1000, 998, CAST(N'2024-01-30' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (412, 200805, NULL, 3, 1, 1000, 996, CAST(N'2024-01-30' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (413, 200806, NULL, 3, 1, 1000, 997, CAST(N'2024-01-30' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (414, 200807, NULL, 3, 1, 1000, 997, CAST(N'2024-01-30' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (415, 200808, NULL, 3, 1, 1000, 996, CAST(N'2024-01-30' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (416, 200809, NULL, 3, 1, 1000, 997, CAST(N'2024-01-30' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (417, 200810, NULL, 3, 1, 911, 900, CAST(N'2024-01-30' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (418, 200811, NULL, 3, 1, 967, 964, CAST(N'2024-01-30' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (419, 200812, NULL, 3, 1, 996, 991, CAST(N'2024-01-30' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (420, 200813, NULL, 3, 1, 993, 986, CAST(N'2024-01-30' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (421, 200814, NULL, 1, 1, 998, 995, CAST(N'2024-01-30' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (422, 200815, NULL, 1, 1, 988, 985, CAST(N'2024-01-30' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (423, 200816, NULL, 1, 1, 997, 994, CAST(N'2024-01-30' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (424, 200817, NULL, 3, 1, 995, 983, CAST(N'2024-01-30' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (425, 200818, NULL, 3, 1, 992, 986, CAST(N'2024-01-30' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (426, 200819, NULL, 2, 1, 964, 962, CAST(N'2024-01-31' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (427, 200820, NULL, 2, 1, 976, 969, CAST(N'2024-01-31' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (428, 200821, NULL, 2, 1, 984, 972, CAST(N'2024-01-31' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (429, 200822, NULL, 3, 1, 967, 964, CAST(N'2024-01-31' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (430, 200823, NULL, 3, 1, 969, 960, CAST(N'2024-01-31' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (431, 200824, NULL, 1, 1, 935, 930, CAST(N'2024-01-31' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (432, 200825, NULL, 1, 1, 890, 885, CAST(N'2024-01-31' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (433, 200826, NULL, 1, 1, 923, 916, CAST(N'2024-01-31' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (434, 200827, NULL, 1, 1, 962, 961, CAST(N'2024-01-31' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (435, NULL, 15507, 1, 2, 1790, 1841, CAST(N'2024-01-31' AS Date), CAST(N'13:55:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (436, NULL, 15508, 1, 2, 2177, 2246, CAST(N'2024-01-31' AS Date), CAST(N'13:55:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (437, NULL, 15509, 1, 2, 1733, 1795, CAST(N'2024-01-31' AS Date), CAST(N'13:55:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (438, NULL, 15510, 2, 2, 1461, 1522, CAST(N'2024-01-31' AS Date), CAST(N'14:17:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (439, NULL, 15511, 2, 2, 1841, 1908, CAST(N'2024-01-31' AS Date), CAST(N'14:17:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (440, NULL, 15512, 2, 2, 1727, 1799, CAST(N'2024-01-31' AS Date), CAST(N'14:17:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (441, NULL, 15513, 2, 2, 1733, 1809, CAST(N'2024-01-31' AS Date), CAST(N'15:55:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (442, NULL, 15514, 2, 2, 2246, 2312, CAST(N'2024-01-31' AS Date), CAST(N'15:55:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (443, NULL, 15515, 2, 2, 1908, 1984, CAST(N'2024-01-31' AS Date), CAST(N'15:55:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (444, 200828, NULL, 3, 1, 976, 969, CAST(N'2024-02-01' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (445, 200829, NULL, 2, 1, 931, 928, CAST(N'2024-02-05' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (446, 200830, NULL, 2, 1, 997, 991, CAST(N'2024-02-05' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (447, 200831, NULL, 3, 1, 993, 990, CAST(N'2024-02-06' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (448, 200832, NULL, 1, 1, 930, 921, CAST(N'2024-02-06' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (449, 200833, NULL, 1, 1, 961, 960, CAST(N'2024-02-08' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (450, 200834, NULL, 1, 1, 970, 969, CAST(N'2024-02-21' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (451, 200835, NULL, 1, 1, 967, 965, CAST(N'2024-02-21' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (452, 200836, NULL, 1, 1, 1000, 988, CAST(N'2024-02-22' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (453, 200837, NULL, 2, 1, 1000, 994, CAST(N'2024-02-22' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (454, 200838, NULL, 2, 1, 1000, 988, CAST(N'2024-02-22' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (455, 200839, NULL, 3, 1, 1000, 994, CAST(N'2024-02-23' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (456, 200841, NULL, 3, 1, 1000, 994, CAST(N'2024-02-26' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (457, 200840, NULL, 3, 1, 1000, 988, CAST(N'2024-02-26' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (458, 200842, NULL, 3, 1, 1000, 994, CAST(N'2024-02-28' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (459, 200843, NULL, 3, 1, 1000, 988, CAST(N'2024-02-29' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (460, NULL, 15522, 3, 2, 1384, 1440, CAST(N'2024-02-29' AS Date), CAST(N'14:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (461, NULL, 15523, 3, 2, 1277, 1336, CAST(N'2024-02-29' AS Date), CAST(N'14:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (462, NULL, 15524, 3, 2, 2369, 2439, CAST(N'2024-02-29' AS Date), CAST(N'14:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (463, NULL, 15516, 3, 2, 1795, 1867, CAST(N'2024-02-29' AS Date), CAST(N'16:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (464, NULL, 15517, 3, 2, 1522, 1569, CAST(N'2024-02-29' AS Date), CAST(N'16:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (465, NULL, 15518, 3, 2, 1867, 1938, CAST(N'2024-02-29' AS Date), CAST(N'16:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (466, NULL, 15519, 3, 2, 1938, 2009, CAST(N'2024-02-29' AS Date), CAST(N'19:32:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (467, NULL, 15520, 3, 2, 2312, 2369, CAST(N'2024-02-29' AS Date), CAST(N'19:32:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (468, NULL, 15521, 3, 2, 1799, 1863, CAST(N'2024-02-29' AS Date), CAST(N'19:32:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (469, 200844, NULL, 3, 1, 1000, 988, CAST(N'2024-03-04' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (470, 200845, NULL, 3, 1, 1000, 988, CAST(N'2024-03-04' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (471, 200846, NULL, 3, 1, 1000, 988, CAST(N'2024-03-05' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (472, 200847, NULL, 2, 1, 960, 959, CAST(N'2024-03-07' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (473, 200848, NULL, 2, 1, 990, 985, CAST(N'2024-03-07' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (474, 200849, NULL, 2, 1, 994, 985, CAST(N'2024-03-07' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (475, 200850, NULL, 2, 1, 960, 951, CAST(N'2024-03-07' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (476, 200851, NULL, 2, 1, 995, 993, CAST(N'2024-03-07' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (477, 200852, NULL, 2, 1, 988, 981, CAST(N'2024-03-07' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (478, 200853, NULL, 1, 1, 994, 985, CAST(N'2024-03-07' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (479, 200854, NULL, 1, 1, 969, 960, CAST(N'2024-03-07' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (480, 200855, NULL, 3, 1, 988, 981, CAST(N'2024-03-07' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (481, 200856, NULL, 3, 1, 988, 980, CAST(N'2024-03-13' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (482, 200857, NULL, 3, 1, 994, 990, CAST(N'2024-03-13' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (483, 200858, NULL, 1, 1, 929, 915, CAST(N'2024-03-14' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (484, 200859, NULL, 1, 1, 994, 990, CAST(N'2024-03-14' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (485, 200860, NULL, 1, 1, 977, 970, CAST(N'2024-03-14' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (486, 200861, NULL, 1, 1, 928, 921, CAST(N'2024-03-14' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (487, 200862, NULL, 1, 1, 985, 974, CAST(N'2024-03-14' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (488, 200863, NULL, 1, 1, 981, 966, CAST(N'2024-03-14' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (489, 200864, NULL, 1, 1, 980, 964, CAST(N'2024-03-14' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (490, 200865, NULL, 1, 1, 997, 992, CAST(N'2024-03-14' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (491, 200866, NULL, 1, 1, 988, 973, CAST(N'2024-03-14' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (492, 200867, NULL, 1, 1, 964, 951, CAST(N'2024-03-14' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (493, 200868, NULL, 1, 1, 960, 949, CAST(N'2024-03-14' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (494, 200869, NULL, 1, 1, 985, 976, CAST(N'2024-03-14' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (495, 200870, NULL, 1, 1, 997, 990, CAST(N'2024-03-14' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (496, 200871, NULL, 1, 1, 996, 989, CAST(N'2024-03-14' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (497, 200879, NULL, 2, 1, 1000, 994, CAST(N'2024-03-15' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (498, 200880, NULL, 2, 1, 1000, 993, CAST(N'2024-03-15' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (499, 200881, NULL, 2, 1, 1000, 992, CAST(N'2024-03-15' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (500, 200882, NULL, 2, 1, 988, 982, CAST(N'2024-03-15' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (501, 200883, NULL, 2, 1, 915, 904, CAST(N'2024-03-15' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (502, 200884, NULL, 2, 1, 989, 974, CAST(N'2024-03-15' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (503, 200885, NULL, 2, 1, 959, 957, CAST(N'2024-03-15' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (504, 200886, NULL, 2, 1, 966, 955, CAST(N'2024-03-15' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (505, 200887, NULL, 2, 1, 949, 942, CAST(N'2024-03-15' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (506, 200872, NULL, 1, 1, 970, 951, CAST(N'2024-03-15' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (507, 200873, NULL, 1, 1, 921, 918, CAST(N'2024-03-15' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (508, 200874, NULL, 1, 1, 951, 945, CAST(N'2024-03-15' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (509, 200875, NULL, 1, 1, 981, 976, CAST(N'2024-03-15' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (510, 200876, NULL, 1, 1, 993, 989, CAST(N'2024-03-15' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (511, 200877, NULL, 1, 1, 1000, 991, CAST(N'2024-03-15' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (512, 200878, NULL, 1, 1, 1000, 989, CAST(N'2024-03-15' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (513, 200888, NULL, 3, 1, 988, 973, CAST(N'2024-03-20' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (514, 200889, NULL, 3, 1, 993, 990, CAST(N'2024-03-20' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (515, 200890, NULL, 2, 1, 985, 982, CAST(N'2024-03-20' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (516, 200891, NULL, 3, 1, 945, 939, CAST(N'2024-03-21' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (517, 200892, NULL, 3, 1, 991, 978, CAST(N'2024-03-21' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (518, 200893, NULL, 2, 1, 982, 973, CAST(N'2024-03-21' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (519, 200894, NULL, 2, 1, 985, 981, CAST(N'2024-03-21' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (520, 200895, NULL, 1, 1, 992, 986, CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (521, 200896, NULL, 1, 1, 942, 933, CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (522, 200897, NULL, 1, 1, 990, 983, CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (523, 200898, NULL, 1, 1, 957, 956, CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (524, 200899, NULL, 1, 1, 955, 946, CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (525, 200900, NULL, 1, 1, 916, 904, CAST(N'2024-03-21' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (526, 200901, NULL, 1, 1, 956, 954, CAST(N'2024-03-22' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (527, 200902, NULL, 1, 1, 983, 978, CAST(N'2024-03-22' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (528, 200903, NULL, 1, 1, 990, 985, CAST(N'2024-03-22' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (529, 200904, NULL, 1, 1, 994, 990, CAST(N'2024-03-22' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (530, 200905, NULL, 2, 1, 933, 922, CAST(N'2024-03-22' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (531, 200906, NULL, 2, 1, 985, 980, CAST(N'2024-03-22' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (532, 200907, NULL, 2, 1, 989, 984, CAST(N'2024-03-22' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (533, 200908, NULL, 2, 1, 969, 968, CAST(N'2024-03-22' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (534, 200909, NULL, 2, 1, 965, 964, CAST(N'2024-03-22' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (535, 200910, NULL, 2, 1, 922, 914, CAST(N'2024-03-22' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (536, 200911, NULL, 2, 1, 1000, 993, CAST(N'2024-03-22' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (537, 200912, NULL, 2, 1, 1000, 993, CAST(N'2024-03-28' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (538, NULL, 15525, 2, 2, 1867, 1943, CAST(N'2024-03-31' AS Date), CAST(N'08:23:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (539, NULL, 15526, 2, 2, 1336, 1413, CAST(N'2024-03-31' AS Date), CAST(N'08:23:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (540, NULL, 15527, 2, 2, 2439, 2505, CAST(N'2024-03-31' AS Date), CAST(N'08:23:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (541, NULL, 15528, 1, 2, 1943, 1999, CAST(N'2024-03-31' AS Date), CAST(N'11:59:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (542, NULL, 15529, 1, 2, 2505, 2562, CAST(N'2024-03-31' AS Date), CAST(N'11:59:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (543, NULL, 15530, 1, 2, 1809, 1862, CAST(N'2024-03-31' AS Date), CAST(N'11:59:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (544, 200913, NULL, 2, 1, 1000, 993, CAST(N'2024-03-31' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (545, NULL, 15531, 1, 2, 1440, 1514, CAST(N'2024-03-31' AS Date), CAST(N'18:38:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (546, NULL, 15532, 1, 2, 2562, 2627, CAST(N'2024-03-31' AS Date), CAST(N'18:38:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (547, NULL, 15533, 1, 2, 2009, 2073, CAST(N'2024-03-31' AS Date), CAST(N'18:38:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (548, 200914, NULL, 2, 1, 1000, 991, CAST(N'2024-04-01' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (549, 200915, NULL, 2, 1, 1000, 989, CAST(N'2024-04-01' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (550, 200916, NULL, 2, 1, 1000, 994, CAST(N'2024-04-01' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (551, 200922, NULL, 3, 1, 904, 899, CAST(N'2024-04-02' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (552, 200923, NULL, 3, 1, 964, 961, CAST(N'2024-04-02' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (553, 200924, NULL, 3, 1, 973, 969, CAST(N'2024-04-02' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (554, 200917, NULL, 2, 1, 1000, 994, CAST(N'2024-04-02' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (555, 200918, NULL, 3, 1, 1000, 994, CAST(N'2024-04-02' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (556, 200919, NULL, 3, 1, 1000, 994, CAST(N'2024-04-02' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (557, 200920, NULL, 3, 1, 1000, 994, CAST(N'2024-04-02' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (558, 200921, NULL, 3, 1, 973, 967, CAST(N'2024-04-02' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (559, 200925, NULL, 2, 1, 914, 903, CAST(N'2024-04-03' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (560, 200926, NULL, 1, 1, 994, 986, CAST(N'2024-04-04' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (561, 200927, NULL, 1, 1, 984, 980, CAST(N'2024-04-04' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (562, 200928, NULL, 1, 1, 968, 965, CAST(N'2024-04-04' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (563, 200929, NULL, 2, 1, 903, 894, CAST(N'2024-04-04' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (564, 200930, NULL, 2, 1, 993, 982, CAST(N'2024-04-05' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (565, 200931, NULL, 3, 1, 946, 939, CAST(N'2024-04-05' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (566, 200932, NULL, 2, 1, 973, 965, CAST(N'2024-04-05' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (567, 200933, NULL, 2, 1, 939, 930, CAST(N'2024-04-05' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (568, 200934, NULL, 2, 1, 987, 980, CAST(N'2024-04-09' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (569, 200935, NULL, 3, 1, 989, 983, CAST(N'2024-04-09' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (570, 200936, NULL, 3, 1, 993, 991, CAST(N'2024-04-09' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (571, 200937, NULL, 3, 1, 990, 987, CAST(N'2024-04-10' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (572, 200938, NULL, 3, 1, 974, 965, CAST(N'2024-04-10' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (573, 200939, NULL, 3, 1, 984, 978, CAST(N'2024-04-10' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (574, 200940, NULL, 3, 1, 976, 973, CAST(N'2024-04-10' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (575, 200941, NULL, 1, 1, 954, 953, CAST(N'2024-04-10' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (576, 200942, NULL, 3, 1, 1000, 993, CAST(N'2024-04-10' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (577, 200943, NULL, 2, 1, 1000, 992, CAST(N'2024-04-10' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (578, 200944, NULL, 3, 1, 1000, 991, CAST(N'2024-04-10' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (579, 200945, NULL, 1, 1, 1000, 986, CAST(N'2024-04-11' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (580, 200946, NULL, 3, 1, 1000, 985, CAST(N'2024-04-16' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (581, 200947, NULL, 2, 1, 1000, 984, CAST(N'2024-04-16' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (582, 200948, NULL, 2, 1, 1000, 983, CAST(N'2024-04-17' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (583, 200949, NULL, 3, 1, 1000, 982, CAST(N'2024-04-17' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (584, 200950, NULL, 1, 1, 1000, 993, CAST(N'2024-04-17' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (585, 200951, NULL, 1, 1, 1000, 985, CAST(N'2024-04-17' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (586, 200952, NULL, 1, 1, 980, 976, CAST(N'2024-04-18' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (587, 200953, NULL, 1, 1, 965, 963, CAST(N'2024-04-18' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (588, 200954, NULL, 1, 1, 986, 974, CAST(N'2024-04-18' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (589, 200955, NULL, 2, 1, 918, 915, CAST(N'2024-04-22' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (590, 200956, NULL, 2, 1, 974, 965, CAST(N'2024-04-22' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (591, 200957, NULL, 3, 1, 992, 987, CAST(N'2024-04-23' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (592, 200958, NULL, 3, 1, 984, 965, CAST(N'2024-04-23' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (593, 200959, NULL, 3, 1, 991, 986, CAST(N'2024-04-24' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (594, 200960, NULL, 3, 1, 991, 987, CAST(N'2024-04-24' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (595, 200961, NULL, 3, 1, 963, 960, CAST(N'2024-04-24' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (596, 200962, NULL, 3, 1, 915, 911, CAST(N'2024-04-24' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (597, 200963, NULL, 3, 1, 965, 952, CAST(N'2024-04-24' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (598, 200964, NULL, 3, 1, 985, 973, CAST(N'2024-04-24' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (599, 200965, NULL, 2, 1, 1000, 994, CAST(N'2024-04-24' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (600, 200966, NULL, 2, 1, 1000, 991, CAST(N'2024-04-24' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (601, 200967, NULL, 2, 1, 980, 971, CAST(N'2024-04-24' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (602, 200968, NULL, 1, 1, 976, 967, CAST(N'2024-05-02' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (603, 200969, NULL, 1, 1, 993, 990, CAST(N'2024-05-02' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (604, 200970, NULL, 3, 1, 1000, 984, CAST(N'2024-05-02' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (605, 200971, NULL, 3, 1, 1000, 989, CAST(N'2024-05-02' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (606, 200972, NULL, 3, 1, 986, 981, CAST(N'2024-05-02' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (607, 200973, NULL, 1, 1, 953, 952, CAST(N'2024-05-02' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (608, 200974, NULL, 1, 1, 1000, 995, CAST(N'2024-05-02' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (609, 200975, NULL, 1, 1, 987, 975, CAST(N'2024-05-02' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (610, 200976, NULL, 1, 1, 991, 984, CAST(N'2024-05-02' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (611, 200977, NULL, 1, 1, 989, 976, CAST(N'2024-05-02' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (612, 200978, NULL, 1, 1, 975, 970, CAST(N'2024-05-03' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (613, 200979, NULL, 1, 1, 983, 970, CAST(N'2024-05-03' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (614, 200980, NULL, 1, 1, 1000, 988, CAST(N'2024-05-03' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (615, 200981, NULL, 1, 1, 984, 981, CAST(N'2024-05-03' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (616, 200982, NULL, 1, 1, 1000, 993, CAST(N'2024-05-03' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (617, 200983, NULL, 2, 1, 993, 989, CAST(N'2024-05-03' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (618, 200984, NULL, 2, 1, 976, 959, CAST(N'2024-05-07' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (619, 200985, NULL, 2, 1, 911, 907, CAST(N'2024-05-07' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (620, 200986, NULL, 2, 1, 1000, 993, CAST(N'2024-05-07' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (621, 200987, NULL, 3, 1, 1000, 991, CAST(N'2024-05-07' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (622, 200992, NULL, 2, 1, 981, 975, CAST(N'2024-05-08' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (623, 200993, NULL, 1, 1, 993, 985, CAST(N'2024-05-08' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (624, 200994, NULL, 1, 1, 994, 985, CAST(N'2024-05-08' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (625, 200995, NULL, 2, 1, 988, 973, CAST(N'2024-05-08' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (626, 200996, NULL, 2, 1, 1000, 981, CAST(N'2024-05-08' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (627, 200988, NULL, 2, 1, 974, 957, CAST(N'2024-05-08' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (628, 200989, NULL, 3, 1, 1000, 991, CAST(N'2024-05-08' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (629, 200990, NULL, 3, 1, 967, 950, CAST(N'2024-05-08' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (630, 200991, NULL, 2, 1, 1000, 989, CAST(N'2024-05-08' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (631, 200997, NULL, 2, 1, 1000, 985, CAST(N'2024-05-09' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (632, 200998, NULL, 2, 1, 991, 983, CAST(N'2024-05-09' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (633, 200999, NULL, 2, 1, 989, 976, CAST(N'2024-05-09' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (634, 201000, NULL, 2, 1, 995, 983, CAST(N'2024-05-09' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (635, 201001, NULL, 2, 1, 1000, 991, CAST(N'2024-05-10' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (636, 201002, NULL, 2, 1, 970, 959, CAST(N'2024-05-10' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (637, 201003, NULL, 3, 1, 951, 935, CAST(N'2024-05-10' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (638, 201004, NULL, 3, 1, 1000, 989, CAST(N'2024-05-10' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (639, 201005, NULL, 3, 1, 1000, 988, CAST(N'2024-05-10' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (640, 201006, NULL, 3, 1, 973, 960, CAST(N'2024-05-10' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (641, 201007, NULL, 3, 1, 957, 938, CAST(N'2024-05-13' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (642, 201008, NULL, 3, 1, 1000, 994, CAST(N'2024-05-13' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (643, 201009, NULL, 3, 1, 1000, 991, CAST(N'2024-05-13' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (644, 201010, NULL, 3, 1, 959, 951, CAST(N'2024-05-13' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (645, 201011, NULL, 1, 1, 991, 979, CAST(N'2024-05-13' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (646, 201012, NULL, 1, 1, 976, 969, CAST(N'2024-05-13' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (647, 201013, NULL, 1, 1, 983, 978, CAST(N'2024-05-16' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (648, 201014, NULL, 1, 1, 1000, 987, CAST(N'2024-05-16' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (649, 201015, NULL, 1, 1, 1000, 983, CAST(N'2024-05-16' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (650, 201016, NULL, 1, 1, 981, 969, CAST(N'2024-05-21' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (651, 201017, NULL, 1, 1, 988, 975, CAST(N'2024-05-21' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (652, 201018, NULL, 1, 1, 969, 956, CAST(N'2024-05-21' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (653, 201019, NULL, 1, 1, 985, 978, CAST(N'2024-05-21' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (654, 201020, NULL, 1, 1, 987, 978, CAST(N'2024-05-23' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (655, 201021, NULL, 2, 1, 998, 995, CAST(N'2024-05-23' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (656, 201022, NULL, 2, 1, 991, 986, CAST(N'2024-05-23' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (657, 201023, NULL, 2, 1, 1000, 983, CAST(N'2024-05-23' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (658, 201024, NULL, 2, 1, 982, 975, CAST(N'2024-05-23' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (659, 201025, NULL, 3, 1, 1000, 995, CAST(N'2024-05-23' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (660, 201026, NULL, 2, 1, 993, 984, CAST(N'2024-05-24' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (661, 201027, NULL, 3, 1, 991, 978, CAST(N'2024-05-24' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (662, 201028, NULL, 3, 1, 989, 972, CAST(N'2024-05-24' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (663, 201029, NULL, 2, 1, 975, 960, CAST(N'2024-05-24' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (664, 201030, NULL, 2, 1, 991, 984, CAST(N'2024-05-24' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (665, 201031, NULL, 1, 1, 1000, 991, CAST(N'2024-05-24' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (666, 201032, NULL, 1, 1, 978, 967, CAST(N'2024-05-24' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (667, 201033, NULL, 2, 1, 983, 967, CAST(N'2024-05-24' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (668, 201034, NULL, 2, 1, 979, 965, CAST(N'2024-05-24' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (669, 201040, NULL, 2, 1, 985, 978, CAST(N'2024-05-30' AS Date), CAST(N'00:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (670, 201041, NULL, 3, 1, 1000, 991, CAST(N'2024-05-30' AS Date), CAST(N'01:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (671, 201042, NULL, 3, 1, 972, 959, CAST(N'2024-05-30' AS Date), CAST(N'02:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (672, 201043, NULL, 3, 1, 1000, 984, CAST(N'2024-05-30' AS Date), CAST(N'03:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (673, 201044, NULL, 3, 1, 1000, 983, CAST(N'2024-05-30' AS Date), CAST(N'04:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (674, 201045, NULL, 3, 1, 1000, 982, CAST(N'2024-05-30' AS Date), CAST(N'05:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (675, NULL, 15534, 2, 2, 1862, 1919, CAST(N'2024-05-30' AS Date), CAST(N'11:46:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (676, NULL, 15535, 2, 2, 1863, 1924, CAST(N'2024-05-30' AS Date), CAST(N'11:46:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (677, NULL, 15536, 2, 2, 1380, 1449, CAST(N'2024-05-30' AS Date), CAST(N'11:46:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (678, NULL, 15537, 2, 2, 1999, 2062, CAST(N'2024-05-30' AS Date), CAST(N'13:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (679, NULL, 15538, 2, 2, 1924, 1977, CAST(N'2024-05-30' AS Date), CAST(N'13:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (680, NULL, 15539, 2, 2, 1919, 1976, CAST(N'2024-05-30' AS Date), CAST(N'13:03:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (681, NULL, 15540, 2, 2, 2062, 2117, CAST(N'2024-05-30' AS Date), CAST(N'13:16:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (682, NULL, 15541, 2, 2, 1449, 1511, CAST(N'2024-05-30' AS Date), CAST(N'13:16:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (683, NULL, 15542, 2, 2, 1514, 1562, CAST(N'2024-05-30' AS Date), CAST(N'13:16:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (684, 201035, NULL, 2, 1, 1000, 993, CAST(N'2024-05-30' AS Date), CAST(N'19:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (685, 201036, NULL, 2, 1, 1000, 992, CAST(N'2024-05-30' AS Date), CAST(N'20:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (686, 201037, NULL, 2, 1, 1000, 991, CAST(N'2024-05-30' AS Date), CAST(N'21:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (687, 201038, NULL, 2, 1, 1000, 996, CAST(N'2024-05-30' AS Date), CAST(N'22:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (688, 201039, NULL, 2, 1, 1000, 995, CAST(N'2024-05-30' AS Date), CAST(N'23:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (689, 201046, NULL, 3, 1, 1000, 981, CAST(N'2024-05-31' AS Date), CAST(N'06:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (690, 201047, NULL, 3, 1, 994, 987, CAST(N'2024-05-31' AS Date), CAST(N'07:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (691, 201048, NULL, 3, 1, 991, 983, CAST(N'2024-05-31' AS Date), CAST(N'08:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (692, 201049, NULL, 3, 1, 1000, 995, CAST(N'2024-05-31' AS Date), CAST(N'09:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (693, 201050, NULL, 2, 1, 1000, 988, CAST(N'2024-06-02' AS Date), CAST(N'10:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (694, 201051, NULL, 2, 1, 1000, 985, CAST(N'2024-06-02' AS Date), CAST(N'11:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (695, 201052, NULL, 1, 1, 991, 976, CAST(N'2024-06-03' AS Date), CAST(N'12:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (696, 201053, NULL, 1, 1, 1000, 986, CAST(N'2024-06-03' AS Date), CAST(N'13:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (697, 201054, NULL, 2, 1, 1000, 982, CAST(N'2024-06-03' AS Date), CAST(N'14:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (698, 201055, NULL, 2, 1, 1000, 993, CAST(N'2024-06-03' AS Date), CAST(N'15:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (699, NULL, 15543, 1, 2, 1976, 2033, CAST(N'2024-06-03' AS Date), CAST(N'18:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (700, NULL, 15544, 1, 2, 1569, 1638, CAST(N'2024-06-03' AS Date), CAST(N'18:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (701, NULL, 15545, 1, 2, 2073, 2145, CAST(N'2024-06-03' AS Date), CAST(N'18:36:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (702, 201056, NULL, 2, 1, 1000, 991, CAST(N'2024-06-04' AS Date), CAST(N'16:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (703, 201057, NULL, 3, 1, 1000, 985, CAST(N'2024-06-04' AS Date), CAST(N'17:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (704, 201058, NULL, 3, 1, 1000, 991, CAST(N'2024-06-04' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (705, 201059, NULL, 3, 1, 993, 989, CAST(N'2024-06-04' AS Date), CAST(N'18:31:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (706, NULL, 15546, 1, 2, 1511, 1564, CAST(N'2024-06-05' AS Date), CAST(N'18:41:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (707, NULL, 15547, 1, 2, 1413, 1471, CAST(N'2024-06-05' AS Date), CAST(N'18:41:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (708, NULL, 15548, 1, 2, 1562, 1634, CAST(N'2024-06-05' AS Date), CAST(N'18:41:00' AS Time))
GO
INSERT inventario (id_inventario, id_pedido_detalle, id_compra_detalle, id_sucursal, id_tipo_operacion, stock_actual, stock_final, fecha_inventario, hora_inventario) VALUES (709, 201060, NULL, 1, 1, 952, 949, CAST(N'2024-06-05' AS Date), CAST(N'19:31:00' AS Time))
GO

