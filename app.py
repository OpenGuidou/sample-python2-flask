import os
from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def hello():
    return render_template('index.html')

if __name__ == "__main__":
    print("Running app")
    port = int(os.environ.get("PORT", 5000))
    if port != 5000:
        print("Using non-standard port %d" % port)
    app.run(host='0.0.0.0', port=port)