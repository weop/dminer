# Containerized CPU Miner for Minergate

uses wolf9466/cpuminer-multi

#requirements
a docker host

## run
```
docker build -t dm 
docker run -d --name dm -e "EMAIL=your@emailaddress.com" dminer;
```

##stop 
```
docker kill dm && docker rm dm
```