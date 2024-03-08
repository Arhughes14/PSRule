param location string = resourceGroup().location
param tags object = {
  name: 'test'
}
module basic_storage '../main.bicep' = {
  name: 'sttest002'
  params: {
    sku: 'Standard_GRS'
    location: location
    tags: tags
  }
}
