echo  "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo  "*--------------------------------------------------*"
echo   "*--------------- COPYRIGHT THE COINMAKER ------------*"
echo  "*--------------------------------------------------*"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo start upgrade
sudo ozeety-cli stop
sleep 10
sudo rm -R -f ozeetyd
sudo rm -R -f ozeety-cli 
sudo rm -R -f ozeety-tx
echo 25%
sudo wget https://github.com/the-coinmaker/oztg/raw/master/linux/ozeetyd
sudo wget https://github.com/the-coinmaker/oztg/raw/master/linux/ozeety-tx
sudo wget https://github.com/the-coinmaker/oztg/raw/master/linux/ozeety-cli
sudo chmod +x ozeetyd
sudo chmod +x ozeety-tx
sudo chmod +x ozeety-cli
echo 50%
cd .ozeety
  rm -R -f chainstate blocks .log mn.dat budget.dat peers.dat wallet.dat mncache.dat mnpayments.dat fee_estimates.dat db.log debug.log database/ backups/ ozeety.pid .lock
  cd
  ozeetyd
echo 100% update is ready 

