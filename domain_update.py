#This script is to update the proper domain names in the respective files.
#Inputs for this script will be giggso app domain name and keycloak domain name

import os
import fileinput

CWD = os.path.dirname(os.path.realpath(__file__))

#filelist = [os.path.join(CWD, file) for file in filelist] 
# will give full path for all the items in the list
filelist = [os.path.join(CWD,"ingress","ingress-gateway.yaml"),  
os.path.join(CWD,"angular","env-configmap.yaml"), 
os.path.join(CWD,"web","jboss_external_config_configmap.yaml"),
os.path.join(CWD,"cert_manager","helm","cert-manager","tls-ss.yaml"),
os.path.join(CWD,"web","keycloak_json_configmap.yaml"),
os.path.join(CWD,"keycloak","keycloak-configmap.yaml"),
os.path.join(CWD,"log-ingestion","log-ingestion-deployment.yaml")]

print("Please Make sure you are running this script with python 3")

giggso_domain_old = 'appdomain'

print ("New Giggso Domain:")
giggso_domain_new = input( "> " )

kc_domain_old = 'kcdomain'

print ("New Giggso keycloak Domain:")
kc_domain_new = input( "> " )

replaced_text = {kc_domain_old: kc_domain_new,
                giggso_domain_old: giggso_domain_new,
          }

with fileinput.input(files = filelist , inplace=True) as f:
    for line in f:
        line = line.rstrip()
        for f_key, f_value in replaced_text.items():
            if f_key in line:
                line = line.replace(f_key, f_value)
        print(line)

print ("Domain names are updated")
