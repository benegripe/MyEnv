#!/usr/bin
#
#NameScript:	template_script.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
#
#This is a script to make others scripts in bash or python
#The script receive 2 parameters the name and extension,just py or sh, and create a file o local with a template documentation,
#similiar with this
#
#-----------------------------------
#
#Example:
# $./template_script.sh foo sh
# $ foo.sh
#
#In side the script will have a template comment like this and header
#
#-----------------------------------
#
#History
#
#v1.0 2016/09/07, FabioLima
#
#-----------------------------------
#
#License: GPL
#

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
	echo "#" >> $name_full
	echo "#NameScript:	" >> $name_full
	echo "#" >> $name_full
	echo "#Author and Maintaining: Fabio Lima" >> $name_full
	echo "#" >> $name_full
	echo "#-----------------------------------" >> $name_full
	echo "#Description:" >> $name_full
	echo "#" >> $name_full
	echo "#" >> $name_full
	echo "#-----------------------------------" >> $name_full
	echo "#" >> $name_full
	echo "#Example:" >> $name_full
	echo "#" >> $name_full
	echo "#" >> $name_full
	echo "#-----------------------------------" >> $name_full
	echo "#" >> $name_full
	echo "#History" >> $name_full
	echo "#" >> $name_full
	date_time="#v1.0 "
	date_time+=$(date +"%Y/%m/%d")
	date_time+=", FabioLima"
	echo $date_time >> $name_full
	echo "#" >> $name_full
	echo "#-----------------------------------" >> $name_full
	echo "#" >> $name_full
	echo "#License: GPL" >> $name_full
	echo "#" >> $name_full

else
	echo "File already exists"
fi
