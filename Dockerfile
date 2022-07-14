FROM python:alpine

RUN pip install --upgrade pip

RUN set -eux; \
    apk add --no-cache --virtual .build-deps py3-pip; \
    pip3 install --no-cache-dir --no-compile yamllint; \
    apk del .build-deps

RUN pip install yapf

RUN wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.7.0/hadolint-Linux-x86_64; \
chmod +x /bin/hadolint
