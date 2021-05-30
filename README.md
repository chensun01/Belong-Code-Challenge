# Belong-Code-Challenge
This repository is for Belong code challenge.

This is a YAML template for AWS Cloudformation. The purpose is to complete the automatic deployment of a website.

As follow is the overall architecture of the deployment.
<img src="https://github.com/chensun01/Belong-Code-Challenge/blob/main/template1-designer.png?raw=true" width="800">

As a result, port 80 of CCEC2PUB is open to the public. Port 22 (SSH) is only open to the developer IP and requires a key to access.
The web page is downloaded from S3 Bucket and deployed by a private EC2 (CCEC2PRI), service through httpd. 
Developers can use CCEC2PUB as a proxy to access CCEC2PRI with the same Key.

Note that this template is environment sensitive.
Parameters 'DeveloperIP' and 'KeyName' needs to be modified before deploy.