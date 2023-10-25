echo "Ne pas run en root"

if ! command -v mpv &> /dev/null
then
    apt install mpv
fi

export DISPLAY=:0

echo "Entrez le lien pour le téléchargement avec wget:"
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

