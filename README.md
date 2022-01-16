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
    - Place the IPs in (34.135.154.15)
        - security.properties
        - url.properties
        - entrypoint.sh

    

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
# ./compose-up.sh mysql
 
b) Deploy OFBiz with PostgreSQL Database.
# ./compose-up.sh postgres

Step 5. Access Apache OFBiz at https://hostip:8443/ and https://hostip:8443/webtools/control/main

Step 6. To stop and remove containers run
# ./compose-down.sh msyql/postgres
 

