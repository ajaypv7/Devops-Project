# Azure Infrastructure Deployment Guide

## Overview
This guide provides instructions on how to deploy the required infrastructure for an application onto the Azure cloud using Azure DevOps pipelines and Bicep templates.

## Prerequisites
- An Azure DevOps account.
- An Azure subscription with permissions to create resources.
- A GitHub account (if the repository is hosted on GitHub).

## Repository Structure
- `/pipelines`: Contains the Azure DevOps pipeline YAML files.
- `/bicep`: Contains the Bicep templates for infrastructure as code.
- `/src`: Contains the source code of the application.

## Forking the Repository
1. Navigate to the GitHub repository URL.
2. Click on the 'Fork' button at the top right corner of the page.
3. Select your GitHub account to fork the repository to your account.

## Configuring Azure DevOps
1. Sign in to your Azure DevOps account.
2. Create a new project or select an existing one.
3. Navigate to 'Project settings' > 'Service connections' and create a new service connection for Azure Resource Manager.
4. Follow the prompts to authenticate and link your Azure subscription.

## Setting Up the Pipeline
1. Go to 'Pipelines' in your Azure DevOps project.
2. Click on 'Create pipeline'.
3. Select 'GitHub' as the code repository and authenticate if required.
4. Choose the repository you forked earlier.
5. Select 'Existing Azure Pipelines YAML file' and point to the YAML file in the `/pipelines` directory.
6. Run the pipeline to build and deploy your application and infrastructure.

## Deploying the Infrastructure
1. The pipeline will automatically deploy the infrastructure defined in the Bicep templates located in the `/bicep` directory.
2. Monitor the pipeline's progress and review the logs to ensure everything is deploying correctly.

## Verifying the Deployment
1. Once the pipeline runs successfully, check your Azure portal to verify that the resources are deployed.
2. Connect to the Azure SQL Database using the connection string provided in the Azure portal.

## Architecture Documentation
Refer to the 'Architecture.md' file in the root of the repository for a high-level explanation of the overall architecture and the resources created.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Note**: Ensure that all sensitive information such as passwords and connection strings are stored securely, preferably in Azure Key Vault, and referenced in the Bicep templates and application configuration.
