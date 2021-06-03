import os
import sys
import fileinput

textToSearch = "vapidpublickey"

textToReplace = sys.argv[-1]
fileToSearch = '../angular/env-configmap.yaml'
tempFile = open( fileToSearch, 'r+' )
for line in fileinput.input( fileToSearch ):
    tempFile.write( line.replace( textToSearch, textToReplace.strip() ) )
tempFile.close()
