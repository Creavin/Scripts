#!/bin/bash

for D in *; do
    if [ -d "${D}" ] && [[ "$D" =~ ([a-zA-Z\.]*)\.([sS][0-9][0-9]).* ]]; then
				tvShowNameDots=`sed -r 's/([a-zA-Z\.]*)\.([sS][0-9][0-9]).*/\1/' <<< "$D"`
				tvShowSeason=`sed -r 's/([a-zA-Z\.]*)\.[sS]([0-9][0-9]).*/Season \2/' <<< "$D"`
				tvShowNameSpaces=`sed -r "s/\./ /g" <<< "$tvShowNameDots"`
				mkdir "$tvShowNameSpaces"
				mv $D "$tvShowNameSpaces/$tvShowSeason"
    fi
done
