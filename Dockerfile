FROM fedora:30

MAINTAINER Philippe DEMANGET "https://github.com/pdemanget"


# Install packages.
RUN \
  dnf -y install openssh-server && \
  /usr/bin/ssh-keygen -A && \
  ln -s /usr/bin/python3 /usr/bin/python && \
  rm -rf /var/cache/dnf
  
  #dnf clean all --enablerepo=\*
  
EXPOSE 22

# Set the default command.
CMD ["/usr/sbin/sshd", "-D"]
