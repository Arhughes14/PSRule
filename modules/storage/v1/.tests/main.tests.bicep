param location string = resourceGroup().location

module basic_storage '../main.bicep' = {
  name: 'sttest002'
  params: {
    sku: 'Standard_LRS'
    location: location
  }
}
