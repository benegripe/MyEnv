#!/usr/bin

name_full=$1
name_full+="."
file_extension=$2
name_full+=${file_extension,,}

if ! [ -f "$name_full" ]; then
	touch $name_full
	if [ ${file_extension,,} = "sh" ]; then
		echo "#!/usr/bin" >> $name_full
		chmod 700 $name_full
	elif [ ${file_extension,,} = "py" ]; then
		echo "#!/usr/py" >> $name_full
	fi
	echo "#solved by FabioLima" >> $name_full
else
	echo "File already exists"
fi
