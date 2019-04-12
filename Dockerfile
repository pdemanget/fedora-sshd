#
# Fedora docker image with OpenSSH client
#
#

FROM fedora:28

MAINTAINER Philippe DEMANGET <pdemanget@gmail.com>

# Set environment variables.
# ENV \
#  TERM=xterm-color

# Install packages.
RUN \
  dnf -y install openssh-server && \
  /usr/bin/ssh-keygen -A && \
  ln -s /usr/bin/python3 /usr/bin/python
  # var/cache/dnf?
  
EXPOSE 22

# Set the default command.
CMD ["/usr/sbin/sshd", "-D"]
