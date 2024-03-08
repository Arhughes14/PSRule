param name string = deployment().name
param location string = resourceGroup().location
param tags object = {
  name: 'test-vnet'
}

resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefixes: [
            '10.0.1.0/24'
          ]
        }
      }
    ]
  }
}
