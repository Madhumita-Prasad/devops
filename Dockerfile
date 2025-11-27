FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update

CMD ["/bin/bash", "-c", "\
  echo '*** DevOps FAT2 - Basic Linux Commands ***'; \
  echo; \
  echo '1) Current user:'; whoami; \
  echo; \
  echo '2) Current directory:'; pwd; \
  echo; \
  echo '3) List files:'; ls -la; \
  echo; \
  echo '4) Current date/time:'; date; \
  echo; \
  echo '5) Disk usage of / (top level):'; du -sh /* 2>/dev/null | head -5; \
  echo; \
  echo 'Done. Exiting container.' \
"]
