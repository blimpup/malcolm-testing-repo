package terraform

team1_resources contains name if {
	r := input.resource_changes[_]
	startswith(r.name, "team1-")
	name := r.name
}

team1 if {
	count(team1_resources) > 0
}
