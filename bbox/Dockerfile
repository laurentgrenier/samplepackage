FROM            scratch
MAINTAINER      Laurent Grenier <laurent@mooke.io>
ADD             rootfs.tar /

# Setup and source bashrc for tab-complete, shell coloring
ADD             bashrc /root/.bashrc
ENV             HOME /root
ENV             ENV $HOME/.bashrc

# CMD             ["/bin/sh"]
CMD             exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
