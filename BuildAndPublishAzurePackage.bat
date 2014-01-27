@echo off

msbuild /t:Publish ^
		/p:PublishNuGetPackage=true ^
		/p:PublishNuGetPackageTarget=https://www.myget.org/F/ddd-octopus/api/v2/package ^
		/p:PublishNuGetPackageTargetKey=26755d2b-d055-4e7d-949b-6527fe5f11c0