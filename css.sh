#!/bin/sh

normal=$'\e[0m'
red=$'\e[1;31m'
green=$'\e[32m'
yellow=$'\e[33m'

if [ -z "$1" ]; then
    echo "${red}You have to specify the conference url${normal}"
    echo "${yellow}Usage: ./new.sh <url>${normal}"
    exit 1
fi

# Get the conference url
url=$1

# get the main color
echo "${green}Getting the main color...${normal}"
color=$(svgpattern --onlycolor "$url")

# generate the css
echo "${green}Getting the css...${normal}"
css="div.header {
    background-color: $color;
    background-image:
      linear-gradient(to right, rgba(0, 0, 0, .7), rgba(0, 0, 0, .21)),
      url(https://mathconf.github.io/backgrounds/$url.svg);
}
div.header:after {
  display:none;
}
.nav > .menuselected > a,
.nav > .menuselected > a:hover {
    background-color: $color;
}
.nav a {
    color: $color;
}"

# copy the css to the clipboard
echo "${green}Copying the css to the clipboard...${normal}"
echo "$css" | clip