#!/bin/sh

TAGS=$(aws ecr describe-images --repository-name "$1" --query "sort_by(imageDetails,& imagePushedAt)[:-$2].imageTags[0]" --output json | tr -d '[",]')

if [ -z "$TAGS" ]
then
  echo "No old image tags to delete"
else
  echo "Will delete this images $TAGS"

  aws ecr batch-delete-image --repository-name "$1" --image-ids $(for i in $TAGS; do echo "imageTag=$i"; done)
fi