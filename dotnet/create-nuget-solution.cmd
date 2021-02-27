@ECHO OFF
IF "%~1" == "" GOTO NoParam

SET SOLUTIONFOLDER=%~1
SET SOLUTION=%~1
SET PROJECT=%~1
SET TESTPROJECT=%~1.Tests

MKDIR "%SOLUTIONFOLDER%"
CD "%SOLUTIONFOLDER%"
git init .
dotnet new gitignore

@ECHO # %SOLUTION% > README.md

MKDIR src
CD src
dotnet new sln --name "%SOLUTION%"
dotnet new classlib --name "%PROJECT%" --framework netstandard2.0 --output "%PROJECT%"
dotnet new classlib --name "%TESTPROJECT%" --framework netcoreapp3.1 --output "%TESTPROJECT%"
dotnet sln add "%PROJECT%\%PROJECT%.csproj"
dotnet sln add "%TESTPROJECT%\%TESTPROJECT%.csproj"

CD "%TESTPROJECT%"
dotnet add reference "..\%PROJECT%\%PROJECT%.csproj"
dotnet add package Microsoft.NET.Test.Sdk
dotnet add package coverlet.msbuild
dotnet add package NUnit
dotnet add package NUnit3TestAdapter
dotnet add package NunitXml.TestLogger

GOTO End

:NoParam
ECHO Set a name for new solution
GOTO End

:End