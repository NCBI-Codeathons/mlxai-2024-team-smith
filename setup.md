# Setup

- Install Docker Desktop
- Run `docker build -t sciencelab .`
- Execute container `docker run -d --name lab -p 8888:8888 -v $PWD:/usr/src sciencelab` # Linux or Mac
- Execute container `docker run -d --name lab -p 8888:8888 -v C:\folder\project\:/usr/src sciencelab` # Linux or Mac
- Open a browser `http://localhost:8888`