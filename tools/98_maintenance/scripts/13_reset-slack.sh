
# SLACK TOKEN (User OAuth Token - must start with xoxp)
# See documentation under "Create User OAUTH Token"  -  not_configured
export SLACK_TOKEN=not_configured

# SLACK CHANNELS TO EMPTY
# Adapt to your needs
export SLACK_REACTIVE="cp4waiops33"


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DO NOT EDIT BELOW
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



echo "         ________  __  ___     ___    ________       "     
echo "        /  _/ __ )/  |/  /    /   |  /  _/ __ \____  _____"
echo "        / // __  / /|_/ /    / /| |  / // / / / __ \/ ___/"
echo "      _/ // /_/ / /  / /    / ___ |_/ // /_/ / /_/ (__  ) "
echo "     /___/_____/_/  /_/    /_/  |_/___/\____/ .___/____/  "
echo "                                           /_/            "
echo ""
echo ""
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo " 🚀 CP4WAIOPS RESET SLACK CHANNELS"
echo "***************************************************************************************************************************************************"
echo " This will reset:"
echo "    - Slack Channels"
echo "***************************************************************************************************************************************************"
echo " You have to install the slack-cleaner2 module:"
echo "    pip install slack-cleaner2 or pip3 install slack-cleaner2"
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"

 

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DO NOT EDIT BELOW
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  read -p "❗ Are you really, really, REALLY sure you want to delete all messages from Slack? [y,N] " DO_COMM
  if [[ $DO_COMM == "y" ||  $DO_COMM == "Y" ]]; then
    echo "      🧞‍♂️ OK, as you wish...."
  else
    echo "      ❌ Aborted"
  fi


echo ""
echo ""
echo "--------------------------------------------------------------------------------------------------------------------------------"
echo "Empty Slack Channel $SLACK_REACTIVE $SLACK_TOKEN"
echo "--------------------------------------------------------------------------------------------------------------------------------"

  export SLACK_CHANNEL=$SLACK_REACTIVE
  python3 ./tools/98_maintenance/scripts/slack-cleaner.py

echo " ✅ OK"



