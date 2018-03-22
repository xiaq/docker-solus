# Solus Linux baseline docker container
FROM scratch
# copy in super minimal root filesystem archive
ADD solus-base-image.tar.xz /
ENV container docker
STOPSIGNAL SIGRTMIN+3
RUN mkdir /run/lock && mkdir /run/mount && mkdir /var/mail && mkdir /var/opt && mkdir /var/local
#RUN useradd user 
#&& usermod -aG sudo user /
# Add none root user
# RUN  useradd admin && echo "admin:admin" | chpasswd && adduser admin sudo
CMD ["/bin/bash"]