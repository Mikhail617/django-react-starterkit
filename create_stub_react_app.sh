#!/bin/bash

# Django
mkdir django_react_starter
cd django_react_starter
pip3 install virtualenv
virtualenv -p python3 .venv
source .venv/bin/activate
pip3 install django
python manage.py startapp api
python manage.py startapp frontend
pip3 install djangorestframework

# Create backup folder for default files
mkdir backup
cp ../models.py backup/models.py
cp ../serializers.py backup/serializers.py
cp ../views.py backup/views.py
cp ../urls.py backup/urls.py
cp ../settings.py backup/settings.py
cp ../App.js backup/App.js
cp ../HomePage.js backup/HomePage.js
cp ../index.js backup/index.js
cp ../index.html backup/index.html
cp ../babel.config.js backup/babel.config.js
cp ../webpack.config.js backup/webpack.config.js

# Default Django files
mkdir api
mv ../models.py api/models.py
mv ../serializers.py api/serializers.py
mv ../views.py api/views.py
mv ../urls.py api/urls.py
mv ../settings.py api/settings.py

# React
mkdir frontend
cd frontend
yarn install
npm init -y
npm install @babel/core @babel/preset-env @babel/preset-react babel-loader react react-dom react-router-dom webpack webpack-cli
mkdir templates
cd templates
mkdir frontend
cd frontend
touch index.html
mkdir -p static/css
cd static/css
touch index.css
cd ../..
mkdir -p static/frontend
cd static/frontend
mkdir -p src/components
cd src
touch index.js
cd components
touch HomePage.js
touch App.js
cd ../../../../../../../../
ls
# Default frontend files
mv index.html django_react_starter/frontend/templates/frontend/index.html
mv index.js django_react_starter/frontend/templates/frontend/static/frontend/src/index.js
mv App.js django_react_starter/frontend/templates/frontend/static/frontend/src/components/App.js
mv HomePage.js django_react_starter/frontend/templates/frontend/static/frontend/src/components/HomePage.js
mv babel.config.js django_react_starter/frontend/templates/frontend/babel.config.js
mv webpack.config.js django_react_starter/frontend/templates/frontend/webpack.config.js

