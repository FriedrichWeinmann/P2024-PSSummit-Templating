# failsafe
return

# Example Module Solutions
#-> PSModuleDevelopment
# https://psframework.org/documentation/documents/psmoduledevelopment/templates.html
Install-PSResource PSModuleDevelopment
Invoke-PSMDTemplate MiniModule -OutPath "$repoRoot\Projects" -Name DemoMiniModule
Invoke-PSMDTemplate PSFProject -OutPath "$repoRoot\Projects" -Name DemoPSFProject

#-> Sampler
Install-PSResource Sampler
New-SampleModule -DestinationPath "$repoRoot\Projects" -ModuleType CompleteSample -ModuleName DemoSampler


# Recording a new Template with PSModuleDevelopment
Get-PSMDTemplate
code "$repoRoot\TemplateSources\þnameþ.ps1"
New-PSMDTemplate -FilePath "$repoRoot\TemplateSources\þnameþ.ps1" -TemplateName MyFunction
Get-PSMDTemplate
Invoke-PSMDTemplate MyFunction -OutPath "$repoRoot\Projects"

Get-PSFConfig PSModuleDevelopment.Template.ParameterDefault.*

New-PSMDTemplate -ReferencePath "$repoRoot\TemplateSources\SimpleModule" -TemplateName MyModule
Get-PSMDTemplate
Invoke-PSMDTemplate MyModule -OutPath "$repoRoot\Projects"