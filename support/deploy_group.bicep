targetScope = 'resourceGroup'

resource acr 'Microsoft.ContainerRegistry/registries@2021-09-01' = {
  name: 'acrbicepinfrastructure'
  location: resourceGroup().location
  sku: {
    name: 'Standard'
  }
}
