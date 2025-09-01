package terraform

deny if {
	count([r | r := input.resource_changes[_]; r.type == "null_resource"; r.change.actions[_] == "create"]) > 0
}
