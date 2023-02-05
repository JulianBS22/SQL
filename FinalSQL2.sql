SELECT v.idModelo AS "Nombre modelo", v.idMarca AS "Marca", g.idfabricante  AS "Fabricante",
       v.añocompra AS "Fecha de compra", v.matricular AS "Matricula", v.color AS "Color del coche",
       v.kilómetros AS "Total kilómetros", a.idaseguradora  AS "Empresa Aseguradora",
       a.numeropoliza AS "Número de póliza"
FROM prueba_dll.vehículo v 
JOIN prueba_dll.fabricante  g ON v.idFabricante = g.idFabricante AND v.idMarca = g.idMarca
JOIN prueba_dll.Aseguradora a ON v.idAseguradora = a.idAseguradora;


