if [ $# -ne 1 ]; then
	echo "There must be a single variable"
	echo "$0"
	rm "testan - Copy.sh"
else
	sed -i 's/react-template/$1/g' file.txt
	cd public
	sed -i 's/React App/$1/g' file.txt
	cd ..
	npm install
fi