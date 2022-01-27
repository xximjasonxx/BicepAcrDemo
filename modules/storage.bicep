
@maxLength(20)
@minLength(5)
param name string

@allowed([
  'Standard_LRS'
])
param skuName string

@allowed([
  'BlobStorage'
])
param kindName string

resource storage 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: name
  location: resourceGroup().location
  sku: {
    name: skuName
  }
  kind: kindName
  properties: {
    accessTier: 'Hot'
  }
}
