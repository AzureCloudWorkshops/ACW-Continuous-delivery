param env string = 'nonprod'
param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'appServicePlan-${env}'
  location: location
  sku: {
    name: 'F1'
  }
  kind: 'linux'
}

resource appService 'Microsoft.Web/sites@2021-03-01' = {
  name: 'appService-${env}'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      appSettings: [
        {
          name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
          value: insights.properties.InstrumentationKey
        }
        {
          name: 'ApplicationInsights.ConnectionString'
          value: insights.properties.ConnectionString
        }
      ]
    }
  }
}

resource insights 'Microsoft.Insights/components@2020-02-02' = {
  name: 'insights-${env}'
  kind: 'webinsights'
  location: location
  properties: {
    Application_Type: 'Web'
    IngestionMode: 'ApplicationInsights'
  }
}
