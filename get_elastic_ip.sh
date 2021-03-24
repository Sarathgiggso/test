#!/bin/bash
var=$(kubectl get svc | grep "elasticsearch")
set -- $var
echo $3

