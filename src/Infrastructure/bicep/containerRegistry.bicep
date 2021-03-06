param longName string

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2020-11-01-preview' = {
  name: replace('cr${longName}', '-', '')
  location: resourceGroup().location
  sku: {
    name: 'Basic'
  }
}

output containerRegistryName string = containerRegistry.name
output containerRegistryLoginServerName string = containerRegistry.properties.loginServer
