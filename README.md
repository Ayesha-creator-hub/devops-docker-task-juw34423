# DevOps Docker Task

## Student Information
- **Name:** Ayesha Masood
- **Student ID:** JUW34423
- **Course:** DevOps

## Application Description
A minimal Node.js/Express web application that displays the student's name,
student ID, course name, and a confirmation message that it is running
inside a Docker container.

## Technologies Used
- Git
- GitHub
- Docker
- Docker Hub
- Node.js / Express

## Dockerfile Explanation
- `FROM node:20-alpine` — uses a small official Node.js 20 image (Alpine Linux) as the base.
- `WORKDIR /app` — sets `/app` as the working directory for all following instructions.
- `COPY package*.json ./` — copies `package.json` (and `package-lock.json` if present) first, so dependency installation is cached separately from source code changes.
- `RUN npm install` — installs the app's dependencies inside the image.
- `COPY . .` — copies the rest of the application source code into the image.
- `EXPOSE 3000` — documents that the container listens on port 3000.
- `CMD ["npm", "start"]` — the command that runs when a container starts from this image.

## Docker Commands
```bash
# Build the image
docker build -t <ayesha74>/devops-task:v1 .

# Verify the image exists
docker images

# Run the container
docker run -d -p 3000:3000 --name devops-task < ayesha74>/devops-task:v1

# Check the running container
docker ps

# View logs
docker logs devops-task

# Inspect the container
docker inspect devops-task

# Log in to Docker Hub
docker login

# Tag the image (if not already tagged during build)
docker tag devops-task < ayesha74>/devops-task:v1

# Push the image
docker push < ayesha74>/devops-task:v1

# Remove local container and image, then pull fresh from Docker Hub
docker rm -f devops-task
docker rmi < ayesha74>/devops-task:v1
docker pull < ayesha74>/devops-task:v1
docker run -d -p 3000:3000 --name devops-task < ayesha74>/devops-task:v1
```

## Docker Hub
Docker Hub Repository: https://hub.docker.com/r/< ayesha74>/devops-task

## How to Run
```bash
docker pull < ayesha74>/devops-task:v1
docker run -d -p 3000:3000 --name devops-task < ayesha74>/devops-task:v1
```
Then open http://localhost:3000 in your browser.

## Screenshots
1. GitHub repository
2. Dockerfile
3. Docker image (`docker images`)
4. Running container (`docker ps`)
5. Application in browser
6. Docker Hub repository
7. Docker pull and run from Docker Hub

