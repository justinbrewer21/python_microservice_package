from microservice_package import app

@app.route('/')
def index():
    return 'Hello World!'
