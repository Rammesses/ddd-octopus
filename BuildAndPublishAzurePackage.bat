@echo off

msbuild /t:Publish ^
		/p:PublishNuGetPackage=true ^
		/p:PublishNuGetPackageTarget=https://www.myget.org/F/ddd-octopus/api/v2/package ^
		/p:PublishNuGetPackageTargetKey=e7932129-e1c7-40e9-8f96-6586b19d8763