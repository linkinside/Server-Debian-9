### Script para instalação e configuração de um servidor LEMP
### Nginx - MariaDB - PHP
### Dist. Debian 9 (Strech)

### Atualizado em 23/06/2017
### Por Aristides Neto
 
### Salvar o script em um diretório de sua preferência
### Dar permissão de execução

### Iniciando...

### Criando uma copia do arquivo sources.list
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/

### Inserindo as chaves do repositórios

### Atualizando a lista de pacotes
apt update && apt upgrade && apt dist-upgrade

### Pacotes essenciais
apt install curl wget apt-transport-https dirmngr lsb-release ca-certificates zip

### Instalando os serviços

### MySQL (MariaBD)
echo "Instalando o banco de dados MariaDB..."
apt install mariadb-server
echo "Ajustar permissões de segurança..."
mysql_secure_installation
 
### Nginx 
### colocar aqui para baixar a ultima versao do nginx
echo "Instalando Servidor Nginx..."
apt install nginx
 
### PHP 7.1
echo "Instalando PHP 7.1..."
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ ($lsb_release -cs) main" > /etc/apt/sources.list.d/php.list
apt update
apt install php7.1-cli php7.1-fpm php7.1-mysql php7.1-curl php-memcached php7.1-dev php7.1-mcrypt php7.1-sqlite3 php7.1-mbstring
 
### Arquivo de configuração Nginx
echo "Configurando o Servidor Nginx"
echo "Será criado um arquivo de configuração em /etc/nginx/sites-available..."
mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enabled
cp 
 
nano /etc/nginx/sites-available/default
wget https://gist.github.com/e129a2a46aca2cdc1fd2defcacf67fbf.git
