# Docker Multi CPU Miner for Minergate

uses wolf9466/cpuminer-multi

#requirements
a docker host

## run
```
docker run -d --name dm \
-e "EMAIL=your@emailaddress.com" \
-e "CURR=XMR" \
weop/dminer;
```

## stop 
```
docker kill dm && docker rm dm
```
