USE dbDistribuidora
GO
--10 CONSULTAS PARA 10 PREGUNTAS

--PREGUNTA 01: ¿Que producto tuvo mayor venta y en que sucursal  durante 2023?
SELECT TOP 1 p.id_producto, p.descripcion as Producto, SUM(dp.cantidad) AS Unidades_Vendidas, s.id_sucursal as Cod_sucursal, s.nombre as Sucursal
FROM productos p
INNER JOIN pedido_detalle dp ON p.id_producto = dp.id_producto
INNER JOIN pedidos pe ON dp.id_pedido = pe.id_pedido
INNER JOIN sucursales s ON pe.id_sucursal = s.id_sucursal
WHERE year(pe.fecha_pedido) = 2023
GROUP BY 
p.id_producto,
p.descripcion,
s.id_sucursal,
s.nombre
ORDER BY
Unidades_Vendidas DESC


--PERGUNTA 02: ¿Cuantos clientes fueron atendidos  durante el primer trimestre del 2024 en cada sucursal?
SELECT 
    pe.id_sucursal,
        s.nombre,
    COUNT(DISTINCT pe.id_cliente) AS Clientes_atendidos
FROM 
    pedidos as pe 
        INNER JOIN pedido_detalle as pd ON pe.id_pedido = pd.id_pedido
        INNER JOIN sucursales as s ON pe.id_sucursal = s.id_sucursal

WHERE datepart(quarter,pe.fecha_pedido) = 1 
  and datepart(year,pe.fecha_pedido)= 2024
   
GROUP BY 
    pe.id_sucursal,
        s.nombre
        ORDER BY
Clientes_atendidos DESC

--PREGUNTA 03: ¿Cuantos pedidos atendieron  los vendedores en cada sucursal en el primer semestre  del 2023?
SELECT 
    pe.id_vendedor,
        v.apellidos + ' ' + v.nombres as Nombre,
		COUNT(distinct pe.id_pedido) AS Atencion_vendedor,
        pe.id_sucursal,
        s.nombre
FROM 
    pedidos as pe 
        INNER JOIN pedido_detalle as pd ON pe.id_pedido = pd.id_pedido
        INNER JOIN sucursales as s ON pe.id_sucursal = s.id_sucursal
        INNER JOIN vendedores as v ON pe.id_vendedor = v.id_vendedor
WHERE DATEPART(YEAR, pe.fecha_pedido) = 2023
    AND DATEPART(QUARTER, pe.fecha_pedido) in (1,2)
   
GROUP BY 
        pe.id_vendedor,
    pe.id_sucursal,
        s.nombre,
        v.apellidos,
        v.nombres
        ORDER BY
Atencion_vendedor DESC


--PREGUNTA 04: ¿Que productos fueron los menos vendidos  en cada sucursal en el segundo semestre del 2023? 
SELECT p.id_producto, 
p.descripcion as Producto, 
SUM(dp.cantidad) AS Unidades_Vendidas, 
count(distinct dp.id_pedido) AS Pedidos, 
s.id_sucursal as Cod_sucursal, 
s.nombre as Sucursal

FROM productos p
INNER JOIN pedido_detalle dp ON p.id_producto = dp.id_producto
INNER JOIN pedidos pe ON dp.id_pedido = pe.id_pedido
INNER JOIN sucursales s ON pe.id_sucursal = s.id_sucursal
WHERE DATEPART(YEAR, pe.fecha_pedido) = 2023
    AND DATEPART(QUARTER, pe.fecha_pedido) in (3,4)
GROUP BY 
p.id_producto,
p.descripcion,
s.id_sucursal,
s.nombre
ORDER BY
Unidades_Vendidas DESC


--PREGUNTA 05: ¿Cual ha sido la forma de pago mas frecuente en cada sucursal durante el 2023?
SELECT fp.id_forma_pago, fp.descripcion as forma_Pago, 
COUNT(distinct pe.id_pedido) AS Pedidos, 
s.id_sucursal as Cod_sucursal, s.nombre as Sucursal
FROM pedidos pe
INNER JOIN forma_pago fp ON pe.id_forma_pago = fp.id_forma_pago
INNER JOIN sucursales s ON pe.id_sucursal = s.id_sucursal
WHERE DATEPART(YEAR, pe.fecha_pedido) = 2023
GROUP BY 
fp.id_forma_pago,
fp.descripcion,
s.id_sucursal,
s.nombre
ORDER BY
s.id_sucursal, pedidos DESC


