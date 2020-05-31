#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 tv_show_directory"
		exit
fi

tv_show=$1

if [ -d "${tv_show}" ] && [[ "$tv_show" =~ ([a-zA-Z\.]*)\.([sS][0-9][0-9]).* ]]; then
		tvShowNameDots=`sed -r 's/([a-zA-Z\.]*)\.([sS][0-9][0-9]).*/\1/' <<< "$tv_show"`
		tvShowSeason=`sed -r 's/([a-zA-Z\.]*)\.[sS]([0-9][0-9]).*/Season \2/' <<< "$tv_show"`
		tvShowNameSpaces=`sed -r "s/\./ /g" <<< "$tvShowNameDots"`
		mkdir "$tvShowNameSpaces"
		mv $tv_show "$tvShowNameSpaces/$tvShowSeason"
fi
