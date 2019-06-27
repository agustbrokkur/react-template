if [ $# -ne 1 ]; then
	echo "There must be a single variable with the app name"
	echo "Correct format:"
	echo "./react-setup.sh 'My App Name'"
else
	sed -i 's/react-template/$1/g' package.json
	cd public
	sed -i 's/React App/$1/g' index.html
	cd ..
	cd ..
	mv react-template $1
	cd $1
	npm install
	rm -rf .git
	rm "react-setup.sh"
fi