from flask import Flask 
app = Flask (__name__)
@app.route('/')
def hello_world():
    return 'Flask Hello World'
@app.route('/Mergim')
def test():
    return 'my greetings to Tectigon Academy'
if __name__ == '__main__':
    app.run (debug=False,host='0.0.0.0',port=8500)