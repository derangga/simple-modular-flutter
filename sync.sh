echo "#########################################################"
echo "#                                                       #"
echo "#                 Sync all dependencies                 #"
echo "#                                                       #"
echo "#########################################################"
echo ""
cd core
flutter pub get

cd ../auth
flutter pub get

cd ../market
flutter pub get

cd ../payment
flutter pub get

cd ../setting
flutter pub get

cd ../user
flutter pub get

cd ../order
flutter pub get

cd ..
flutter pub get

echo "All dependencies sync done"