--PREGUNTA 06: ¿Que sucursal registro mayores ventas de licores durante el año 2023?
SELECT c.id_categoria, 
c.descripcion as Categoria, 
SUM(dp.cantidad) AS Licores_vendidos, 
s.id_sucursal as Cod_sucursal, s.nombre as Sucursal

FROM productos p
INNER JOIN pedido_detalle dp ON p.id_producto = dp.id_producto
INNER JOIN pedidos pe ON dp.id_pedido = pe.id_pedido
INNER JOIN sucursales s ON pe.id_sucursal = s.id_sucursal
INNER JOIN categorias c ON c.id_categoria = p.id_categoria
WHERE DATEPART(YEAR, pe.fecha_pedido) = 2023 and p.id_categoria=2 --LICORES
GROUP BY 
c.id_categoria,
 c.descripcion,
s.id_sucursal,
s.nombre
ORDER BY
Licores_vendidos DESC


--PREGUNTA 07: ¿Cuantos pedidos por sucursal  hicieron los clientes  durante el año 2023?
SELECT COUNT( DISTINCT pe.id_pedido) AS Cantidadd_pedidos, 
s.id_sucursal as Cod_sucursal, 
s.nombre as Sucursal
FROM pedidos pe
INNER JOIN sucursales s ON pe.id_sucursal = s.id_sucursal
WHERE DATEPART(YEAR, pe.fecha_pedido) = 2023
GROUP BY 
s.id_sucursal,
s.nombre
ORDER BY
Cantidadd_pedidos DESC


--PREGUNTA 08: ¿Que categoria de productos presentaron mayores pedidos en cada sucursal durante el primer trimestre del 2024?
SELECT 
    s.nombre AS sucursal, 
    c.descripcion AS categoria, 
    SUM(distinct pd.cantidad) AS total_pedidos
FROM 
    pedidos p
    INNER JOIN pedido_detalle pd ON p.id_pedido = pd.id_pedido
    INNER JOIN productos pr ON pd.id_producto = pr.id_producto
    INNER JOIN categorias c ON pr.id_categoria = c.id_categoria
    INNER JOIN sucursales s ON p.id_sucursal = s.id_sucursal
WHERE 
   	DATEPART(YEAR, p.fecha_pedido) = 2024
    AND DATEPART(QUARTER, p.fecha_pedido) = 1
GROUP BY 
    s.nombre, c.descripcion
ORDER BY 
    s.nombre, total_pedidos DESC
	

--PREGUNTA 09: ¿Que proveedores abastecieron de productos  de categoría de productos lacteos durante el segundo trimestre del 2023?
SELECT DISTINCT
    c.id_proveedor,
    p.razon_social,
        COUNT(cd.cantidad) AS total_compras
FROM
    compras c
    JOIN compras_detalle cd ON c.id_compra = cd.id_compra
    JOIN productos pr ON cd.id_producto = pr.id_producto
    JOIN categorias cat ON pr.id_categoria = cat.id_categoria
    JOIN proveedores p ON c.id_proveedor = p.id_proveedor
WHERE
    DATEPART(YEAR, c.fecha_compra) = 2023
    AND DATEPART(QUARTER, c.fecha_compra) = 2
    AND cat.id_categoria = 5 --'PRODUCTOS LACTEOS'
GROUP BY
    c.id_proveedor, p.razon_social
ORDER BY
    c.id_proveedor;
				

--PREGUNTA 10: ¿Cuales son los 3 productos mas solicitados en los pedidos por cada sucursal en el primer trimestre del 2024?
 WITH MasVendidos AS (
  SELECT
        p.id_sucursal, s.nombre, pd.id_producto, pr.descripcion,
        SUM(pd.cantidad) AS total_vendida,
        ROW_NUMBER() OVER (PARTITION BY p.id_sucursal ORDER BY SUM(pd.cantidad) DESC) AS ranking
    FROM
        pedidos p
        JOIN pedido_detalle pd ON p.id_pedido = pd.id_pedido
                JOIN sucursales s ON p.id_sucursal = s.id_sucursal
                JOIN productos pr ON pd.id_producto = pr.id_producto
    WHERE
        DATEPART(YEAR, p.fecha_pedido) = 2024
        AND DATEPART(QUARTER, p.fecha_pedido) = 1
    GROUP BY
        p.id_sucursal, s.nombre, pd.id_producto, pr.descripcion
)

SELECT
    id_sucursal, nombre, id_producto, descripcion, total_vendida
FROM
    MasVendidos
WHERE
    ranking <= 3
ORDER BY
    id_sucursal, ranking					
