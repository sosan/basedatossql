# -*- encode: utf8 +*-
"""
MANEJO DE JSON EN PYTHON
================
"""
import json
import csv
import os

def run():
    os.system("cls")
    with open("datos.json") as datos:
        dat = json.loads(datos.read())
        
        print(dat)
        print("*" * 50 + "\n")
        print(json.dumps(dat, indent=4))
        print(dat["nombre"])
        print(dat["idcursos"][2])
        print(dat["cursos"]["editores"][1])
        
        
        
if __name__ == "__main__":
    run()
