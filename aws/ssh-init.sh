#!/bin/bash
# Create the new key
ssh-keygen -t rsa -N "" -f /home/ubuntu/.ssh/id_rsa
# Print the key to the console
cat /home/ubuntu/.ssh/id_rsa.pub
