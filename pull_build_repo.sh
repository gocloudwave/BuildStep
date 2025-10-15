
echo "[1/2] Enter GitHub User:"
read USER
echo GH User: $USER
echo "[1/2] Enter GitHub Token:"
read TOKEN
echo GH Token: $TOKEN

sudo apt update && sudo apt upgrade -y
sudo apt install -y git

cd /opt

echo "Select an option to clone:"
echo "1) Clone SentinelBuildScripts"
echo "2) Clone HoneypotBuildScripts"
echo "3) Clone VScanScripts"
echo "9) Exit"
read -p "Enter your choice [1-3, 9]: " choice

case $choice in
    1)
        sudo git clone https://$USER:$TOKEN@github.com/gocloudwave/SentinelBuildScripts.git
        echo "Cloned SentinelBuildScripts"
        ;;
    2)
        sudo git clone https://$USER:$TOKEN@github.com/gocloudwave/HoneypotBuildScripts.git
        echo "Cloned HoneypotBuildScripts"
        ;;
    3)
		sudo git clone https://$USER:$TOKEN@github.com/gocloudwave/VScanBuildScripts.git
        echo "Cloned both repositories"
        ;;
    9)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac