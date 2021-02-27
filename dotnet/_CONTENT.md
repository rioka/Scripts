# What's in this folder

### `AssemblyInfo.props`

Template file to set 
- `AssemblyName` (using placeholder `$(assemblyName)`)
- `Company` (fixed)
- `Copyright` (fixed)
- `Description` (using placeholder `$(projectDescription)`)

Also set `internal` visible to test project, assuming it is named as the main project, with a trailing `.Tests`

### `Directory.Build.props`

Template file to 
- Install `Nerdbank.GitVersioning` for all projects
- Set `SolutionDir`, so that it can be resolved irrespective of tooling

### `PackageInfo.props`

Template file to set values to be used when generating a package.

Assuming both project and repository are hosted at https://dev.azure.com/bitdeas, a few placeholders are used

- `$(packageDescription)`
- `$(projectName)`
- `$(packageTags)`

Also references `RELEASE-NOTES.md`, assuming it will be found in the repository.

### `SourceLink.props`

Template file to enable source-link for the package.

- Since it references `Microsoft.SourceLink.AzureRepos`, it assumes repository is hosted in Azure.
- Project is configured to include `.pdb` files

### `create-nuget-solution.cmd`

Batch file to automate the creation of a solution for a Nuget package.

Currently it can
- create a solution
- add `.gitignore`
- add a `README.md`
- creates a project, targeting NET standard 2.0, and add it to the solution
- creates a test project (using Nunit v3 and coverlet), targeting NET core 3.1, and add it to the solution.