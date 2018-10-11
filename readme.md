# v80
A varnish docker image that always looks for `v80source:80` as its server to cache. I think I'll use this as a base image for caching static sites.

## proposed docker-compose
```yml
version: '2'

services:
  static:
    container_name: v80source
    image: {STATIC_IMAGE_NAME}
    ports:
      - "80:80"

  cache:
    container_name: cachename
    image: dillonchr/v80
    ports:
      - "80:80"
```

Can I do that even? The ports being the same but being different images. Automatically they'll have the same network access, but I think that would work. Here goes nothing!
