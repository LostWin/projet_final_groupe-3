# Utilisation de l'image python:3.6-alpine comme image de base
FROM python:3.6-alpine

# Définir le répertoire de travail
WORKDIR /opt

# Copier le code source dans l'image
COPY . /opt

# Installer Flask
RUN pip install flask

# Définir les variables d'environnement
ENV ODOO_URL=http://localhost:8069
ENV PGADMIN_URL=http://localhost:5050

# Exposer le port 8080
EXPOSE 8080

# Lancer l'application Flask
ENTRYPOINT ["python", "app.py"]
