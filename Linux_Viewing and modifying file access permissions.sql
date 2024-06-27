## Viewing and modifying file access permissions, View file access permissions
# Required files.
cd /home/project
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/module%201/usdoi.txt


# to see the permissions for the file named usdoi.txt in your current directory, enter the following:
ls -l usdoi.txt

#  Change file access permissions:
chmod -r usdoi.txt               
# You can verify the changed permissions by entering:
ls -l usdoi.txt

# To grant read access to all users on usdoi.txt, enter:
chmod +r usdoi.txt                

# Verify the changed permissions again with the following:
ls -l usdoi.txt

# Now to remove the read permission only for 'other' category, enter the following:
chmod o-r usdoi.txt

# Verify the changed permissions as follows:
ls -l usdoi.txt



## Understanding directory access permissions:
# View default directory access permissions:
cd /home/project
mkdir test

# Check the default permissions that the system sets for your new test directory:
ls -l

# As you can see from the resulting output:
total 12
drwxr-sr-x 2 theia users 4096 May 15 14:06 test
-rw-r----- 1 theia users 8121 Sep 28  2022 usdoi.txt

# Go ahead and verify for yourself that you have permission to run the following commands. Change the directory to your test directory, create a new directory within it, then return to your parent directory:
cd test
mkdir test2
cd ../

# Remove user execute permissions on your test directory:
chmod u-x test

# chmod u-x test
chmod u-x test

# Now, what happens when you try to change directories to test:
cd test

# As you just removed execute permissions for yourself on your test directory, you can no longer make it your present working directory. However, you can still "read" it with the ls command:
ls -l

# Even though you have "write" permissions set, you can't actually create a new directory within test, because removing execute permissions overrides write permissions. For example, entering:
mkdir test/test3

# This time, try restoring execute permissions on test and denying write permissions. Then verify your changes:
chmod u+x test
chmod u-w test
ls -l

# Now you can go into test, but you still can't write to it! Entering:
cd test
mkdir test_again