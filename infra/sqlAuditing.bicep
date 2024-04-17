param sqlServerName string
param keyVaultName string
param secretName string
param storageEndpoint string
param auditActionsAndGroups array
param retentionDays int

resource keyVault 'Microsoft.KeyVault/vaults@2023-01-01-preview' existing = {
  name: keyVaultName
}

var storageAccountAccessKey = keyVault.getSecret(secretName)

resource sqlServerAuditing 'Microsoft.Sql/servers/auditingSettings@2023-05-01-preview' = {
  name: '${sqlServerName}/default'
  properties: {
    state: 'Enabled'
    storageEndpoint: storageEndpoint
    storageAccountAccessKey: storageAccountAccessKey
    retentionDays: retentionDays
    auditActionsAndGroups: auditActionsAndGroups
    isAzureMonitorTargetEnabled: true
  }
}
