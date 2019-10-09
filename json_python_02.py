import os
import json
from flask import Flask, render_template, request


app = Flask(__name__)



def cargarDatos(ruta):
    # contexto 
    # basicamente se establece una configuracion inicial y final.
    # para recuperar  valores.
    with open(ruta) as contenido:
        profesor = json.load(contenido)
    
    # tenemos un int en un formualrio, cuando pasamos los datos por request.form,
    # al hacer un json se convierte el valor del request form a un integer?
    
    print (type( profesor["idcursos"][0]))
    t = profesor["idcursos"][0]
    x = t + 10
    print(x)
    print(profesor)
    
    print(profesor.get("nombre"))



@app.route("/")
def home():
    
    if request.method =="POST":
        return render_template("index.html")
    else:
        return render_template("index.html")




def run():
    cargarDatos("datos.json")

if __name__ == "__main__":
    app.run("127.0.0.1", port=80, debug=True)