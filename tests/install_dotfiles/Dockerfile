FROM fedora:latest

ENV PS1="\[\e[38;5;196m\]test_dot_files\[\e[0m\] $ "

ENV HOME="/home/test/tests/install_dotfiles/stub"
ADD . /home/test

COPY <<EOF /home/test/test_install
#!/bin/bash

/bin/bash ./install

echo "___________results___________"
ls -laR "$HOME/"
source "$HOME/.bashrc"
echo "_____________done____________"
EOF

WORKDIR /home/test
CMD ["bash", "/home/test/test_install"]
