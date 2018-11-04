FROM            scratch
MAINTAINER      Laurent Grenier <laurent@mooke.io>
ADD             rootfs.tar /

# Setup and source bashrc for tab-complete, shell coloring
ADD             bashrc /root/.bashrc
ENV             HOME /root
ENV             ENV $HOME/.bashrc

VOLUME          /data/packages

CMD             ["/bin/sh"]