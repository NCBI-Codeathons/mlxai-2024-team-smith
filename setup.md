# Setup

- Install Docker Desktop
- Run `docker build -t sciencelab .`
- Execute container `docker run -d -p 8888:8888 -v $PWD:/usr/src sciencelab`
- Open a browser `http://localhost:8888`