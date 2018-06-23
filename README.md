# sls-deploy

Deploy a serverless app using code pipeline.

This could be useful as a stage in a deployment pipeline where you want to allow tooling to deploy a serverless application without having AWS priveleges beyond the ability to drop a zip file in a bucket.

To install, use the create-stack script. To deploy a serverless application:

* Copy deployspec.yml into the top directory of the serverless application you wish to deploy
* Create a zip file of your serverless application, with the zip file named app.zip
* Drop the file in the s3 bucket created by the stack

Notes:

* You way need to adjust the policy in the stack based on the services created during the serverless deploy, or scale them back if you have environments where objects and related roles and policies are created in advance of application deploument.
