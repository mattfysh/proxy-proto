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
* traffic segmentation
  * archive will associate traffic with worker of origin

## run

* `docker-compose up`
* `docker exec -it proxy-proto_worker_1 bash`
* `curl -i http://google.com`
