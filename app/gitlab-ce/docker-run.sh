docker rm -v -f gitlab
docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 --publish 8081:8081 --publish 23:22 \
    --name gitlab \
    --restart always \
    --volume /app/gitlab-ce/config:/etc/gitlab \
    --volume /app/gitlab-ce/logs:/var/log/gitlab \
    --volume /app/gitlab-ce/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
    
## root 11111111

## sudo docker exec -it gitlab vi /etc/gitlab/gitlab.rb