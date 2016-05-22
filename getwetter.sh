wget http://www.luebecker-bucht-ostsee.de/webcams-wetter
luft=`cat webcams-wetter | grep "Lufttemperatur:" | cut -d ">" -f 3 | cut -d "<" -f 1`
luftdruck=`cat webcams-wetter | grep "Luftdruck:" | cut -d ">" -f 3 | cut -d "<" -f 1`
wasser=`cat webcams-wetter | grep "Wassertemperatur:" | cut -d ">" -f 3 | cut -d "<" -f 1`
windrichtung=`cat webcams-wetter | grep "Wind:" | cut -d ">" -f 3 | cut -d "<" -f 1 | head -1`
luftfeuchte=`cat webcams-wetter | grep "Luftfeuchtigkeit:" | cut -d ">" -f 3 | cut -d "<" -f 1`
windstaerke=`cat webcams-wetter | grep "Windstärke:" | cut -d ">" -f 3 | cut -d "<" -f 1`
rm webcams-wetter*

echo "Luft:"$luft
echo "Wasser:"$wasser
echo "Luftdruck:"$luftdruck
echo "Luftfeuchte:"$luftfeuchte
echo "Windrichtung:"$windrichtung
echo "Windstärke:"$windstaerke
