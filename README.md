# Morpheus

This is a small script that "wakes up" docker containers on a specific folder. It basically goes to all the folders that it receives as arguments, and runs `docker-compose up -d` on them. 

As of now this script is here just because i don't like to do that on my own, as it can be quite cumbersome when working on multiple services. I might add some extra features on the future.