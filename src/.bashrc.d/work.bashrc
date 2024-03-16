alias _divadir="cd /home/beast/projects/diva"

alias dc="docker compose --env-file $HOME/projects/diva/.env"

diva-rmi() {
  docker rmi -f $(docker images | grep 'diva-' | awk '{print $3}') && docker system prune -f && docker images
}

sm_fix_missing_env() {
  mkdir -p "$(dirname $1)" && touch $1
}

# usage: smtest core-frontend
smtest() {
  back=$(pwd)
  _divadir
  local e
  e=$(_divadir &&
  docker compose run -it --rm "$1" yarn test &&
  cd "$back")
  return $?
}

# usage: smlint core-frontend
smlint() {
  local back
  local islandDir
  local e
  back=$(pwd)
  islandDir=$(echo "$1" | tr '-' '/')

  _divadir &&
  docker compose run -it --rm re-store-tools sh -c "eslint --fix --quiet --ext=js,ts,tsx islands/$islandDir" &&
  cd "$back"
}

#usage: smlint-translations <eslint-flags>
smlint-translations() {
  local back
  local e
  back=$(pwd)
  e=$(_divadir &&
  docker compose run re-store-tools sh -c "eslint $1 --config=.i18n.eslintrc.js --fix --no-eslintrc --ext=json islands/**/frontend/i18n/translations" &&
  cd "$back")
  return $?
}

# usage: rephrase from-blog-to-lokalise
rephrase() {
  local back
  local e
  back=$(pwd)
  e=$(_divadir &&
  docker compose run -it --rm rephrase sh -c "go build -a rephrase/cmd/rephrase/main.go && ./main $1 && rm ./main" &&
  cd "$back")
  return $?
}
