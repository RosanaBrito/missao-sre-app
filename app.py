from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # Exibindo uma mensagem e o "nome" do container (hostname)
    # Isso será útil depois no Kubernetes!
    hostname = os.uname()[1]
    return f"<h3>Olá, SRE!</h3><p>Estou rodando no container: {hostname}</p>"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
