from flask import Flask, Response

app = Flask(__name__)

@app.route('/api', methods=['GET'])
def hello_world():
    return Response("Hello, World!", status=200, mimetype='text/plain')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)