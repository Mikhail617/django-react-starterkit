#!/bin/bash

# Django
pip3 install virtualenv
virtualenv -p python3 .venv
source .venv/bin/activate
pip3 install django
pip3 install django-admin
pip3 install djangorestframework
django-admin startproject django_react_starter
cd django_react_starter
django-admin startapp api
django-admin startapp frontend
cd ..

# Create backup folder for default files
mkdir backup
cp models.py backup/models.py
cp serializers.py backup/serializers.py
cp views.py backup/views.py
cp urls.py backup/urls.py
cp settings.py backup/settings.py
cp App.js backup/App.js
cp HomePage.js backup/HomePage.js
cp index.js backup/index.js
cp index.html backup/index.html
cp babel.config.js backup/babel.config.js
cp webpack.config.js backup/webpack.config.js

# Default Django files
#mv models.py api/models.py
#mv serializers.py api/serializers.py
#mv views.py api/views.py
#mv urls.py api/urls.py
#mv settings.py api/settings.py
cp models.py django_react_starter/api/models.py
cp serializers.py django_react_starter/api/serializers.py
cp views.py django_react_starter/api/views.py
cp urls.py django_react_starter/api/urls.py
cp settings.py django_react_starter/api/settings.py

# React
cd django_react_starter/frontend
yarn install

# ⌨ NPM Setup Commands ⌨
npm init -y
npm install @babel/core @babel/preset-env @babel/preset-react babel-loader react react-dom react-router-dom webpack webpack-cli

mkdir templates
cd templates
mkdir frontend
cd frontend
touch index.html
cd ../..
mkdir -p static/css
cd static/css
touch index.css
cd ../..
mkdir -p static/frontend
mkdir -p src/components
cd src
touch index.js
cd components
touch HomePage.js
touch App.js
cd ../../../../
ls # debug

# Default frontend files
mv index.html django_react_starter/frontend/templates/frontend/index.html
mv index.js django_react_starter/frontend/static/frontend/src/index.js
mv App.js django_react_starter/frontend/src/components/App.js
mv HomePage.js django_react_starter/frontend/src/components/HomePage.js
mv babel.config.js django_react_starter/frontend/templates/frontend/babel.config.js
mv webpack.config.js django_react_starter/frontend/templates/frontend/webpack.config.js

cd django_react_starter

# Run migrations and start server
python manage.py makemigrations
python manage.py migrate
python manage.py runserver

