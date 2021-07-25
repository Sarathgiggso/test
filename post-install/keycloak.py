import os
import sys
import fileinput

textToSearch = "keycloakkey"

textToReplace = sys.argv[1]

fileToSearch = '../web/keycloak_json_configmap.yaml'

tempFile = open( fileToSearch, 'r+' )

for line in fileinput.input( fileToSearch ):
    tempFile.write( line.replace( textToSearch, textToReplace ) )
tempFile.close()
