# DOCKER
alias dstopcont='sudo docker stop $(docker ps -a -q)'
alias drmcont='sudo docker rm $(docker ps -a -q)'
alias dvolprune='sudo docker volume prune'
alias dsysprune='sudo docker system prune -a'
alias ddelimages='sudo docker rmi $(docker images -q)'
alias docerase='dstopcont ; drmcont ; ddelimages ; dvolprune ; dsysprune'
alias docprune='ddelimages ; dvolprune ; dsysprune'
alias dexec='docker exec -ti'
alias docps='docker ps -a'
alias dcrm='dcrun rm'
alias docdf='docker system df'

# STACK UP AND DOWN
alias dc1down='cd /home/USER/docker ; dcdown1v ; dcdown1'
alias dc1up='cd /home/USER/docker ; docker network create traefik_proxy ; dcrec1 plexms ; dcup1 ; dcup1v'
alias dc2down='cd /home/USER/docker ; dcdown2v ; dcdown2'
alias dc2up='cd /home/USER/docker ; docker network create --gateway 192.168.90.1 --subnet 192.168.90.0/24 t2_proxy ; dcrec2 plexms ; dcup2 ; dcup2v'

# DOCKER TRAEFIK 1
alias dcrun1='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t1.yml '
alias dclogs1='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t1.yml logs -tf --tail="50" '
alias dcup1='dcrun1 up -d'
alias dcdown1='dcrun1 down'
alias dcrec1='dcrun1 up -d --force-recreate'
alias dcstop1='dcrun1 stop'
alias dcrestart1='dcrun1 restart '
alias dcpull1='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t1.yml pull'

# DOCKER TRAEFIK 1 VPN
alias dcrun1v='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t1-vpn.yml '
alias dclogs1v='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t1-vpn.yml logs -tf --tail="50" '
alias dcup1v='dcrun1v up -d'
alias dcdown1v='dcrun1v down'
alias dcrec1v='dcrun1v up -d --force-recreate'
alias dcstop1v='dcrun1v stop'
alias dcrestart1v='dcrun1v restart '
alias dcpull1v='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t1-vpn.yml  pull'

# DOCKER TRAEFIK 2
alias dcrun2='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t2.yml '
alias dclogs2='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t2.yml logs -tf --tail="50" '
alias dcup2='dcrun2 up -d'
alias dcdown2='dcrun2 down'
alias dcrec2='dcrun2 up -d --force-recreate'
alias dcstop2='dcrun2 stop'
alias dcrestart2='dcrun2 restart '
alias dcpull2='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t2.yml  pull'

# DOCKER TRAEFIK 2 VPN
alias dcrun2v='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t2-vpn.yml '
alias dclogs2v='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t2-vpn.yml logs -tf --tail="50" '
alias dcup2v='dcrun2v up -d'
alias dcdown2v='dcrun2v down'
alias dcrec2v='dcrun2v up -d --force-recreate'
alias dcstop2v='dcrun2v stop'
alias dcrestart2v='dcrun2v restart '
alias dcpull2v='cd /home/USER/docker ; docker-compose -f /home/USER/docker/docker-compose-t2-vpn.yml  pull'

# DOCKER TRAEFIK 1 SWARM
alias dslogs='docker service logs -tf --tail="50"'
alias dsps='docker stack ps zstack'
alias dsse='docker stack services zstack'
alias dsls='docker stack ls'
alias dsrm='docker stack rm'
alias dsup='docker stack deploy --compose-file /home/USER/docker/docker-compose-swarm.yml zstack'
alias dshelp='echo "dslogs dsps dsse dsls dsrm dsup"'
