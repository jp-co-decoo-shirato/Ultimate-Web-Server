echo "/*********************"
echo " *    Proxy-setup    *"
echo " *********************/"
cd ./proxy
docker-compose up -d
echo "/*********************"
echo " *  Proxy-Success !  *"
echo " *********************/"
clear
cd ../
clear
echo "Closing ..."
exit
exit
