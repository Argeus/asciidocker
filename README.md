# asciidocker
Simple docker build that packages all asciidoc files into a docker container, converts them to html and runs nginx to show.

## Usage

Put a `Dockerfile`in your asciidoc-project that looks like this:

```
FROM argeus/asciidocker

```

Then build and run
```
docker build -t whateveryouwanttocallit .
docker run -it --rm -p 8080:80 whateveryouwanttocallit
```

And you can access the site on port 8080.

## Customization

You can add arguments to asciidoctor by setting the environment ASCIIDOCTOR_ARGS in your Dockerfile
For example if you want to change stylesheet you can do it like this.

```
FROM argeus/asciidocker
ENV ASCIIDOCTOR_ARGS -a stylesheet=colony.css -a stylesdir=/var/www/html/stylesheets

```
