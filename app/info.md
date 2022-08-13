sam init --runtime nodejs12.x --name app --app-template hello-world

args:
  --runtime: specifies the enviroment for the code to be executed
  --name: specifies the name of folder that will hold the code
  --app-template: specifies the template to be used for the app
info:
  -- custom templates can be provided for orgs that require special handling
     or for code reusability, check out [sam-cli/templates](https:github.com/sam-cli/templates)

cloudformation:
  -- Sam uses cloudformation to create the stack from the application infrastructure. 

Sam zip and upload:
  -- Sam zip and uploads the application to AWS S3.
  `sam package --s3-bucket $BUCKET_NAME --output-template-file output.yaml`

Delete s3 bucket:
  -- `aws s3 rm s3://$BUCKET_NAME --recursive`

Create instance of application:
  `sam deploy --template-file output.yaml --stack-name $STACK_NAME --capabilities CAPABILITY_IAM`

Interactive mode
`same deploy --guided`