#./getwetter.sh > wetter

#LUFT=`cat wetter | grep Luft: | cut -f2 -d ":"`
#WASSER=`cat wetter | grep Wasser: | cut -f2 -d ":"`
#LUFTDRUCK=`cat wetter | grep Luftdruck: | cut -f2 -d ":"`
#LUFTFEUCHTE=`cat wetter | grep Luftfeuchte: | cut -f2 -d ":"`
#WR=`cat wetter | grep Windrichtung: | cut -f2 -d ":"`
#WS=`cat wetter | grep Windstärke: | cut -f2 -d ":"`

T1STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=1" | sed -n 2p`
T2STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=2" | sed -n 2p`
T3STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=3" | sed -n 2p`
T4STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=4" | sed -n 2p`
T5STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=5" | sed -n 2p`
T6STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=6" | sed -n 2p`
T7STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=7" | sed -n 2p`
T8STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=8" | sed -n 2p`
T9STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=9" | sed -n 2p`
T10STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=10" | sed -n 2p`
T11STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=11" | sed -n 2p`
T12STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=12" | sed -n 2p`
T13STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=13" | sed -n 2p`
T14STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=14" | sed -n 2p`
T15STATE=`mysql -u wrdserver -pwrdpw123 -D wrdserver -e "SELECT Status FROM status_tuerme WHERE Nr=15" | sed -n 2p`


if [ "$T1STATE" = "3" ]; then
        echo Turm 1 rot
	TF1STATE=rot
elif [ "$T1STATE" = "2" ]; then
        echo Turm 1 gelb
	TF1STATE=gelb
elif [ "$T1STATE" = "1" ]; then
        echo Turm 1 normal
	TF1STATE=normal
elif [ "$T1STATE" = "0" ]; then
        echo Turm 1 zu
	TF1STATE=zu
fi

if [ "$T2STATE" = "3" ]; then
        echo Turm 2 rot
        TF2STATE=rot
elif [ "$T2STATE" = "2" ]; then
        echo Turm 2 gelb
        TF2STATE=gelb
elif [ "$T2STATE" = "1" ]; then
        echo Turm 2 normal
        TF2STATE=normal
elif [ "$T2STATE" = "0" ]; then
        echo Turm 2 zu
        TF2STATE=zu
fi


if [ "$T3STATE" = "3" ]; then
        echo Turm 3 rot
        TF3STATE=rot
elif [ "$T3STATE" = "2" ]; then
        echo Turm 3 gelb
        TF3STATE=gelb
elif [ "$T3STATE" = "1" ]; then
        echo Turm 3 normal
        TF3STATE=normal
elif [ "$T3STATE" = "0" ]; then
        echo Turm 3 zu
        TF3STATE=zu
fi


if [ "$T4STATE" = "3" ]; then
        echo Turm 4 rot
        TF4STATE=rot
elif [ "$T4STATE" = "2" ]; then
        echo Turm 4 gelb
        TF4STATE=gelb
elif [ "$T4STATE" = "1" ]; then
        echo Turm 4 normal
        TF4STATE=normal
elif [ "$T4STATE" = "0" ]; then
        echo Turm 4 zu
        TF4STATE=zu
fi


if [ "$T5STATE" = "3" ]; then
        echo Turm 5 rot
        TF5STATE=rot
elif [ "$T5STATE" = "2" ]; then
        echo Turm 5 gelb
        TF5STATE=gelb
elif [ "$T5STATE" = "1" ]; then
        echo Turm 5 normal
        TF5STATE=normal
elif [ "$T5STATE" = "0" ]; then
        echo Turm 5 zu
        TF5STATE=zu
fi


if [ "$T6STATE" = "3" ]; then
        echo Turm 6 rot
        TF6STATE=rot
elif [ "$T6STATE" = "2" ]; then
        echo Turm 6 gelb
        TF6STATE=gelb
elif [ "$T6STATE" = "1" ]; then
        echo Turm 6 normal
        TF6STATE=normal
elif [ "$T6STATE" = "0" ]; then
        echo Turm 6 zu
        TF6STATE=zu
fi


if [ "$T7STATE" = "3" ]; then
        echo Turm 7 rot
        TF7STATE=rot
elif [ "$T7STATE" = "2" ]; then
        echo Turm 7 gelb
        TF7STATE=gelb
elif [ "$T7STATE" = "1" ]; then
        echo Turm 7 normal
        TF7STATE=normal
elif [ "$T7STATE" = "0" ]; then
        echo Turm 7 zu
        TF7STATE=zu
fi


