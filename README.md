# Docker Image for DockerCSS

Dockerfile for running [CartoCSS](https://github.com/mapbox/carto).

* [CartoCSS](https://github.com/mapbox/carto) 1.2.0
* [OpenStreetMap Carto](https://github.com/gravitystorm/openstreetmap-carto) 5.9.0

## Running

To create `mapnik.xml` file for Mapnik:

```shell
$ sudo docker run iqqmut/cartocss > mapnik.xml
```

You can also provide arguments:

```shell
$ sudo docker run iqqmut/cartocss carto --api 3.0.22 project.mml > mapnik.xml
```
