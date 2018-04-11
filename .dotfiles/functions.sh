goto() {
	if cd ~/Code/$1; then

	else
		cd ~/Code
		mkdir $(dirname ~/Code/$1) || true
		cd $(dirname ~/Code/$1)
		git clone git@github.com:$1.git
		cd ~/Code/$1
	fi
	return 0
}
