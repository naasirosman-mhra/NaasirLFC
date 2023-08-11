param staticSites_stapp_bicep_name string = 'stapp-bicep2.0'

resource staticSites_stapp_bicep_name_resource 'Microsoft.Web/staticSites@2022-09-01' = {
  name: staticSites_stapp_bicep_name
  location: 'Central US'
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
    repositoryUrl: 'https://github.com/naasirosman-mhra/NaasirLFC'
    repositoryToken: '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'
    branch: 'main'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'GitHub'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}