if [ "$T8STATE" = "3" ]; then
        echo Turm 8 rot
        TF8STATE=rot
elif [ "$T8STATE" = "2" ]; then
        echo Turm 8 gelb
        TF8STATE=gelb
elif [ "$T8STATE" = "1" ]; then
        echo Turm 8 normal
        TF8STATE=normal
elif [ "$T8STATE" = "0" ]; then
        echo Turm 8 zu
        TF8STATE=zu
fi


if [ "$T9STATE" = "3" ]; then
        echo Turm 9 rot
        TF9STATE=rot
elif [ "$T9STATE" = "2" ]; then
        echo Turm 9 gelb
        TF9STATE=gelb
elif [ "$T9STATE" = "1" ]; then
        echo Turm 9 normal
        TF9STATE=normal
elif [ "$T9STATE" = "0" ]; then
        echo Turm 9 zu
        TF9STATE=zu
fi


if [ "$T10STATE" = "3" ]; then
        echo Turm 10 rot
        TF10STATE=rot
elif [ "$T10STATE" = "2" ]; then
        echo Turm 10 gelb
        TF10STATE=gelb
elif [ "$T10STATE" = "1" ]; then
        echo Turm 10 normal
        TF10STATE=normal
elif [ "$T10STATE" = "0" ]; then
        echo Turm 10 zu
        TF10STATE=zu
fi


if [ "$T11STATE" = "3" ]; then
        echo Turm 11 rot
        TF11STATE=rot
elif [ "$T11STATE" = "2" ]; then
        echo Turm 11 gelb
        TF11STATE=gelb
elif [ "$T11STATE" = "1" ]; then
        echo Turm 11 normal
        TF11STATE=normal
elif [ "$T11STATE" = "0" ]; then
        echo Turm 11 zu
        TF11STATE=zu
fi


if [ "$T12STATE" = "3" ]; then
        echo Turm 12 rot
        TF12STATE=rot
elif [ "$T12STATE" = "2" ]; then
        echo Turm 12 gelb
        TF12STATE=gelb
elif [ "$T12STATE" = "1" ]; then
        echo Turm 12 normal
        TF12STATE=normal
elif [ "$T12STATE" = "0" ]; then
        echo Turm 12 zu
        TF12STATE=zu
fi


if [ "$T13STATE" = "3" ]; then
        echo Turm 13 rot
        TF13STATE=rot
elif [ "$T13STATE" = "2" ]; then
        echo Turm 13 gelb
        TF13STATE=gelb
elif [ "$T13STATE" = "1" ]; then
        echo Turm 13 normal
        TF13STATE=normal
elif [ "$T13STATE" = "0" ]; then
        echo Turm 13 zu
        TF13STATE=zu
fi

if [ "$T14STATE" = "3" ]; then
        echo Pönitz rot
        PSTATE=rot
elif [ "$T14STATE" = "2" ]; then
        echo Pönitz gelb
        PSTATE=gelb
elif [ "$T14STATE" = "1" ]; then
        echo Pönitz normal
        PSTATE=normal
elif [ "$T14STATE" = "0" ]; then
        echo Pönitz zu
        PSTATE=zu
fi

if [ "$T15STATE" = "3" ]; then
	echo Offendorf rot
	OSTATE=rot
elif [ "$T15STATE" = "2" ]; then
	echo Offendorf gelb
	OSTATE=gelb
elif [ "$T15STATE" = "1" ]; then
        echo Offendorf normal
	OSTATE=normal
elif [ "$T15STATE" = "0" ]; then
        echo Offendorf zu
	OSTATE=zu
fi



cat /opt/flags/templates/map.html | sed s/TF1STATE/$TF1STATE/g  | sed s/TF2STATE/$TF2STATE/g  | sed s/TF3STATE/$TF3STATE/g  | sed s/TF4STATE/$TF4STATE/g  | sed s/TF5STATE/$TF5STATE/g  | sed s/TF6STATE/$TF6STATE/g  | sed s/TF6STATE/$TF6STATE/g  | sed s/TF7STATE/$TF7STATE/g  | sed s/TF8STATE/$TF8STATE/g  | sed s/TF9STATE/$TF9STATE/g  | sed s/TF10STATE/$TF10STATE/g  | sed s/TF11STATE/$TF11STATE/g  | sed s/TF12STATE/$TF12STATE/g  | sed s/TF13STATE/$TF13STATE/g  | sed s/PSTATE/$PSTATE/g  | sed s/OSTATE/$OSTATE/g  > /opt/flags/temp/map.html

cp /opt/flags/temp/map.html /var/www/html/flags/
