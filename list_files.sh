#!/bin/bash
# Proper header for a Bash script.

echo '****************************************************************'
echo 'BEGIN compiling the list of files that make up the MVC structure'

mkdir -p notes

echo 'This file was AUTOMATICALLY generated by the list_files.sh script.' > notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns app/controllers >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns app/helpers >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns app/mailers >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns app/models >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns app/views >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns db >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns features >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns spec >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
ls -R1 -I concerns test >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
echo '----------------' >> notes/1-file_list.txt
echo 'config/routes.rb' >> notes/1-file_list.txt
cat config/routes.rb >> notes/1-file_list.txt

echo '' >> notes/1-file_list.txt
echo '-----------' >> notes/1-file_list.txt
echo 'rake routes' >> notes/1-file_list.txt
rake routes >> notes/1-file_list.txt

echo 'FINISHED compiling the list of files that make up the MVC structure'
echo '*******************************************************************'
