# Fetch python3.8 docker base image from AWS ECR
FROM public.ecr.aws/lambda/python:3.8.2021.12.18.01-x86_64
COPY . .
# You can overwrite command in `serverless.yml` template