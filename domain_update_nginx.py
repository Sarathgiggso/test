######Script to update domain name in nginx server######################

import os
import fileinput

#CWD = os.path.dirname(os.path.realpath(__file__))

#filelist = [os.path.join(CWD, file) for file in filelist] 
# will give full path for all the items in the list
filelist = [os.path.join(os.getenv("HOME"),"nginx-loadbalancer","nginx.conf"),
os.path.join(os.getenv("HOME"),"nginx-loadbalancer","docker-compose.yaml")]

print("Please Make sure you are running this script with python 3")

print ("GiggsoDomain to be replaced:")
giggso_domain_old = input( "> " )

print ("New Giggso Domain:")
giggso_domain_new = input( "> " )

print ("KcDomain to be replaced:")
kc_domain_old = input( "> " )

print ("New Giggso Domain:")
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
