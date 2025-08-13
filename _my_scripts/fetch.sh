#!/usr/bin/env bash

gradient_color() {
  local index=$1
  local total=$2
  local start_color=(0 177 159)
  local mid_color=(100 149 237)
  local end_color=(10 156 255)

  if (( index < total/2 )); then
    local r=$(( start_color[0] + (mid_color[0] - start_color[0]) * index * 2 / total ))
    local g=$(( start_color[1] + (mid_color[1] - start_color[1]) * index * 2 / total ))
    local b=$(( start_color[2] + (mid_color[2] - start_color[2]) * index * 2 / total ))
  else
    local r=$(( mid_color[0] + (end_color[0] - mid_color[0]) * (index * 2 - total) / total ))
    local g=$(( mid_color[1] + (end_color[1] - mid_color[1]) * (index * 2 - total) / total ))
    local b=$(( mid_color[2] + (end_color[2] - mid_color[2]) * (index * 2 - total) / total ))
  fi

  printf "\e[38;2;%d;%d;%dm" $r $g $b
}

integral_art=(
"                   ▄                  "
"                  ▟█▙                 "
"                 ▟███▙                "
"                ▟█████▙               "
"               ▟███████▙              "
"              ▂▔▀▜██████▙             "
"             ▟██▅▂▝▜█████▙            "
"            ▟█████████████▙           "
"           ▟███████████████▙          "
"          ▟█████████████████▙         "
"         ▟███████████████████▙        "
"        ▟█████████▛▀▀▜████████▙       "
"       ▟████████▛      ▜███████▙      "
"      ▟█████████        ████████▙     "
"     ▟██████████        █████▆▅▄▃▂    "
"    ▟██████████▛        ▜█████████▙   "
"   ▟██████▀▀▀              ▀▀██████▙  "
"  ▟███▀▘                       ▝▀███▙ "
" ▟▛▀                               ▀▜▙"
)

sys_info=(
"  OS: $(uname -o) ($(uname -r))"
"  Host: $(hostname)"
"  Kernel: $(uname -sr)"
"  Uptime: $(uptime -p | sed 's/up //')"
"  Packages: $(pacman -Qq | wc -l)"
"  Shell: ${SHELL##*/}"
"  CPU: $(lscpu | grep 'Model name' | sed 's/Model name:[[:space:]]*//')"
"  Memory: $(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
"  Disk: $(df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 ")"}')"
"  Resolution: $(xrandr | grep '*' | awk '{print $1}')"
"  Terminal: ${TERM##*-}"
)

for i in "${!integral_art[@]}"; do
  color=$(gradient_color $i ${#integral_art[@]})
  printf "%b%s\n" "$color" "${integral_art[i]}"
done
printf "\e[0m"
for i in "${!sys_info[@]}"; do
  color=$(gradient_color $i ${#sys_info[@]})
  printf "%b%s\n" "$color" "${sys_info[i]}"
done