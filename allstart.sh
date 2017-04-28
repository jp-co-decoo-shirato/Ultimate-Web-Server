echo "/*********************"
echo " *    Proxy-setup    *"
echo " *********************/"
cd ./proxy
docker-compose up -d
echo "/*********************"
echo " *  Proxy-Success !  *"
echo " *********************/"
cd ../
clear
echo "/*********************"
echo " *   Server-setup    *"
echo " *********************/"
cd ./server
docker-compose up -d
echo "/*********************"
echo " *  Server-Success ! *"
echo " *********************/"
clear
echo "/*********************"
echo " *  All setup ended. *"
echo " *********************/"
cd ../
clear
echo "Closing ..."
exit
exit
