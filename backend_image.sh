aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 545353233351.dkr.ecr.us-east-1.amazonaws.com
cd backend
docker build -t backend .
docker tag backend:latest 545353233351.dkr.ecr.us-east-1.amazonaws.com/backend:latest
docker push 545353233351.dkr.ecr.us-east-1.amazonaws.com/backend:latest