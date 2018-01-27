First we need to package the project
aws \
  --profile hgmiguel \
  --region us-east-1 \
  cloudformation package \
 --template-file bautizo-development.yaml \
         --s3-bucket  hgmiguel.mx.cloudformation \
         --output-template-file packaged-bautizo-development.yaml


Then we need to deploy it
aws \
  --profile hgmiguel \
  --region us-east-1 \
  cloudformation deploy \
  --template-file packaged-bautizo-development.yaml \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --stack-name bautizos-development

