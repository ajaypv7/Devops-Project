using './sql.bicep'

param sqlServerName = 'mySqlServer'
param sqlDatabaseName = 'mySqlDatabase'
param location = 'eastus'
param sqlAdministratorLogin = 'adminUser'
param sqlAdministratorPassword = 'ReplaceWithSecurePassword'
param performanceTier = 'S0'
param maxSizeBytes = 53687091200 // 50 GB
