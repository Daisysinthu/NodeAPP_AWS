# NodeAPP_AWS_Proposal_Document

Steps to be followed:
       1. Create the test and Production environment in AWS as mentioned in the picture "Architectural_Diagram.png".
       2. Install Jenkins in both environments.
       3. Execute the "initscript.sh" to setup npm in EC2 instances.
       4. Create a Jenkins Pipeline job and include Jenkins file in both Production and Test environments.
       5. Jenkins job will trigger whenever changes in Github via webhook mentioned between Jenkins and Github.
       If any deployment failure jenkins job will send mail report to developer.
       6. Cloudwatch will send mail to developer through SNS which is configured in our environments, if it catches EC2 instance's downtime/failure.  
       
