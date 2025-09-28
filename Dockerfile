rea un Dockerfile para contenerizar la app:

# Usamos imagen oficial de Python
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Exponemos el puerto que Cloud Run usará
EXPOSE 8080

# Ejecutamos la app
CMD ["python", "main.py"]
