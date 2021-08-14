
import cv2
from keras.models import load_model
import numpy as np
from flask import Flask, request, url_for, redirect, render_template, jsonify

modelo_final = load_model('modelos/terceiro_modelo.h5')


app = Flask(__name__, template_folder = 'templates')


@app.route("/")
@app.route("/index")
def home():
     return render_template("home.html", title = "Detecção de emoções")

@app.route('/detecta', methods = ['GET'])

def detecta():

    dict_emocoes = {
    0: "Zangado", 
    1: "Nojo", 
    2: "Medo", 
    3: "Feliz",
    4: "Natural", 
    5: "Triste", 
    6: "Surpresa"
}
    cap = cv2.VideoCapture(0)
    a = True
    while a == True:
        ret, frame = cap.read()
        bounding_box = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        num_faces = bounding_box.detectMultiScale(gray_frame,scaleFactor=1.1, minNeighbors=2)
        for (x, y, w, h) in num_faces:
            cv2.rectangle(frame, (x, y-50), (x+w, y+h+10), (255, 0, 0), 2)
            roi_gray_frame = gray_frame[y:y + h, x:x + w]
            cropped_img = np.expand_dims(np.expand_dims(cv2.resize(roi_gray_frame, (48, 48)), -1), 0)
            emotion_prediction = modelo_final.predict(cropped_img)
            maxindex = int(np.argmax(emotion_prediction))
            cv2.putText(frame, dict_emocoes[maxindex], (x+20, y-60), cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 255, 255), 2, cv2.LINE_AA)
            cv2.imshow('Video', frame)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            a = False

    cap.release()

@app.route('/detecta1', methods = ['GET'])

def detecta1():
    vid = cv2.VideoCapture(0)
  
    while(True):
        ret, frame = vid.read()
        cv2.imshow('frame', frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
        
    vid.release()

    cv2.destroyAllWindows()

if __name__ == "__main__":
    app.run()


