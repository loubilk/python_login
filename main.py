from bottle import run, route, template, static_file
import os

my_dir = os.getcwd()

@route('/')
def index():
    return template('index')

@route('/static/<filepath:path>')
def serve_static_content(filepath):
    my_root = os.path.join(my_dir, 'static')
    return static_file(filepath, root=my_root)

run(reloader=True, debug=True)