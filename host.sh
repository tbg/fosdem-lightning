#!/bin/bash
if [ ! -f "slides.md" ]; then
  ln -s *.md slides.md
fi
docker run -d -p 8000:8000 \
  -v `pwd`/images:/revealjs/images \
  -v `pwd`:/revealjs/md \
  parente/revealjs
