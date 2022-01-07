pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U
rustup update
sudo apt update
flatpak update -y
sudo snap refresh
sudo dpkg --configure -a
sudo apt --fix-broken install -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
