#!/bin/bash
var=$(cat keycloakdata.json |jq -r '.keys' | jq -r ".[] | .publicKey")
set -- $var
if[! -z "$1"]
	echo $1;
fi
if[! -z "$2"]
        echo $2;
fi
if[! -z "$3"]
        echo $3;
fi

