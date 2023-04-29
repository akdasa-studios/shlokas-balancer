<a href="https://github.com/akdasa-studios/shlokas">
  <p align="center">
    <img src="https://raw.githubusercontent.com/akdasa-studios/shlokas/main/docs/logo.svg" height="184px"/>
  </p>
</a>

Nginx Load Balancer for Shlokas. This is a simple load balancer for the Shlokas project. It is a simple _Nginx_ server that redirects requests to the backend servers.

## Environment Variables

| Variable     | Description | Default |
| ------------ | ----------- | ------- |
| BALANCER_ENV | Environment | dev     |

## Mounts

| Path   | Description |
| ------ | ----------- |
| ./logs | Nginx logs  |

## Development

`run.sh` will start the server in development mode. This will start the server in port `80` and will redirect requests to the backend servers.

## Production

`BALANCER_ENV=prod` will start the server in production mode.
