param workspaceName string
param location string
param skuName string = 'PerGB2018'
param retentionInDays int = 30

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: workspaceName
  location: location
  properties: {
    sku: {
      name: skuName
    }
    retentionInDays: retentionInDays
  }
}
