FROM alpine

LABEL maintainer="Shunsuke Miyoshi <swfft814@gmail.com>"

RUN apk --no-cache add curl gettext

RUN curl -s https://api.github.com/repos/kubernetes-sigs/kustomize/releases/latest |\
  grep browser_download |\
  grep linux |\
  cut -d '"' -f 4 |\
  xargs curl -O -L

RUN mv kustomize_*_linux_amd64 /usr/local/bin/kustomize \
  && chmod +x /usr/local/bin/kustomize

CMD ["kustomize", "--help"]
