param keyVaultName string
param location string
param tenantId string
param objectId string

resource keyVault 'Microsoft.KeyVault/vaults@2023-01-01-preview' = {
  name: keyVaultName
  location: location
  properties: {
    tenantId: tenantId
    sku: {
      family: 'A'
      name: 'standard'
    }
    accessPolicies: [
      {
        tenantId: tenantId
        objectId: objectId
        permissions: {
          secrets: [
            'get'
          ]
        }
      }
    ]
  }
}
