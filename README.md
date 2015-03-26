# asciidocker
Simple docker build that packages all asciidoc-files into a docker container, converts them to html and runs nginx to show.

Run like this
```
docker build -t asccidockersitename .
docker run -it --rm -p 8080:80 asccidockersitename

```

And you can access the site on port 8080
