# DevOps FAT2 – Docker + Linux Commands

## 1. Five DevOps concepts

1. **Continuous Integration (CI)** – ...
2. **Continuous Delivery/Deployment (CD)** – ...
3. **Infrastructure as Code (IaC)** – ...
4. **Monitoring & Logging** – ...
5. **Version Control with Git** – ...

## 2. Steps I followed to complete the assignment

### Docker commands used

```bash
docker build -t cruzer2810/devops-fat2:latest .
docker images
docker run --rm cruzer2810/devops-fat2:latest
docker login
docker push cruzer2810/devops-fat2:latest
```

### Dockerfile

```dockerfile
FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update
CMD ["/bin/bash", "-c", "\
  echo '*** DevOps FAT2 - Basic Linux Commands ***'; \
  echo; \
  echo '1) Current user:'; whoami; \
  echo; \
  echo '2) Current directory:'; pwd; \
  echo; \
  echo '3) List files:'; ls -la; \
  echo; \
  echo '4) Current date/time:'; date; \
  echo; \
  echo '5) Disk usage of / (top level):'; du -sh /* 2>/dev/null | head -5; \
  echo; \
  echo 'Done. Exiting container.' \
"]
```

### Detailed Explanation

**What the Dockerfile does:** The Dockerfile I created starts with an Ubuntu 22.04 base image, which provides a lightweight Linux environment. It sets the working directory to `/app` inside the container and runs `apt-get update` to refresh the package lists. The main part is the CMD instruction, which executes a series of basic Linux commands when the container starts. These commands demonstrate fundamental Linux operations like checking the current user with `whoami`, showing the working directory with `pwd`, listing files with `ls -la`, displaying the current date and time with `date`, and checking disk usage with `du`. The output is formatted nicely with echo statements to make it easy to read.

**How I built the image:** I built the Docker image using the command `docker build -t cruzer2810/devops-fat2:latest .` in my terminal while inside the project directory where the Dockerfile was located. The `-t` flag allowed me to tag the image with my Docker Hub username and a descriptive name, and the dot at the end told Docker to use the current directory as the build context. Docker read through each instruction in the Dockerfile, creating layers for each step, and finally produced a complete image tagged as `cruzer2810/devops-fat2:latest`.

**How I ran and tested the container:** After building the image, I tested it by running `docker run --rm cruzer2810/devops-fat2:latest`. The `--rm` flag automatically removes the container after it exits, keeping my system clean. When I ran this command, the container started, executed all the Linux commands defined in the CMD instruction, displayed the output in my terminal, and then stopped. I verified that all five commands (whoami, pwd, ls, date, and du) executed correctly and produced the expected output.

**How I created the Git repo and pushed the code:** I initialized a Git repository in my project folder using `git init`, then staged my files with `git add Dockerfile README.md`. I committed these changes with a descriptive message using `git commit -m "DevOps FAT2: Dockerfile and README"`. After creating a new repository on GitHub called `devops-fat2`, I connected my local repository to the remote one with `git remote add origin` followed by my GitHub repository URL. Finally, I pushed my code to GitHub using `git push -u origin main`, which uploaded my files to the remote repository.

**How I pushed the image to Docker Hub:** First, I logged into Docker Hub from my terminal using `docker login`, which prompted me for my username and password. Once authenticated, I pushed my image to Docker Hub using `docker push cruzer2810/devops-fat2:latest`. This command uploaded all the image layers to Docker Hub's registry, making it publicly accessible. I verified the push by checking my Docker Hub account in the browser to ensure the image appeared in my repositories.

## 3. How this assignment helped me learn

This assignment provided hands-on experience with four critical areas that form the foundation of modern DevOps practices. **For DevOps**, I learned about automation and creating reproducible environments through infrastructure as code. Instead of manually setting up environments each time, I could define everything in a Dockerfile and share it with anyone—this showed me how DevOps eliminates the "works on my machine" problem and makes deployments consistent across teams. **For Linux**, I gained practical command-line experience by working with essential commands like `whoami`, `pwd`, `ls -la`, `date`, and `du`. Running these inside a container helped me understand how Linux systems operate and why these commands are fundamental for system administration and troubleshooting.

**For Git**, I practiced the complete version control workflow—from initializing a repository, staging and committing changes, to pushing code to a remote repository on GitHub. This taught me how teams collaborate on code, track changes over time, and maintain a history of their work. **For Docker**, I understood the entire container lifecycle: writing a Dockerfile to define an image, building that image with specific tags, running containers from the image, and publishing to Docker Hub registry. This hands-on practice showed me how Docker packages applications with all their dependencies into portable containers that can run consistently anywhere, which is essential for modern software deployment and microservices architecture.

---

## 4. Push the code to GitHub

1. On GitHub, click **"New repository"** → name it e.g. `devops-fat2` → keep it **Public** → **do NOT** add a README here (we already have one locally) → Create repo.

2. In your terminal (inside the project folder):

   ```bash
   git add .
   git commit -m "DevOps FAT2: Dockerfile and README"
   git branch -M main
   git remote add origin https://github.com/madhumitaprasad/devops-fat2.git
   git push -u origin main
   ```

3. Visit your GitHub repository URL to verify that both files (`Dockerfile` and `README.md`) are now visible in the repository.
```
