# proxy prototype

## requirements

* transparent
* forwarding (not reverse)
* mitm behaviour
  * self-signed tls certs for any domain
  * tls certs trusted in worker
* archive all http traffic to disk
  * both request and response
  * verbatim bytes / no agent interference

## run

* `docker-compose up`
* `docker exec -it proxy-proto_worker_1 bash`
* `curl -i http://google.com`

## todo

* [ ] write http req/res traffic to disk
* [ ] https mitm intercept
  * [ ] tls term and tls proxy
  * [ ] self-signed certs
  * [ ] ensure valid ssl checks in worker
* [ ] ensure byte-for-byte across (1) curl, (2) mock server, (3) disk writes
* [ ] test keepalive

### stretch goals

* embed dns in worker image, use forego Procfile
* learn difference between reverse_proxy and forward_proxy
