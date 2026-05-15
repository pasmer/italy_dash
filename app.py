from flask import Flask, render_template
import os

app = Flask(__name__, template_folder='.')

@app.route('/')
def dashboard():
    return render_template('Template/dashboard.html')

if __name__ == '__main__':
    # Run on port 8100 inside the container
    app.run(host='0.0.0.0', port=8100)
