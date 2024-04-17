param sqlServerName string
param sqlDatabaseName string
param location string
param sqlAdministratorLogin string
param sqlAdministratorPassword string
param performanceTier string
param maxSizeBytes int
param collation string = 'SQL_Latin1_General_CP1_CI_AS'

resource sqlServer 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: sqlServerName
  location: location
  properties: {
    administratorLogin: sqlAdministratorLogin
    administratorLoginPassword: sqlAdministratorPassword
    version: '12.0'
  }
}

resource sqlDatabase 'Microsoft.Sql/servers/databases@2022-05-01-preview' = {
  parent: sqlServer
  name: sqlDatabaseName
  location: location
  sku: {
    name: performanceTier
  }
  properties: {
    maxSizeBytes: maxSizeBytes
    collation: collation
    createMode: 'Default'
  }
}
