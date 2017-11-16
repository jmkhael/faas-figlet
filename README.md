# faas-figlet
FaaS Figlet image.

This repository comes with the blog post http://jmkhael.io/create-a-serverless-ascii-banner-with-faas/

You can either try it in PWD, or locally.

[![Try in PWD](https://cdn.rawgit.com/play-with-docker/stacks/cff22438/assets/images/button.png)](http://play-with-docker.com/?stack=https://raw.githubusercontent.com/jmkhael/faas-figlet/master/docker-compose.yml&stack_name=func)

then:

```
curl http://localhost:8080/function/func_figlet -d 'Hello, FaaS, world'
```

```
 _   _      _ _          _____           ____                        _     _
| | | | ___| | | ___    |  ___|_ _  __ _/ ___|   __      _____  _ __| | __| |
| |_| |/ _ \ | |/ _ \   | |_ / _` |/ _` \___ \   \ \ /\ / / _ \| '__| |/ _` |
|  _  |  __/ | | (_) |  |  _| (_| | (_| |___) |   \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___( ) |_|  \__,_|\__,_|____( )   \_/\_/ \___/|_|  |_|\__,_|
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
