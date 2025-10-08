
echo "[1/2] Enter GitHub User:"
read USER
echo GH User: $USER
echo "[1/2] Enter GitHub Token:"
read TOKEN
echo GH Token: $TOKEN

sudo apt update && sudo apt upgrade -y
sudo apt install -y git

cd /opt

sudo git clone git clone https://$USER:$TOKEN@github.com/CloudWave-CaaS/SentinelBuild.git
