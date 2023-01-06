FILE=${SOPS_KEY_PATH:-~/.config/sops/age/keys.txt}

if [ -f "$FILE" ]; then
    echo "$FILE exists."
    exit 0;
elif [ -z "${SOPS_AGEKEY}" ]; then
    echo "SOPS_AGEKEY not set. Exiting."
    exit 1;
else
    mkdir -p $(dirname $FILE)
    echo $SOPS_AGEKEY > $FILE
    "Copied SOPS_AGEKEY to $FILE."
fi