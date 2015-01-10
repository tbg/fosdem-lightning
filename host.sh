#!/bin/bash
docker run -d -p 8000:8000 \
  -v `pwd`/images:/revealjs/images \
  -v `pwd`:/revealjs/md \
  parente/revealjs
