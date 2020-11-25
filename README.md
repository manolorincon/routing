Prueba Técnica para la gestión de Rutas, Conductores y Vehículos.

Para visualizar la aplicación deben ingresar a:


Algoritmo diseñado para el funcionamiento de la aplicación.

1.- Se crean los modelos

- Route
- Stop
- Driver
- Vehicle
- Comuna (Solo Región Metropolitana)

2- Dentro de una Ruta, pueden existir una o más paradas.
3- En las paradas se encuentran los siguientes parámetros: Carga (Kgs), Direccion, Comuna y Tipo de Carga (General y Refrigerada)
4- El conductor puede o no, tener un vehículo asignado.
5- El conductor tiene comunas específicas donde pueden conducir. Adicionalmente, el conductor tiene un máximo de paradas (stops) que pueden aceptar.
6- Los vehículos tienen un tipo de carga que pueden almacenar y una capacidad máxima.
7- Para asignar un conductor a una ruta, se deben verificar las comunas de todas las paradas de la ruta contra las comunas específicas que manejan los conductores para saber cuáles conductores pueden tomar esa ruta.
8- Verificar el total de stops de una ruta contra el máximo de rutas aceptadas por estos conductores.
9- Finalmente, verificar la carga total de la ruta contra la capacidad máxima de cada vehículo y el tipo de carga de la ruta contra el tipo de carga del vehículo.
