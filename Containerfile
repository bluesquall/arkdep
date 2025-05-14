FROM archlinux:base-devel
MAINTAINER https://github.com/bluesquall/arkdep/issues

RUN pacman-key --init
RUN pacman -Sy --noconfirm \
    arch-install-scripts \
    btrfs-progs \
    git \
    curl \
    dracut \
    gnupg \
    wget

WORKDIR /var/tmp/arkdep
CMD ["/usr/bin/env", "bash"]
