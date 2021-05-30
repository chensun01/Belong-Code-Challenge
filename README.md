# Belong-Code-Challenge
This repository is for Belong code challenge.

## Architecture
BelongCCStack.yml is the solution CloudForamtion template for generating and managing AWS resources. 

The following diagram demonstrates the overall infrastructure layout.
<img src="https://github.com/chensun01/Belong-Code-Challenge/blob/main/template1-designer.png?raw=true" width="800">

For this solution, the port 80 of CCEC2PUB is open to the public. Port 22 (SSH) is only open to the developer IP and requires a SSH key to access.
The web page is downloaded from S3 Bucket and deployed by a private EC2 (CCEC2PRI), service through httpd. 
Developers can use CCEC2PUB as a bastion to access CCEC2PRI with the same Key.
The given webpage is hosted on the private instance while it can be accessed by the public through the CCEC2PUB's public DNS or IP address.


## Deployment
1. **Option 1**
The template can be deployed by creating a new stack on AWS cloudformation console
Note that this template is environment sensitive.
Parameters 'DeveloperIP' and 'KeyName' needs to be modified before deploy.
2. **Option 2**
To deploy the stack through AWS CLI, please clone the repo, and under the project directory run:

```
./deploy.sh <DeveloperIP> <KeyName>
```

