#!/bin/bash
#generate passwordless SSH
runuser -u cn991538 -- ssh-keygen -q -t rsa -f /users/cn991538/.ssh/id_rsa -N
runuser -u cn991538 -- cat /users/cn991538/.ssh/id_rsa.pub >> /users/cn991538/.ssh/authorized_keys
