# Usa una imagen base oficial de MySQL
FROM mysql:latest

# Establece las variables de entorno para la base de datos
ENV MYSQL_DATABASE=ferrexpress
ENV MYSQL_ROOT_PASSWORD=12345

# Copia el archivo SQL de la base de datos al contenedor
COPY bd_ferreteria_ferrexpress.sql /docker-entrypoint-initdb.d/

# Expone el puerto 3306
EXPOSE 3306
