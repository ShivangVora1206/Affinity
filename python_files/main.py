from tkinter import Y
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.cluster import MiniBatchKMeans

def build_model():
    df = pd.read_csv(r'data-final\data-final.csv' ,delimiter='\t',encoding = 'unicode_escape')
    X = df[df.columns[0:50]]
    global X_test
    pd.set_option('display.max_columns', None)
    X_test= train_test_split(X, test_size=0.000033, random_state=42)

    X = X.fillna(0)
    df2 = X.to_numpy()
    global kmeans
    kmeans = MiniBatchKMeans(n_clusters=10, random_state=0, batch_size=100, max_iter=100).fit(df2)
    print("MODEL BUILT")


def Predict(answer_list):
    
    correspondant = {0: {'extroversion_score': 0.17,
    'neuroticism_score': 0.63,
    'agreeableness_score': 0.81,
    'conscientiousness_score': 0.18,
    'openness_score': 0.43},
    1: {'extroversion_score': 0.17,
    'neuroticism_score': 0.63,
    'agreeableness_score': 0.81,
    'conscientiousness_score': 0.18,
    'openness_score': 0.43},
    2: {'extroversion_score': 0.02,
    'neuroticism_score': 0.54,
    'agreeableness_score': 1.00,
    'conscientiousness_score': 0.02,
    'openness_score': 0.30},
    3: {'extroversion_score': 0.31,
    'neuroticism_score': 0.69,
    'agreeableness_score': 0.75,
    'conscientiousness_score': 0.35,
    'openness_score': 0.56},
    4: {'extroversion_score': 0.36,
    'neuroticism_score': 0.73,
    'agreeableness_score': 0.51,
    'conscientiousness_score': 0.38,
    'openness_score': 0.60},
    5: {'extroversion_score': 0.95,
    'neuroticism_score': 0.97,
    'agreeableness_score': 0.22,
    'conscientiousness_score': 0.98,
    'openness_score': 0.96},
    6: {'extroversion_score': 0.67,
    'neuroticism_score': 0.84,
    'agreeableness_score': 0.37,
    'conscientiousness_score': 0.68,
    'openness_score': 0.75},
    7: {'extroversion_score': 1.0,
    'neuroticism_score': 1.0,
    'agreeableness_score': 0.0,
    'conscientiousness_score': 1.0,
    'openness_score': 1.0},
    8: {'extroversion_score': 0.0,
    'neuroticism_score': 0.57,
    'agreeableness_score': 0.79,
    'conscientiousness_score': 0.0,
    'openness_score': 0.31},
    9: {'extroversion_score': 0.52,
    'neuroticism_score': 0.0,
    'agreeableness_score': 0.40,
    'conscientiousness_score': 0.14,
    'openness_score': 0.0},
    10: {'extroversion_score': 0.60,
    'neuroticism_score': 0.86,
    'agreeableness_score': 0.37,
    'conscientiousness_score': 0.64,
    'openness_score': 0.74}}
    m = answer_list[0]
    # m = [3.0, 5.0, 3.0, 4.0, 3.0, 3.0, 2.0, 5.0, 1.0, 5.0, 2.0, 3.0, 4.0, 1.0, 3.0, 1.0, 2.0, 1.0, 3.0, 1.0, 1.0, 4.0, 1.0, 5.0, 1.0, 5.0, 3.0, 4.0, 5.0, 3.0, 3.0, 2.0, 5.0, 3.0, 3.0, 1.0, 3.0, 3.0, 5.0, 3.0, 1.0, 2.0, 4.0, 2.0, 3.0, 1.0, 4.0, 2.0, 5.0, 3.0]
    # z = [3.0,5.0,3.0,4.0,3.0,3.0,2.0,5.0,1.0,5.0,2.0,3.0,4.0,1.0,3.0,1.0,2.0,1.0,3.0,1.0,1.0,4.0,1.0,5.0,1.0,5.0,3.0,4.0,5.0,3.0,3.0,2.0,5.0,3.0,3.0,1.0,3.0,3.0,5.0,3.0,1.0,2.0,4.0,2.0,3.0,1.0,4.0,2.0,5.0,3.0]
    print('m-------')
    print(m)
    print('m-------')
    print('z-------')
    # print(z)
    print('z-------')
    y = kmeans.predict([m])
    print(y)
    y = y.tolist()
    # print(correspondant[y[0]])
    output = []
    for i in correspondant[y[0]]:
        output.append(correspondant[y[0]][i])
    return output

# build_model()
# Predict([[3.0,5.0,3.0,4.0,3.0,3.0,2.0,5.0,1.0,5.0,2.0,3.0,4.0,1.0,3.0,1.0,2.0,1.0,3.0,1.0,1.0,4.0,1.0,5.0,1.0,5.0,3.0,4.0,5.0,3.0,3.0,2.0,5.0,3.0,3.0,1.0,3.0,3.0,5.0,3.0,1.0,2.0,4.0,2.0,3.0,1.0,4.0,2.0,5.0,3.0]])