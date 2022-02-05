// create vm
param location string = 'west europe'

resource Virtualmachine 'Microsoft.Compute/virtualMachines@2021-07-01' = {
  name: 'vm'
  location: location 
  
}
