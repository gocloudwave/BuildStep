
read -r -p "[1/2] Enter GitHub User: " USER
echo "GH User: $USER"
read -r -s -p "[2/2] Enter GitHub Token: " TOKEN
echo "GH Token: ${#TOKEN} characters"

sudo apt update && sudo apt upgrade -y
sudo apt install -y git

cd /opt

echo "Select an option to clone:"
echo "1) Clone SentinelBuildScripts"
echo "2) Clone HoneypotBuildScripts"
echo "3) Clone VScanBuildScripts"
echo "4) Clone OrchestratorBuildScripts"
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
        echo "Cloned VScanBuildScripts"
        ;;
    4)
        sudo git clone https://$USER:$TOKEN@github.com/gocloudwave/OrchestratorBuildScripts.git
        echo "Cloned OrchestratorBuildScripts"
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