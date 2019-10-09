"""
programa donde visualizamos los datos que nos pasan por json
"""

from flask import Flask, render_template, request, abort, redirect, url_for
import json

app = Flask(__name__)


# @aaaaa@aula@bbbbb

@app.route("/", methods=["GET", "POST"])
def home():


    if request.method == "POST":
        with open("json\paises.json") as datos:
            # dat = json.loads(datos.read())
            dat = json.load(datos)

        context = {
            "isError": 1,
            "pais": "",
            "poblacion": "",
            "mensajeError": "Pais No encontrado"

        }

        for i in range(0, len(dat) - 1):
            if request.form["pais"].lower() == dat[i].get("country").lower():
                print("{}".format(request.form["pais"]))
                print("{}".format(dat[i]["country"]))

                context["pais"] = dat[i].get("country")
                context["poblacion"] = dat[i].get("population")
                context["isError"] = 2
                context["mensajeError"] = ""
                break

        return render_template("index2.html", dt=context)

    else:

        context = {
            "isError": 0,
            "pais": "",
            "poblacion": "",
            "mensajeError": ""

        }
        return render_template("index2.html", dt=context)


if __name__ == "__main__":
    app.run("127.0.0.1", 5001, debug=True)
