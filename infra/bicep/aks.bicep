param aksName string
param location string
param dnsPrefix string
param agentCount int
param vmSize string
param osType string
param servicePrincipalClientId string
param servicePrincipalClientSecret string
param enableAutoScaling bool
param minCount int
param maxCount int
param logAnalyticsWorkspaceId string

resource aksCluster 'Microsoft.ContainerService/managedClusters@2024-01-02-preview' = {
  name: aksName
  location: location
  properties: {
    dnsPrefix: dnsPrefix
    agentPoolProfiles: [
      {
        name: 'agentpool'
        count: agentCount
        vmSize: vmSize
        osType: osType
        enableAutoScaling: enableAutoScaling
        minCount: minCount
        maxCount: maxCount
      }
    ]
    servicePrincipalProfile: {
      clientId: servicePrincipalClientId
      secret: servicePrincipalClientSecret
    }
    addonProfiles: {
      omsAgent: {
        enabled: true
        config: {
          logAnalyticsWorkspaceResourceID: logAnalyticsWorkspaceId
        }
      }
    }
  }
}
