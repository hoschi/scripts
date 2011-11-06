#! /bin/bash

echo "scanning filesystem $1 and submit infos to id $2 with api key $3"

cmd1="df $1 | awk '/\// {print \$4}'"
cmd2="df $1 | awk '/\// {print \$5}'"
data=$(df $1 | awk '/\// {print $4}')

if [[ $data != *%* ]]
	then
		data=$(df $1 | awk '/\// {print $5}')
fi

value=$(echo $data | sed 's/%//')

echo "your filesystem is $data full"
echo "submitting value 0.$value"
echo $(curl -silent -u $3:ignored -d "{\"value\": 0.$value}"  https://push.ducksboard.com/values/$2/)
echo "finished"

