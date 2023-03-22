region='eu-west-1'
bucketname='welcloud.io.demos'
demoname='bookstore-microservices-demo'

templatename='bookstore-rest-api-and-cognito.template.yaml'

stackname=$(echo $templatename |cut -d. -f1)
templatepath="$demoname/cloudformation-templates/$templatename"

cloudformationurl="https://$region.console.aws.amazon.com/cloudformation/home?region=$region#/stacks/create/review"
templateurl="https://s3.$region.amazonaws.com/$bucketname/$templatepath"
stackreviewurl="$cloudformationurl?templateURL=$templateurl&stackName=$stackname"
    
echo $stackreviewurl

echo "<a href='$stackreviewurl' target='_blank'>$stackname</a>"


echo "[![Launch API Layer Stack](https://cdn.rawgit.com/buildkite/cloudformation-launch-stack-button-svg/master/launch-stack.svg)]($stackreviewurl)"
