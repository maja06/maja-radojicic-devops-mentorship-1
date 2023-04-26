### Deployment aplikacije

-   Instalirati  `nginx`
-   Kreirati novi  `nginx conf`  file za našu aplikaciju
-   Provjeriti da li postoje parovi public i private kljucevi, ako ne -> kreirati ih
-   Intalirati  `git`
-   Instalirati  `npm`,  `node`  i potrebne biblioteke i alate
-   instalirati  `pm2`  i pokrenuti  `server.js`


### Instaliramo nginx

1.  `$ sudo su -`  da se prebacimo na root korisnika
2.  `$ yum install nginx -y`  instaliramo NGINX
3.  `$ systemctl start nginx`  pokrenemo NGINX

---  **refresh stranicu u browseru i dobijemo defaultni  _Welcome to nginx_**  ---

4.  `$ systemctl enable nginx`  da omogućimo pokretanje nginx pri boot-u

---  **Kreiramo novi nginx conf file za našu veb aplikaciju**  --- svi novi fajlovi moraju biti u  `conf.d`  i imati ekstenziju  `.conf`

5.  `$ cd /etc/nginx/conf.d`  pozicioniramo se u  `conf.d`
6.  `$ sudo touch node-app.conf`  kreiramo  `node-app.conf`  file u kojem podesimo sljedece:
7.  `$ vi node-app.conf`  da editujemo fajl

 -

    server {   listen 80;   server_name 18.196.153.236/; # public ip
           adresa   
           location / {
               proxy_pass http://127.0.0.1:8008; # localhost 127.0.0.1 na portu 8008 kako je navedeno u app konfiguraciji
               proxy_http_version 1.1;
               proxy_set_header Upgrade $http_upgrade;
               proxy_set_header Connection 'upgrade';
               proxy_set_header Host $host;
               proxy_cache_bypass $http_upgrade;   
              }
           }

8.  `$ sudo systemctl restart nginx`  restartujemo nginx
9.  Provjerimo stanje nginx, da li je running  `$ systemctl status nginx`  ili  `$ ps aux | grep nginx`

### Git

---  **Kreiranje public private key**  ---

`$ ls -la`  i vidimo  `.ssh`  direktorij  `$cd .ssh/`  `$ ls -la`  gdje vidimo da imamo fajl  `authorized_keys`  nemamo public i private key parove

`ssh-keygen -t rsa`  komanda za kreiranje kljuca  `$ ls -la`  da vidimo da li su kreirani ključevi  `$ cat id_rsa.pub`  i kopiramo ključ na naš GitHub profil ->  `Settings`  ->  `SSH and GPG keys`  naziv mog ključa ->  `ec2-instance-amazon-linux-git`

### Instaliranje git na server i clone aplikacije

1.  `$ yum install git -y`  instaliramo  `git`na serveru
    
2.  Odemo na klijentov GitHub gdje je smještena app -  [https://github.com/allops-solutions/nodejs-simple-app](https://github.com/allops-solutions/nodejs-simple-app)
    
3.  Kopiramo SSH link  `Code`  ->  `SSH`  ->  `Copy link`
    
4.  Uradimo  `git clone`  `$ git clone git@github.com:allops-solutions/nodejs-simple-app.git`
    
5.  `$ ls -la`  i imamo  `nodejs-simple-app`  direktorij kreiran


### Instaliranje nvm i npm


curl -o-  [https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh](https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh)  | bash

. ~/.nvm/nvm.sh

nvm install node


### Pokretanje aplikacije

1.  `$ cd nodejs-simple-app`
    
2.  `$ ls`  i pronađemo file  `server.js`
    
3.  `$ npm install` instaliramo pakete iz js
    
4.  `$ node app.js`  da pokrenemo aplikaciju
    
5.  `$ ps aux | grep node`  da provjerimo da li se aplikacija pokrenula gdje smo vidjeli da aplikacija nije pokrenuta
    
6.  `$ node server.js`  Aplikacija bi se trebala prikazati kada ukucamo u browser  `http://ip-adresa:8008`
    

-   Ako ne uspijete pokrenuti app nakon ovog koraka, instalirajte  `pm2`  i pokrenite app u  _Incognito mode_  ili drugom browseru.


---  **Instalacija process manager-a**  ---

    $ npm install -g pm2 # Install pm2 process manager
    $ pm2 start server.js # Start Node.js application

-   Aplikaciju pokrećemo sada pomoću  **pm2**  gdje je u pozadini pokrenut naš proces.
-   Koristiti  _Incognito mode_  ili drugi browser i kucati  `http://ip-adresa`  ili  `http://ip-adresa:8008`

---  **Dodatne opcije koje možemo provjeriti sa  _pm2_**  ---

    $ pm2 log # pogledamo logove na našem serveru
    $ pm2 status # status aplikacija