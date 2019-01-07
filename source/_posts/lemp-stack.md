---
title: LEMP Stack
date: 2018-12-31 21:17:49
tags:
---

### Set locale

In `/etc/default/locale`, set the following

```
LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8
LC_ALL=en_US.UTF-8
```

### Update apt-get

``` bash
$ sudo apt-get update
```

### Install Nginx

``` bash
$ sudo apt-get install nginx
```

Try http://ip-address to see if nginx loads properly


### Install MySQL Server

``` bash
$ sudo apt-get install mysql-server
```

### Install PHP

``` bash
$ sudo apt-get install php-fpm php-mysql
```

### Install phpmyadmin

``` bash
$ sudo apt-get install phpmyadmin
```

Create symlink of phpmyadmin with 

``` bash
$ sudo ln -s /usr/share/phpmyadmin /var/www/html
```

NOTE: Change nginx sites-available for php and phpmyadmin

### Create New User for phpmyadmin

``` bash
$ sudo mysql --user=root mysql
```

``` mysql
> CREATE USER ‘admin’@‘localhost' IDENTIFIED BY 'some_pass';
> GRANT ALL PRIVILEGES ON *.* TO ‘admin’@‘localhost' WITH GRANT OPTION;
> FLUSH PRIVILEGES;
```

### Create swap file

[Digitalocean Tutorial](https://www.digitalocean.com/community/tutorials/how-to-configure-virtual-memory-swap-file-on-a-vps#4)

Check if swap exists with
``` bash
$ free
```

Create swapfile with
``` bash
$ cd /var
$ sudo touch swap.img
$ sudo chmod 600 swap.img
$ sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
$ sudo mkswap /var/swap.img
$ sudo swapon /var/swap.img
```

### Install Nodejs

``` bash
$ curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
$ sudo apt-get install -y nodejs
```