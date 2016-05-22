/opt/flags/getwetter.sh > wetter

LUFT=`cat wetter | grep Luft: | cut -f2 -d ":"`
WASSER=`cat wetter | grep Wasser: | cut -f2 -d ":"`
LUFTDRUCK=`cat wetter | grep Luftdruck: | cut -f2 -d ":"`
LUFTFEUCHTE=`cat wetter | grep Luftfeuchte: | cut -f2 -d ":"`
WR=`cat wetter | grep Windrichtung: | cut -f2 -d ":"`
WS=`cat wetter | grep Windstärke: | cut -f2 -d ":"`

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


if [ "$T1STATE" = "3" ] || [ "$T2STATE" = "3" ]  || [ "$T3STATE" = "3" ] || [ "$T4STATE" = "3" ] || [ "$T5STATE" = "3" ] || [ "$T6STATE" = "3" ]; then
        echo Scharbeutz rot
	SBZSTATE=rot
elif [ "$T1STATE" = "2" ] ||  [ "$T2STATE" = "2" ] ||  [ "$T3STATE" = "2" ] ||  [ "$T4STATE" = "2" ] ||  [ "$T5STATE" = "2" ] || [ "$T6STATE" = "2" ]; then
        echo Scharbeutz gelb
	SBZSTATE=gelb
elif [ "$T1STATE" = "1" ] ||  [ "$T2STATE" = "1" ] ||  [ "$T3STATE" = "1" ] ||  [ "$T4STATE" = "1" ] ||  [ "$T5STATE" = "1" ] || [ "$T6STATE" = "1" ]; then
        echo Scharbeutz normal
	SBZSTATE=normal
elif [ "$T1STATE" = "0" ] ||  [ "$T2STATE" = "0" ] ||  [ "$T3STATE" = "0" ] ||  [ "$T4STATE" = "0" ] ||  [ "$T5STATE" = "0" ] || [ "$T6STATE" = "0" ] ; then
        echo Scharbeutz zu
	SBZSTATE=zu
fi

if [ "$T7STATE" = "3" ]  || [ "$T8STATE" = "3" ] || [ "$T9STATE" = "3" ] || [ "$T10STATE" = "3" ]; then
        echo Haffkrug rot
	HFTSTATE=rot
elif [ "$T7STATE" = "2" ] ||  [ "$T8STATE" = "2" ] ||  [ "$T9STATE" = "2" ] ||  [ "$T10STATE" = "2" ]; then
        echo Haffkrug gelb
	HFSTATE=gelb
elif [ "$T7STATE" = "1" ] ||  [ "$T8STATE" = "1" ] ||  [ "$T9STATE" = "1" ] ||  [ "$T10STATE" = "1" ]; then
        echo Haffkrug normal
	HFSTATE=normal
elif [ "$T7STATE" = "0" ] ||  [ "$T8STATE" = "0" ] ||  [ "$T9STATE" = "0" ] ||  [ "$T10STATE" = "0" ]; then
        echo Haffkrug zu
	HFSTATE=zu
fi

if [ "$T11STATE" = "3" ] || [ "$T12STATE" = "3" ]  || [ "$T13STATE" = "3" ]; then
        echo Sierksdorf rot
	SDFSTATE=rot
elif [ "$T11STATE" = "2" ] ||  [ "$T12STATE" = "2" ] ||  [ "$T13STATE" = "2" ]; then
        echo Sierksdorf gelb
	SDFSTATE=gelb
elif [ "$T11STATE" = "1" ] ||  [ "$T12STATE" = "1" ] ||  [ "$T13STATE" = "1" ]; then
        echo Sierksdorf normal
	SDFSTATE=normal
elif [ "$T11STATE" = "0" ] ||  [ "$T12STATE" = "0" ] ||  [ "$T13STATE" = "0" ]; then
        echo Sierksdorf zu
	SDFSTATE=zu
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



cat /opt/flags/templates/small_widget.html | sed s/SBZSTATE/$SBZSTATE/g | sed s/HFSTATE/$HFSTATE/g | sed s/SDFSTATE/$SDFSTATE/g | sed s/PSTATE/$PSTATE/g | sed s/OSTATE/$OSTATE/g | sed s/LUFTDRUCK/$LUFTDRUCK/g | sed s/LUFTFEUCHTE/$LUFTFEUCHTE/g | sed s/WR/$WR/g | sed s/WS/$WS/g | sed s/LUFT/$LUFT/g | sed s/WASSER/$WASSER/g > /opt/flags/temp/small_widget.html

cp /opt/flags/temp/small_widget.html /var/www/html/flags/
