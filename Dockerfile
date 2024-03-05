FROM fedora:latest

ENV PS1="\[\e[38;5;196m\]test_dot_files\[\e[0m\] $ "

RUN dnf install tree -y

ENV HOME="/home/test/stub"
ADD . /home/test

WORKDIR /home/test

CMD ["/home/test/test"]
