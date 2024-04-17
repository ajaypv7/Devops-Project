using './storageAccount.bicep'
using './keyVault.bicep'
using './sqlAuditing.bicep'

param storageAccountName = 'myStorageAccount'
param location = 'eastus'
param keyVaultName = 'myKeyVault'
param tenantId = 'your-tenant-id'
param objectId = 'your-object-id'
param sqlServerName = 'mySqlServer'
param secretName = 'mySecretName'
param storageEndpoint = 'https://${storageAccountName}.blob.core.windows.net'
param auditActionsAndGroups = [
  'BATCH_COMPLETED_GROUP',
  'SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP',
  'FAILED_DATABASE_AUTHENTICATION_GROUP'
]
param retentionDays = 90
