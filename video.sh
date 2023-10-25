echo "Ne pas run en root"
echo ""

if ! command -v mpv &> /dev/null
then
    echo "mpv n'est pas installé, veuillez executer le script d'installation pour corriger le probleme"
    exit
fi


export DISPLAY=:0

echo
echo "Entrez le lien pour le téléchargement avec wget:"
echo
read link

wget $link

for file in ./*
do
    if [ -f "$file" ] && [ "$(file -b --mime-type "$file")" = "video/mp4" ]
    then
        mpv --loop --fs "./$file"
        break
    fi
done

