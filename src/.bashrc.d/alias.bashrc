alias vim=nvim
alias dls="docker ps --format '{{.Names}}'"
alias _lsof_ports="sudo lsof -i -P -n"
alias _netstat_ports="sudo netstat -tulpn"
alias zola="flatpak run org.getzola.zola"
alias gs="git status"
alias ge="git commit --amend --no-edit"
alias check_wifi="nmcli dev wifi"
alias srv_here="python3 -m http.server --bind 127.0.0.1 --directory . 8080"

#usage: docker-container-host-ip <container-name>
docker-container-host-ip () {
  echo "Extracting host IP from container: $1"
  docker exec "$1" sh -c "/sbin/ip route" | awk '/default/ { print $3 }'
}

fda() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m --preview 'ls -la {}') &&
  cd "$dir"
}

fd() {
  local dir
  dir=$(find ${1:-.} -not -path '*/.*' -maxdepth 1 -type d -print 2> /dev/null | fzf +m --preview 'ls -la {}') &&
  cd "$dir"
}

fcode() {
  local f
  f=$(find ${1:-.} -not -path '*/.*' -type f -print 2> /dev/null | fzf +m --preview 'bat --color=always {}') &&
  code "$f"
}

emoji() {
  local selected
  selected=$(curl -sSL 'https://gist.githubusercontent.com/ryanwild/078ce4439687f195d2337e438ef7d2ba/raw/c618da93228a744ebd816415572ffed578c86db5/emoji.txt' | fzf +m) &&
  echo -n "$selected" | cut -b 1-4 | xclip -selection clipboard
}
