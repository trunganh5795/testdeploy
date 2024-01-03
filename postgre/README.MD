\c bkshop // connect to database
\dt // show all tables
sudo docker rm -f $(sudo docker ps -aq) //remove all container
sudo docker exec -it PostgresCont bash
psql -U postgres -d bkshop
sudo docker volume ls
sudo docker volume prune // delete all volume
sudo docker volume rm $(sudo docker volume ls -qf dangling=true) // delete all darling volume
docker rm PostgresCont
sudo docker ps -a //show all containers
