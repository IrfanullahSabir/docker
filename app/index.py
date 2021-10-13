from flask import Flask

app = Flask(__name__)


@app.route('/')
def docker():
    return "Docker Environment Testing"
    
@app.route('/home')
def home():
    return "Wellcome to home"


app.run(host='0.0.0.0', port=4000)
