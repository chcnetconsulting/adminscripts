REQUESTV="5.5"

V1=`wget -q -O - http://php.net/downloads.php | grep "PHP ${REQUESTV}"|grep "Changelog"`
VER=`echo $V1 | cut -d' ' -f 2`
LINK="http://ch1.php.net/get/php-${VER}.tar.bz2/from/this/mirror"
FILE="php-${VER}.tar.bz2"

wget -q -O $FILE $LINK

tar  xfj $FILE
cd "php-${VER}"


./configure \
--prefix=/opt/php-5.5 \
--with-pdo-pgsql \
--with-zlib-dir \
--with-freetype-dir \
--enable-mbstring \
--with-libxml-dir=/usr \
--enable-soap \
--enable-calendar \
--with-curl \
--with-mcrypt \
--with-zlib \
--with-gd \
--disable-rpath \
--enable-inline-optimization \
--with-bz2 \
--with-zlib \
--enable-sockets \
--enable-sysvsem \
--enable-sysvshm \
--enable-pcntl \
--enable-mbregex \
--with-mhash \
--enable-zip \
--with-pcre-regex \
--with-mysql \
--with-pdo-mysql \
--without-pdo-pgsql \
--with-mysqli \
--with-jpeg-dir=/usr \
--with-png-dir=/usr \
--enable-gd-native-ttf \
--with-openssl \
--with-fpm-user=www-data \
--with-fpm-group=www-data \
--with-libdir=/lib/x86_64-linux-gnu \
--enable-ftp \
--with-imap \
--with-imap-ssl \
--with-kerberos \
--with-gettext \
--enable-fpm \
--enable-opcache

make && make install

service apache2 restart
service php-5.5-fpm restart
