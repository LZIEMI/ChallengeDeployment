aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 549602449476.dkr.ecr.us-west-2.amazonaws.com
cd backend
docker build -t backend .
docker tag backend:latest 549602449476.dkr.ecr.us-west-2.amazonaws.com/backend:latest
docker push 549602449476.dkr.ecr.us-west-2.amazonaws.com/backend:latest