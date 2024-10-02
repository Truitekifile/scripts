#!/bin/bash

# Vérifiez si le script est exécuté en tant que root
if [ "$(id -u)" -ne 0 ]; then
  echo "Ce script doit être exécuté en tant que root."
  exit 1
fi

# Désactiver tous les périphériques USB
echo "Désactivation des périphériques USB..."
for i in /sys/bus/usb/devices/*/power/control; do
  echo 'on' > "$i"
done

# Message HTML à afficher
cat > /tmp/blocked.html << EOF
<html>
<head>
  <title>Bloqué</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: black;
      color: white;
      font-size: 24px;
      font-family: Arial, sans-serif;
    }
  </style>
</head>
<body>
  <p>Cet ordinateur a été bloqué par un administrateur.</p>
</body>
</html>
EOF

# Ouvrir le fichier HTML dans un navigateur en mode plein écran
xdg-open /tmp/blocked.html
