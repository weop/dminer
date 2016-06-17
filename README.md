# Containerized CPU Miner for Minergate

uses wolf9466/cpuminer-multi

#requirements
a docker host

## run
```
docker pull weop/dminer
docker run -d --name dm -e "EMAIL=your@emailaddress.com" dminer;
```

## stop 
```
docker kill dm && docker rm dm
```
