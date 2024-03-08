param location string = resourceGroup().location
param tags object = {
  name: 'datafactory'
}

module dataFactory '../main.bicep' = {
  name: 'datafacroty-lma'
  params: {
    tags: tags
    location: location
  }
}
