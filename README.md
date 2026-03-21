# END-TO-END-DEVOPS 
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
ECR: Only one Docker image stored (64 MB)
Networking: No NAT Gateway used (avoids additional charges), Please find the images below for your refernce

<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/ef50e61f-7636-449d-a987-b6e0fe1c377b" />
<img width="979" height="552" alt="image" src="https://github.com/user-attachments/assets/8b9ce826-c705-4999-ac89-d3a0f2ba3059" />
<img width="979" height="277" alt="image" src="https://github.com/user-attachments/assets/6c111736-a6dd-474a-b088-fad6e76b17c9" />
<img width="979" height="277" alt="image" src="https://github.com/user-attachments/assets/5c488251-4b18-4815-a374-4eee3858ab62" />
<img width="602" height="227" alt="image" src="https://github.com/user-attachments/assets/d18e3419-3cf7-4d8a-8314-dd96724ffedd" />
<img width="696" height="309" alt="image" src="https://github.com/user-attachments/assets/82fe0061-4b6a-42d4-b9eb-c0eb2843d94f" />






