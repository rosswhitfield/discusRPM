FROM registry.access.redhat.com/ubi9/ubi

RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
RUN dnf install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm
# nonfree needed for pgplot
RUN dnf install -y https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm

COPY diffuse-6.17.02-1.el9.x86_64.rpm .
RUN dnf install -y diffuse-6.17.02-1.el9.x86_64.rpm
RUN rm diffuse-6.17.02-1.el9.x86_64.rpm

CMD discus_suite
