FROM rockylinux:8
RUN dnf -y install dnf-plugins-core epel-release
RUN dnf config-manager --set-enabled powertools && dnf -y update
RUN dnf -y install python39 python39-wheel
RUN pip3 install --upgrade pip
RUN pip3 install anndata scale leidenalg