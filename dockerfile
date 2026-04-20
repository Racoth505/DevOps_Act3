FROM python:3.9
WORKDIR /app

# Copia solo el archivo de requerimientos primero (para aprovechar el caché)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# CRUCIAL: Copia el CONTENIDO de tu carpeta local 'app' al WORKDIR '.' (que es /app)
COPY app/ . 

EXPOSE 5000
CMD ["python", "app.py"]