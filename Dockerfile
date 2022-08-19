FROM archlinux:base-devel

RUN yes | pacman -Syu base-devel sudo git vim bash-completion --noconfirm
RUN useradd --create-home --comment "ArchLinux Build" user && \
	usermod -p "" user && \
	echo "user ALL=(ALL) ALL" > /etc/sudoers.d/user 
USER user
WORKDIR /home/user
