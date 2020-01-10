# Lighttpd

This image is suitable for serving static files over HTTP.

# Usage

```shell
docker run -d --rm --name=lighy -e TZ="Europe/Berlin" -v ./dir:/data -p 80:80 apfohl/lighty
```
