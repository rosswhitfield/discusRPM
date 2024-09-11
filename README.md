# discusRPM

Make a RPM for discus/diffuse https://github.com/tproffen/DiffuseCode

## build RPM

```
docker build . -f Dockerfile.buildRPM -t discus_rpm
```


## start container so that you can copy the RPM

```
docker run -itd --rm --name discus_rpm discus_rpm
docker cp discus_rpm:/build/diffuse-6.17.02-1.x86_64.rpm .
docker stop discus_rpm
```

## test RPM in new container

```
docker build . -t discus
docker run -it --rm discus
```
