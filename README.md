# faas-figlet
FaaS Figlet image

Try on PWD:

http://play-with-docker.com/?stack=https://raw.githubusercontent.com/jmkhael/faas-figlet/master/docker-compose.yml&stack_name=func

then:

```
curl http://localhost:8080/function/func_figlet -d 'Hello, FaaS, world'
```

Alternatively, you can deploy FaaS gateway and the figlet function locally:
```
git clone https://github.com/jmkhael/faas-figlet
docker stack deploy -c docker-compose.yml figlet
```

Or deploy the full FaaS (with prometheus and others)
```
git clone https://github.com/alexellis/faas && \
  cd faas && \
  ./deploy_stack.sh && \
  docker service ls
```

Then clone this repo, build, deploy and test:

```
git clone https://github.com/jmkhael/faas-figlet
cd faas-figlet
./build.sh
./deploy.sh
./test.sh
```
