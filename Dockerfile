# Deklaracja warstwy bazowej - ubuntu
FROM ubuntu:latest
# Aktualizowanie systemu Ubuntu
RUN apt-get update && apt-get upgrade -y
# Instalowanie serwera HTTP Apache
RUN apt-get install -y apache2
# Kopiowanie strony WWW
COPY index.html /var/www/html/
# Port,na którym będzie nasłuchiwać serwer
EXPOSE 8080
# Informacja o autorze
LABEL author="Maryia Sialkovich"
LABEL email="s97837@pollub.edu.pl"
# Uruchomenie serwera Apache w trybie foregroud po uruchomieniu kontenera
CMD ["apache2ctl", "-D", "FOREGROUND"]