# This is a class to store configuration variables
#
# I like this formulation for storing config variables because all
# variables first check for an environment variable to be present 
# as they should be in a deployment environment if the environment
# variable don't exist (development environment) they are easily 
# overridden with defaults
#
# To use config variables
# from microservice_package import app
# key = app.config['SECRET_KEY']
import os


class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'secret_key_for_development'
