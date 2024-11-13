FROM docker.io/bitnami/kubectl:1.31.0
ADD static /static
CMD ["proxy", "--www=/static", "--accept-hosts=^.*$", "--address=[::]", "--api-prefix=/k8s/", "--www-prefix="]
