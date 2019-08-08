#!/bin/bash
# Just change this path variable, and add FULL path from root
path='/media/ayush-bansal/942A3BC42A3BA262/Project/Bash_Scripts/'

function diskSort(){
	current=$(pwd)
	mkdir $1"_files"
	echo " Moving files...."
	cp *.$1 $current"/"$1"_files"
	rm *.$1
}

function Test(){
	$path./test.sh
}

function py(){
	python3 $1
}

function c(){
	gcc -o a $1
	echo "Complied Successfully\n"
	./a
	rm a
}

function cpp(){
	g++ -o a $1 
	echo "Complied Successfully\n"
	./a
	rm a
}

function facebook(){
	python3 $path"Python_Scripts/facebook_login.py"
}

function CodeForces(){
	if [ $1 = "fetch" ]
	then
		py $path"Python_Scripts/CodeForces_fetch.py"
	fi
	if [ $1 = "login" ]
	then
		py $path"Python_Scripts/CodeForces_login.py"
	fi
}

function CodeChef(){
	if [ $1 = "fetch" ]
	then
		py $path"Python_Scripts/CodeChef_fetch.py"
	fi
	if [ $1 = "login" ]
	then
		py $path"Python_Scripts/CodeChef_login.py"
	fi
}

function Submission(){
	py $path"Python_Scripts/Submissions.py"
}
