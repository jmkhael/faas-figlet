# faas-figlet
FaaS Figlet image

deploy FaaS first:

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
