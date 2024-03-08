param name string = deployment().name
param location string = resourceGroup().location
param tags object

resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: name
  location: location
  tags: tags
}
