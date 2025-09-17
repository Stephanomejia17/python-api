# Aquí especificamos la imagen base
FROM python:3.7.11-slim

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR  /python-api

# Copiamos el archivo de requerimientos al contenedor
COPY requirements.txt requirements.txt

# Instalamos las dependencias necesarias de python establecidas en requirements.txt
RUN pip install -r requirements.txt

# Copiamos el contenido del directorio actual al contenedor
COPY . .

# Ejecutamos la aplicación Flask desde el contenedor y la hacemos accesible desde cualquier IP
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
