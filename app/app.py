
import cv2
import pafy
from tensorflow.keras.models import load_model
import numpy as np
from flask import Flask, request, url_for, redirect, render_template, jsonify, Response

modelo_final = load_model('modelos/terceiro_modelo.h5')


app = Flask(__name__, template_folder = 'templates')

dict_emocoes = {
    0: "Zangado", 
    1: "Nojo", 
    2: "Medo", 
    3: "Feliz",
    4: "Natural", 
    5: "Triste", 
    6: "Surpresa"
}


def frames1():

    cap = cv2.VideoCapture(0)
    a = True
    while a == True:
        ret, frame1 = cap.read()
        ret, buffer = cv2.imencode('.jpg', frame1)
        frame = buffer.tobytes()
        yield (b'--frame\r\n'
                b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')  # concat frame one by one and show result
        bounding_box = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
        frame2 = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)
        num_faces = bounding_box.detectMultiScale(frame2,scaleFactor=1.1, minNeighbors=2)
        for (x, y, w, h) in num_faces:
            cv2.rectangle(frame1, (x, y-50), (x+w, y+h+10), (0, 0, 255), 2)
            roi_frame = frame2[y:y + h, x:x + w]
            img_redi = np.expand_dims(np.expand_dims(cv2.resize(roi_frame, (48, 48)), -1), 0)
            emotion_prediction = modelo_final.predict(img_redi)
            maxindex = int(np.argmax(emotion_prediction))
            cv2.putText(frame1, dict_emocoes[maxindex], (x+20, y-50), cv2.FONT_HERSHEY_SIMPLEX, 1, (0,0,255), 2, cv2.LINE_AA)

        ret, buffer = cv2.imencode('.jpg', frame1)
        frame = buffer.tobytes()
        yield (b'--frame\r\n'
                b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')  # concat frame one by one and show result
        
        if cv2.waitKey(1) & 0xFF == ord('q'):
            a = False

    cap.release()
    cv2.destroyAllWindows()
@app.route("/")
def home():
     return render_template("home.html", title = "Detecção de emoções")

# @app.route('/detecta', methods = ['GET'])



@app.route('/detecta', methods = ['GET'])

def detecta():
    return Response(frames1(), 
        mimetype='multipart/x-mixed-replace; boundary=frame')


if __name__ == "__main__":
    app.run()


