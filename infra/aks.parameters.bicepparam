using './aks.bicep'

param aksName = 'myAksCluster'
param location = 'eastus'
param dnsPrefix = 'myaksdns'
param agentCount = 3
param vmSize = 'Standard_DS2_v2'
param osType = 'Linux'
param servicePrincipalClientId = 'xxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
param servicePrincipalClientSecret = 'your_secret_here'
param enableAutoScaling = true
param minCount = 1
param maxCount = 5
