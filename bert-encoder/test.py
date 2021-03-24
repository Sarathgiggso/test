import requests
import json
import numpy as np
headers = {'content-type': 'application/json'}
data_dict = {"id": 123}
data_dict["texts"] = ["Hello World"]
json_dict = json.dumps(data_dict)
        #response = requests.post('http://207.46.231.117:8190/encode', headers=headers, data=json_dict)
response = requests.post('http://10.233.54.14:8190/encode', headers=headers, data=json_dict)
embeddings = np.array(response.json()["result"])

print(embeddings)

