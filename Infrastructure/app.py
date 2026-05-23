from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from CloudOps Enterprise Platform!"

@app.route('/health')
def health():
    return {"status": "healthy", "service": "CloudOps-App"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)