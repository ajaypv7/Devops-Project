using './main.bicep'

param location string = 'East US'
param appName = 'mywebapp'
param sqlAdministratorLogin = 'adminUser'
param sqlAdministratorPassword = 'SecurePass!123'
param dbName string = 'mydb'
param functionAppName = 'myFunctionApp'
param storageAccountName = 'mystorageaccount'
