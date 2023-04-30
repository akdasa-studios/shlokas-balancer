<a href="https://github.com/akdasa-studios/shlokas">
  <p align="center">
    <img src="https://raw.githubusercontent.com/akdasa-studios/shlokas/main/docs/logo.svg" height="184px"/>
  </p>
</a>

Nginx Load Balancer for Shlokas. This is a simple load balancer for the Shlokas project. It is a simple _Nginx_ server that redirects requests to the backend servers.

## Environment Variables

| Variable       | Description                            | Default |
| -------------- | -------------------------------------- | ------- |
| `BALANCER_ENV` | Environment. Should be `dev` or `prod` | dev     |


## Mounts

| Path                      | Description                                                                                                                                 |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `.logs/balancer/nginx`    | Nginx logs. Error and access logs.                                                                                                          |
| `.secrets/balancer/certs` | SSL certificates should be placed in the `./.secrets/balancer/certs` directory. The file names should be `server.crt` and `server.key`. |


## Development

`run.sh` will start the server in development mode. This will start the server in port `80` and will redirect requests to the backend servers.

### Endable HTTPS for local development

1. Add `127.0.0.1 shlokas.dev` to `/etc/hosts`:
2. Add `rootCA.rem` as trusted root certificate.
3. Copy `certs/server.csr` and `certs/server.key` to `.secrets/balancer/certs`
4. Run `BALANCER_ENV=prod run.sh`


## Production

1. Copy `server.csr` and `server.key` to `.secrets/balancer/certs`
2. `BALANCER_ENV=prod run.sh` will start the server in production mode.

