#!/bin/bash
export PATH="/usr/share/dotnet:$PATH"
dotnet test --logger "trx;LogFileName=Pi.Math.trx" projects/jenkins-project/jenkins-plugin-model/src/Pi.Math.Tests/Pi.Math.Tests.csproj
export PATH="/usr/share/dotnet:$PATH"
dotnet test --logger "trx;LogFileName=Pi.Runtime.trx" projects/jenkins-project/jenkins-plugin-model/src/Pi.Runtime.Tests/Pi.Runtime.Tests.csproj