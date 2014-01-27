@echo off

msbuild /p:DeployOnBuild=true /p:RunOctoPack=true ^
		/p:OctoPackPublishPackageToHttp=https://www.myget.org/F/ddd-octopus/api/v2/package ^
		/p:OctoPackPublishApiKey=26755d2b-d055-4e7d-949b-6527fe5f11c0