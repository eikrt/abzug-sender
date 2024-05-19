IP="192.168.1.109"
TOPIC="images/weather"
USERNAME=$(cat /home/user/abzug-sender/username)
PASSWORD=$(cat /home/user/abzug-sender/passwd)
IMG_BASE64=$(cat /home/user/abzug-sender/image.base64)

nix shell nixpkgs#mosquitto --command mosquitto_pub -h localhost -t images/weather -m "$IMG_BASE64" -u $USERNAME -P $PASSWORD
