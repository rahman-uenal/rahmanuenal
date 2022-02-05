var location = 'west europe'
param createdby string

resource storageresource 'Microsoft.Storage/storageAccounts@2021-06-01'= {
  name: 'st${uniqueString(resourceGroup().id)}' 
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
   accessTier: 'Hot'
    
  }
  kind: 'BlobStorage'
  tags: {
    'creator': createdby
  }
}
