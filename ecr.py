import boto3

# Set the default AWS region to us-east-1
boto3.setup_default_session(region_name='us-east-1')

# Initialize the Boto3 client for Amazon ECR
ecr_client = boto3.client('ecr')

# Define the name for the ECR repository
repository_name = "my_monitoring_app_image"

# Create a new repository in Amazon ECR with the specified name
response = ecr_client.create_repository(repositoryName=repository_name)

# Extract the repository URI from the response
repository_uri = response['repository']['repositoryUri']

# Print the repository URI for reference
print(repository_uri)
