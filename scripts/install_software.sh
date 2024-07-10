MYUID=$(id -u)

if [ MYUID -eq 0  ]
then
        echo "you can install software "
        read -p  "Enter software name: " pack
        yum install $(pack) -y

else
        echo "not allowed to install software..."
fi
