# node-feperf-monitor-server

Feperf provides a simple front-end performance monitor for websites.

There are two parts to the project. One of them is the back-end service to collect the data; Another part is the JavaScript SDK for websites to report the performance data.

## Deploy

The project is deployed by Docker but only on one server. The CI will be running when building the image.

Use the lock file in the Node project. 

```
ADD package.json /www
ADD package-lock.json /www
RUN npm ci
```

The command line should be running in the beginning of a container.

```
# npm ci;
```
