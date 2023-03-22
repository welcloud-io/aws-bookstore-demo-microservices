region='eu-west-1'
bucketname='welcloud.io.demos'
folder='bookstore-microservices-demo/cloudformation-templates/'

# Upload cloudformation templates to s3
for templatename in $(ls -d *.template.yaml); do
    templatepath=$folder$templatename
    aws s3 cp $templatename s3://$bucketname/$templatepath --content-type 'text/plain'
done