PRODUCTION_URL="http://apache:80"

PRODUCTION_RESPONSE=$(curl --write-out '%{response_code}' --head --silent --output /dev/null $PRODUCTION_URL)

echo -e "Production status code:"

if [ "$PRODUCTION_RESPONSE" == "200" ]
then
	echo -e "${GREEN_BOLD}$PRODUCTION_RESPONSE${CLEAR}" >> output/file.txt
else
	echo -e "${RED_BOLD}$PRODUCTION_RESPONSE${CLEAR}" >> output/file.txt
fi