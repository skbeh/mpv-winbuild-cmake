FROM archlinux:base-devel

RUN useradd user
WORKDIR /home/user

RUN pacman -Syuu \
  && pacman -S --needed git gyp mercurial subversion ninja cmake meson ragel yasm nasm asciidoc enca gperf unzip p7zip gcc-multilib clang python-pip curl \
  && pacman -S -cc -y \
  && pip3 install --no-cache-dir rst2pdf mako

COPY --chown user:user build.sh /home/user/
ENTRYPOINT ["./build.sh"]
