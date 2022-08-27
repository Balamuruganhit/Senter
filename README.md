#### InnOps Ofbiz Implementation Dockerized

##### Prerequest
    
    - Create an VM
    - Install the followings
        sudo apt install wget
        sudo apt install git
        
        # Install docker in linux debian 10 
        # Reference : https://docs.docker.com/engine/install/debian/, docker-compose https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-debian-10
        sudo apt-get update
        sudo apt-get install \
            ca-certificates \
            curl \
            gnupg \
            lsb-release
        curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
        echo \
          "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
          $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update
        sudo apt-get install docker-ce docker-ce-cli containerd.io
        sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        sudo chmod +x /usr/local/bin/docker-compose
        
    - Create an external IP, by allowing http, https
    - Place the IPs in (146.148.63.74)
      dir 
        - ofbiz/framework/security/config/security.properties        
        - ofbiz/framework/webapp/config/url.properties
        - entrypoint.sh

##### Deployment Steps
    
    Clone the project for the first time
    
    abikrishnan1995@ofbiz-v1:~$ git clone -b dev-pangun https://github.com/sathishmtech01/ofbiz-docker-v1.git
    Cloning into 'ofbiz-docker-v1'...
    Username for 'https://github.com': sathishmtech01
    Password for 'https://sathishmtech01@github.com': 
    ..........................................
    Resolving deltas: 100% (2444/2444), done.
    
    
    Go to the project folder
    abikrishnan1995@ofbiz-v1:~$ cd ofbiz-docker-v1
    
    Run the docker compose file
    abikrishnan1995@ofbiz-v1:~/ofbiz-docker-v1$ sudo ./compose-up.sh mysql

# List docker container running

sathish_mtech01@pangun-v0:~/ofbiz-docker-v1$ sudo docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS         PORTS                                                                                  NAMES
430706f0173a   ofbiz       "/bin/sh -c './entry…"   8 seconds ago   Up 7 seconds   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp, 0.0.0.0:8443->8443/tcp, :::8443->8443/tcp   OFBiz-Containers
bdce634f3405   mysql:5.7   "docker-entrypoint.s…"   9 seconds ago   Up 8 seconds   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp, 33060/tcp                                   DB-Containers

# Checking the container logs
sathish_mtech01@pangun-v0:~/ofbiz-docker-v1$ sudo docker logs -f 430706f0173a
Downloading https://services.gradle.org/distributions/gradle-6.5-bin.zip
.........10%..........20%..........30%..........40%.........50%..........60%..........70%..........80%.........90%..........100%

Welcome to Gradle 6.5!
..............


# InnOps- FBiz-Docker
Deploy Apache OFBiz Using Docker on GCP VM

Required softwares.
1. Docker-ce installed.
2. Docker-compose installed.
3. Git Installed.

Steps to  Created Docker of OFBiz.

Step 1. Clone This repo

Step 2. Go to cloned directory.

a) Deploy OFBiz with Mysql Database.
# sudo ./compose-up.sh mysql
 
b) Deploy OFBiz with PostgreSQL Database.
# ./compose-up.sh postgres

Step 5. Access Apache OFBiz at https://hostip:8443/ and https://hostip:8443/webtools/control/main

Step 6. To stop and remove containers run
# ./compose-down.sh msyql/postgres
 

