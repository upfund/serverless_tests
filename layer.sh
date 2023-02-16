#!/usr/bin/env bash

layer_name=$1
region=eu-west-1
export layer_name

echo Creating layer : ${layer_name}

# Create a directory for the sites package
mkdir -p layers/${layer_name}/python/

# Install required packages inside the site-packages directory
cp -R common_files  layers/${layer_name}/python/

# Now go to the “layer” folder
cd layers/${layer_name}

zip -r ${layer_name}.zip *


## Delete previous layer versions
#get_versions () {
#  echo $(aws lambda list-layer-versions --layer-name "$layer_name" --region "$region" --output text --query LayerVersions[].Version | tr '[:blank:]' '\n')
#}
#versions=$(get_versions "$region")
#for version in $versions;
#do
#  echo "deleting arn:aws:lambda:$region:*:layer:$layer_name:$version"
#  aws lambda delete-layer-version --region "$region" --layer-name "$layer_name" --version "$version" > /dev/null
#done
#
## Write version
#aws lambda publish-layer-version --layer-name ${layer_name} \
#    --description "${layer_name}" \
#    --license-info "MIT" \
#    --zip-file fileb://${layer_name}.zip \
#    --compatible-runtimes python3.8 \
#    --compatible-architectures "x86_64" \
#    --region eu-west-1
#
#

