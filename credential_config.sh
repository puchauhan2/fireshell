ssh_user='ec2-user'  # Change your user name here 
key=./key.pem        # Fix your key file here
port='22'            # Change port here

argument='-q -o BatchMode=yes -o StrictHostKeyChecking=no'
bypass='-o StrictHostKeyChecking=no -O' # compatible for git bash only ,remove -O if using actual linux terminal