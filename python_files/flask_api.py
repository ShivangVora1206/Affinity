from flask import Flask
from flask_restful import Api, Resource, abort
import main as m
import mysql.connector
mydb = mysql.connector.connect(
host="localhost",
user="root",
password="",
database="affinityfinder"
)

mycursor = mydb.cursor()

app = Flask(__name__)
api = Api(app)
m.build_model()
class personality_answers(Resource):
    def get(self, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10,
            q11, q12, q13, q14, q15, q16, q17, q18, q19, q20,
            q21, q22,q23, q24, q25, q26, q27, q28, q29, q30,
            q31, q32, q33, q34, q35, q36, q37, q38, q39, q40,
            q41, q42, q43, q44, q45, q46, q47, q48, q49, q50, email, uid):

            user_answers = [[q1, q2, q3, q4, q5, q6, q7, q8, q9, q10,
            q11, q12, q13, q14, q15, q16, q17, q18, q19, q20,
            q21, q22, q23, q24, q25, q26, q27, q28, q29, q30,
            q31, q32, q33, q34, q35, q36, q37, q38, q39, q40,
            q41, q42, q43, q44, q45, q46, q47, q48, q49, q50]]
            print(user_answers)
            k = m.Predict(user_answers)
            sql = f"INSERT INTO oceanscores (email, userid, openness, conscientiousness, extroversion, agreeableness, neuroticism) VALUES ({email},{uid}, {k[4]},{k[3]}, {k[0]}, {k[2]}, {k[1]})"
            mycursor.execute(sql)
            mydb.commit()
            print(mycursor.rowcount, "record inserted.")
            return k

url = '/email=<string:email>&uid=<int:uid>&q1=<float:q1>&q2=<float:q2>&q3=<float:q3>&q4=<float:q4>&q5=<float:q5>&q6=<float:q6>&q7=<float:q7>&q8=<float:q8>&q9=<float:q9>&q10=<float:q10>&q11=<float:q11>&q12=<float:q12>&q13=<float:q13>&q14=<float:q14>&q15=<float:q15>&q16=<float:q16>&q17=<float:q17>&q18=<float:q18>&q19=<float:q19>&q20=<float:q20>&q21=<float:q21>&q22=<float:q22>&q23=<float:q23>&q24=<float:q24>&q25=<float:q25>&q26=<float:q26>&q27=<float:q27>&q28=<float:q28>&q29=<float:q29>&q30=<float:q30>&q31=<float:q31>&q32=<float:q32>&q33=<float:q33>&q34=<float:q34>&q35=<float:q35>&q36=<float:q36>&q37=<float:q37>&q38=<float:q38>&q39=<float:q39>&q40=<float:q40>&q41=<float:q41>&q42=<float:q42>&q43=<float:q43>&q44=<float:q44>&q45=<float:q45>&q46=<float:q46>&q47=<float:q47>&q48=<float:q48>&q49=<float:q49>&q50=<float:q50>'
api.add_resource(personality_answers, url)


if __name__ == '__main__':
    app.run('0.0.0.0', port=5000)