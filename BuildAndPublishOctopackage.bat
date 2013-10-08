@echo off

msbuild /p:DeployOnBuild=true /p:RunOctoPack=true ^
		/p:OctoPackPublishPackageToHttp=https://www.myget.org/F/ddd-octopus/api/v2/package ^
		/p:OctoPackPublishApiKey=e7932129-e1c7-40e9-8f96-6586b19d8763