from flask import Flask, redirect, url_for, request
import tensorflow as tf
from tensorflow import keras
app = Flask(__name__)
import os


print(tf.__version__)
new_model = keras.models.load_model(os.path.join('saved_model/my_model_60_2_cpu'))
# Check its architecture


@app.route('/SBIN',methods = ['POST', 'GET'])
def hello_world():
    if request.method == 'POST':
      form = request.get_json()
      new_model = keras.models.load_model(os.path.join('saved_model/my_model_60_2_cpu'))
      # Check its architecture
      new_model.summary()
      return form

if __name__ == '__main__':
    app.run()
