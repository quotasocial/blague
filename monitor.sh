#!/usr/bin/env bash

trap 'tput cnorm; clear; exit' INT

tput civis

BLUE='\033[38;5;27m'
WHITE='\033[97m'
RED='\033[38;5;196m'
GREEN='\033[38;5;46m'
YELLOW='\033[38;5;226m'
CYAN='\033[38;5;51m'
DIM='\033[2m'
BOLD='\033[1m'
RESET='\033[0m'

rand_ip() {
  echo "10.$((RANDOM%255)).$((RANDOM%255)).$((RANDOM%255))"
}

marianne() {
cat << "EOF"
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀"              ╙╣╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"               "Ñ╣╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀                   ┌╣╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌                     ╫╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                  .»╓]╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌                 ─╣ ╘╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀▄▀▀▀▀▀▓▓▓▓▄                     ╬╣╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀▄▄▓╚▓▓▄▄╦    ¿                    #▓╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▄▓▓▓▌    ╙▀▓▓▓▓                     ▓╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀▄▄▄@▓▓▓▓▀  ╓"                  ]╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀ⁿ""¬╓▄▓▀         ╔▓╢╢╣▓▓╣╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀▄▄▓▓▌▄▄▓▓▓▓▓▓╜          ]╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀╙              ╙╩▓╣╣╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢╢

  __  __ _       _     _ _                  _        _ _ ______    _                 _   _               _   _       _   _                   _      
 |  \/  (_)     (_)   (_) |                | |      | ( )  ____|  | |               | | (_)             | \ | |     | | (_)                 | |     
 | \  / |_ _ __  _ ___ _| |_ _ __ ___    __| | ___  | |/| |__   __| |_   _  ___ __ _| |_ _  ___  _ __   |  \| | __ _| |_ _  ___  _ __   __ _| | ___ 
 | |\/| | | '_ \| / __| | __| '__/ _ \  / _` |/ _ \ | | |  __| / _` | | | |/ __/ _` | __| |/ _ \| '_ \  | . ` |/ _` | __| |/ _ \| '_ \ / _` | |/ _ \
 | |  | | | | | | \__ \ | |_| | |  __/ | (_| |  __/ | | | |___| (_| | |_| | (_| (_| | |_| | (_) | | | | | |\  | (_| | |_| | (_) | | | | (_| | |  __/
 |_|  |_|_|_| |_|_|___/_|\__|_|  \___|  \__,_|\___| |_| |______\__,_|\__,_|\___\__,_|\__|_|\___/|_| |_| |_| \_|\__,_|\__|_|\___/|_| |_|\__,_|_|\___|
                                                                                                                                                    
                                                                                                                                                    
EOF
}

header() {
  clear
  echo -e "${BLUE}"
  marianne
  echo -e "${RESET}"
  echo -e "${BLUE}${BOLD}██${WHITE} BY LYAM ${RED}██${RESET}"
  echo -e "${DIM}Faite gaffe à pas faire nimp${RESET}"
  echo
}

dashboard() {
  header

  echo -e "${CYAN}[ SESSION ]${RESET}"
  echo -e " NODE-ID        : ${GREEN}SIM-EDU-$((1000 + RANDOM % 8999))${RESET}"
  echo -e " MODE           : ${YELLOW}LOCAL DEMO${RESET}"
  echo -e " OPERATOR       : ${WHITE}$USER${RESET}"
  echo -e " HOST           : ${WHITE}$(hostname)${RESET}"
  echo -e " TIMESTAMP      : ${WHITE}$(date '+%Y-%m-%d %H:%M:%S')${RESET}"
  echo

  echo -e "${CYAN}[ CLASSES JSON ]${RESET}"
  jq -r '.classes[] | " \(.id) | \(.name) | élèves=\(.students) | état=\(.status)"' data/classes.json
  echo

  echo -e "${CYAN}[ ÉVÉNEMENTS LIVE ]${RESET}"
  for i in {1..12}; do
    case $((RANDOM % 5)) in
      0) tag="${GREEN}[OK]${RESET}"; msg="cache pédagogique synchronisé";;
      1) tag="${YELLOW}[WARN]${RESET}"; msg="latence simulée sur relais local";;
      2) tag="${CYAN}[INFO]${RESET}"; msg="lecture index classes.json";;
      3) tag="${BLUE}[SYNC]${RESET}"; msg="paquet local $(rand_ip)";;
      4) tag="${RED}[DENY]${RESET}"; msg="requête externe bloquée par mode demo";;
    esac
    echo -e " $(date '+%H:%M:%S') $tag $msg"
  done

  echo
  echo -e "${CYAN}[ MENU ]${RESET}"
  echo " [r] refresh   [j] afficher JSON   [l] logs continus   [q] quitter"
}

show_json() {
  header
  echo -e "${CYAN}[ data/classes.json ]${RESET}"
  jq . data/classes.json
  echo
  echo -e "${CYAN}[ data/events.json ]${RESET}"
  jq . data/events.json
  echo
  read -n 1 -s -r -p "Appuie sur une touche pour revenir..."
}

live_logs() {
  header
  echo -e "${CYAN}[ Entrer dans la DB ]${RESET}"
  echo

  while true; do
    echo -e "$(date '+%H:%M:%S') ${GREEN}[OK]${RESET} heartbeat local :: node=SIM-$((RANDOM%99)) :: ip=$(rand_ip)"
    sleep 0.15
    if read -t 0.01 -n 1 key && [[ "$key" == "q" ]]; then
      break
    fi
  done
}

while true; do
  dashboard
  read -n 1 -s key

  case "$key" in
    r) ;;
    j) show_json ;;
    l) live_logs ;;
    q) tput cnorm; clear; exit ;;
  esac
done
