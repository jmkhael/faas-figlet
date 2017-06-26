docker service rm func_figlet

curl localhost:8080/system/functions -d '
{"service": "func_figlet", "image": "jmkhael/faas-figlet", "envProcess": "figlet", "network": "func_functions"}'
