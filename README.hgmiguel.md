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

Delete
aws \
  --profile hgmiguel \
  --region us-east-1 \
  cloudformation delete-stack \
  --stack-name bautizos-development

Cost
aws \
  --profile hgmiguel \
  --region us-east-1 \
  cloudformation estimate-template-cost \
  --template-file packaged-bautizo-development.yaml 

 https://s3.amazonaws.com/hgmiguel.mx.cloudformation/7a22697850a91c07e655e74281660edf.template
 https://s3.amazonaws.com/hgmiguel.mx.cloudformation/6c90f9240397ff6a38bb215457a2f68c.template
 https://s3.amazonaws.com/hgmiguel.mx.cloudformation/5b5a9b9e23fd346c7161d7596fff1558.template
 https://s3.amazonaws.com/hgmiguel.mx.cloudformation/7c305b5cbefecc920754ac2fc0dc9251.template
 https://s3.amazonaws.com/hgmiguel.mx.cloudformation/79771c4cd84770dfc39578dc95618e17.template
 https://s3.amazonaws.com/hgmiguel.mx.cloudformation/b32ef0c46a92050c93ccf40778ac6c9c.template



TODO:
  delete NAT instances.
  add ecr
  


ecs cluster name bautizos-development
keys public-globant-hgmiguel-key.pem 

