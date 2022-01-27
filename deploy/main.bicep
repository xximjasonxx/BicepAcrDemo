
module storage 'br:acrbicepinfrastructure.azurecr.io/bicep/modules/storage:v1.1' = {
  name: 'storageDeploy'
  params: {
    name: 'bicepblobaccount'
    kindName: 'BlobStorage'
    skuName: 'Standard_LRS'
  }
}
