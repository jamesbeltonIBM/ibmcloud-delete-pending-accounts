# ibmcloud-delete-pending-accounts
This script can be run on Linux / MacOS computers against an IBM Cloud account to remove accounts that are in a PENDING state.
 
What the script is basically doing is using the ibmcloud CLI tool and its 'account' plugin. Therefore, you need to make sure that you have the ibmcloud CLI installed on the machine that you are running the shell script from. If you don't already have this installed, then you can find the links and instructions here: https://cloud.ibm.com/docs/cli/reference/ibmcloud?topic=cloud-cli-install-ibmcloud-cli
 
Before running the script, you will also need to be logged into your account, via the CLI - to do this enter the command: 
 
ibmcloud login
 
So, when you run the shell script, it will give you some screen output to start with and list the users that it finds in the PENDING state. Check that these are the users you want to delete - once an account is deleted, it will remove any associated resources. If you are happy to proceed, enter 'Y' or 'y' at the prompt and then the users will be deleted one by one and it will say 'OK - all done!" when it has finished. 
 
Please note - I have tested this script with my account and successfully removed a pending user account, while leaving all other accounts untouched. While I have confidence that it works as intended (remove users on your account in a PENDING state), this is offered for you to use and run against your account AT YOUR OWN RISK and it's offered WITH NO WARRANTY OR SUPPORT.
