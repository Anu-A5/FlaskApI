from flask import Flask, request, jsonify, render_template

app = Flask(__name__)

username = #user name
password = #password
passwordHash = hash(password)
usernameHash = hash(username)

passGranted = False

settings = {'Lights':0,'Alarm':0}

class Datas:
    code=""

    def __init__(self):
        return None

h = Datas()

@app.route('/Spotify.html', methods = ['GET'])
def get_code():
    passGranted = False
    if request.method == 'GET':
        h.code = request.args.get('code')
        return render_template("Spotify.html")
    
@app.route('/')
def init():    
    passGranted = False
    return render_template("mainPage.html")

@app.route('/Login.html')
def LoginP():    
    passGranted = False
    return render_template("Login.html")

@app.route('/mainPage.html')
def MainPageP():    
    passGranted = False
    return render_template("mainPage.html")

@app.route('/Control.html')
def ControlP():
    if(passGranted == True):
        return render_template("Control.html")
    else:
        return render_template("Login.html")
    

@app.route('/code', methods = ['GET'])
def return_code():
    return jsonify({'code':f"{h.code}"})

@app.route('/controllers', methods = ['POST'])
def controller():
    print(request.form)
    for keys, val in request.form.items():
        if(settings[keys] == val):
            settings[keys] = 0
        else:
            settings[keys] = val

    print(settings)

    return render_template("Control.html", LightsV=settings['Lights'], AlarmV=settings['Alarm'])

@app.route('/login', methods = ['POST'])
def login():

    username = request.form["Username"]
    password = request.form["Password"]

    if((hash(password) == passwordHash) and (hash(username) == usernameHash)):
        return render_template("Control.html", LightsV=settings['Lights'], AlarmV=settings['Alarm'])
        passGranted = True
    else:
        return render_template("LoginError.html")

if __name__ == "__main__":
    app.run(debug=True)
