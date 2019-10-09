SELECT nombre from empleado LIMIT 50;

EMPLEADO
=====
id
nombreapellido
fechaconttracto
emaildepartamento
salario


select * from empleados where aoellidos = "Green";
select * from empleados where salario > 15000;
select * from rrhh.empleados where salario > 15000
select * from empleado where salrio > 50000 and deparement = "Ventas";


where departamentto ="marketin" or CountryCode

deparmennete in ("ventas", "marketin")

like "Green%" => empezaran por Green
like "sm_th" => 1 caracter cualquiera
like "s_i_h" => 2 caracteres cualquiera
like "__i_h" => 3 caracteres cualquiera

where inicial is NULL => campo nulo

ORDENAR
============
select descripcion, precio, color
from producto
order by precio Desc; tambien existe ASC
--
select *
from empleado
where salario > 5000
order by Apellido, Nombre;






















