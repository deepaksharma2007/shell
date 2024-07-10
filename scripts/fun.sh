mylw()
{
        echo "Hello Deepak"
        echo ""
}
# mylw


# Functions with arguments 
deep()
{
        name=${1}
        echo "my name is ${name}"
}
# deep raj


# Static function 
myuser()
{
        echo " Total user that has bash shell are:- "
        cat /etc/passwd | grep bash$ | cut -d: -f 1
}
# myuser

#  function with argument

users()
{
         echo " Total user that has bash shell are:- "
        cat /etc/passwd | grep ${1}$ | cut -d: -f 1
}
users bash

#users nologin

# Check network 
mynett()
{
        ping -c 1 www.google.com &> /dev/null
        [ $? == 0 ] &&   echo "net connected..." || echo "net issue..."
}
mynett
