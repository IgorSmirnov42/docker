from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    with open("/text/text.txt") as f:
        return f.read()

if __name__ == '__main__':
    app.run('0.0.0.0')
