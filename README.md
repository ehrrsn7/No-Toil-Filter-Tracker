# No-Toil Filter Tracker

Utilizes `Django` and `React.js`

To install:

clone this repository
- `Site` is the Django Project directory
- `App` is the default Django application, which also contains the React application
- `src` contains source code for React application, which is transpiled by webpack and the build folder is put in `Site/Site/App/static/App/build/` so that the output can be accessed by `App`, the django application

load python dependencies:
```
source Site/bin/activate
pip install pip-dependencies.txt
```

load npm dependencies:
```
cd Site/App
npm install
```

Development:

run webpack: (transpile to django app)
```
cd Site/App
npm run run-webpack
```

run django server:
```
./start-server.command
```

run react server: (when working on front-end -- this only runs front-end part of app)
```
cd Site/App
npm start
```

See https://docs.python.org/3/library/venv.html for details.

