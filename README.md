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
<img width="1895" height="861" alt="Screenshot 2026-08-17 114000" src="https://github.com/user-attachments/assets/f39cf347-2bca-4eb5-be94-1818fdb6747e" />


2. Dockerfile
<img width="1398" height="618" alt="Screenshot 2026-08-17 114328" src="https://github.com/user-attachments/assets/091727f9-9d14-46a0-8692-2e604004a85b" />


3. Docker image (`docker images`)
<img width="1341" height="538" alt="Screenshot 2026-08-17 114438" src="https://github.com/user-attachments/assets/86aab6c4-5e8a-462e-bf59-4fa80030a046" />


4. Running container (`docker ps`)
<img width="1442" height="117" alt="Screenshot 2026-08-17 115657" src="https://github.com/user-attachments/assets/2b456a2c-77d6-4d19-baa5-6be66ce630f4" />


5. Application in browser
<img width="1197" height="635" alt="Screenshot 2026-08-17 115715" src="https://github.com/user-attachments/assets/a910a8dc-ff55-4dca-82bc-acc8f6edbd84" />


6. Docker Hub repository
<img width="1899" height="851" alt="Screenshot 2026-08-17 115843" src="https://github.com/user-attachments/assets/84c529df-df06-414f-a6b7-6bf2ee2f34fc" />


7. Docker pull and run from Docker Hub
<img width="1442" height="708" alt="Screenshot 2026-08-17 115600" src="https://github.com/user-attachments/assets/5b7cc765-d1cd-4d5a-8521-dbfc4be843e8" />


