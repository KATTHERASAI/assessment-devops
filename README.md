                                                  # END-TO-END-DEVOPS ASSESSMENT
                                                  
**Architecture flow**
User --> Internet --> EC2 (Auto Scaling Group)--> Docker (Java App) --> RDS PostgreSQL --> DynamoDB --> SSM Parameter Store --> IAM Role.

**CI/CD Flow**
Developer --> GitHub --> GitHub Actions --> Build --> Docker --> ECR --> EC2.

**Architecture flow Diagram**
<img width="979" height="815" alt="image" src="https://github.com/user-attachments/assets/678ca7dd-8f3b-40e5-9f5c-0be5b77d4a83" />

                                    Cost Report (Free Tier Compliance)
This project is designed within AWS Free Tier limits
EC2: t3.micro instances used with Auto Scaling 
RDS: db.t3.micro (Single-AZ) used within free tier limits
DynamoDB: Payper request mode within free usage limits
ECR: Only one Docker image stored (Used the alpine images - 64 MB)
Networking: No NAT Gateway used (avoids additional charges), Please find the images below for the refernce

                                                **AWS Billing**
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/ef50e61f-7636-449d-a987-b6e0fe1c377b" />
                                                 
                                                  **EC2** 
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/60a7e026-cdfe-4fe6-978a-ebe32cea509c" />
                                                 
                                                  **PostgreSQL** 
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/0979228f-788b-47bd-8ca0-96b1dcc14864" />
                                                    
                                                    **AWS ECR** 
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/20f26422-7ad8-4eaf-bcc8-587933d82eeb" />
                                                     **Security Grp**
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/07c446bc-3bfe-41e6-a83a-0b32c5d8412c" />

                                                     
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/4b88059e-0c54-415e-bea6-43996c1b7cfd" />







