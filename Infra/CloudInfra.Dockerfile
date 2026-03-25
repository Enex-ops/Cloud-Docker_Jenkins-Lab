FROM --platform=arm64 amazonlinux:2023

# Install necessary packages
RUN dnf update -y && \
    dnf install -y java-17-amazon-corretto git && \
    dnf clean all       

# Set the working directory
WORKDIR /Infra

# Copy the Terraform configuration files into the container
COPY . .    

# Install Terraform
RUN curl -O https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_arm64.zip && \
    unzip terraform_1.0.11_linux_arm64.zip -d /usr/local/bin/ && \
    rm terraform_1.0.11_linux_arm64.zip

# Initialize Terraform
RUN terraform init      


