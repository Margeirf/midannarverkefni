from bottle import *
import os
import urllib.request, json
with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())
@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")

@route('/static/<filename:path>')
def static(filename):
    return static_file(filename, root='/css/')

@route('/')
def index():
    return template("temp.tpl",data=data)

@route('/allt/<name>')
def allt(name):
    return template('temp2.tpl',data=data,name=name)
@route('/allt2/<company>/<name>')
def allt2(company,name):
    return template('temp3.tpl',data=data,company=company,name=name)

@error(404)
def villa(error):
    return("Website not found")

run(host='localhost', port=8080, debug=True, realoader=True)