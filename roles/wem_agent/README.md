<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.wem_agent
Version: 1.4.0

This role installs the Citrix Workspace Environment Management Agent on Windows systems.  The role assumes that the agent will be configured by GPO.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies

None.

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ctxwem_agent_installer_path | <p>The path to the Citrix Workspace Environment Management Agent installer.</p> | path | yes |  |  |
| ctxwem_agent_cloud_deployment | <p>Whether to install the agent for a Citrix Cloud deployment.</p> | bool | no |  | True |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
