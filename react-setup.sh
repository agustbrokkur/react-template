if [ $# -ne 1 ]; then
	echo "There must be a single variable with the app name"
	echo "Correct format:"
	echo "./react-setup.sh 'My App Name'"
else
	NEWNAME=${1,,}
	NEWNAME=${NEWNAME// /-}
	sed -i "s/react-template/$NEWNAME/g" package.json
	cd public
	sed -i "s/React App/$1/g" index.html
	cd ..
	npm install
	rm -rf .git
	rm "react-setup.sh"
fi