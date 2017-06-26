curl localhost:8080/system/functions -d '
{"service": "figlet", "image": "jmkhael/faas-figlet", "envProcess": "figlet", "network": "func_functions"}'
