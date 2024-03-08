param location string = resourceGroup().location

module vnet '../main.bicep' = {
  name: 'vnet-1'
  params: {
    location: location
  }
}
