# Test file: policy_test.rego
package terraform.null_resources

import rego.v1

# Test case: Plan with null resource should be denied
test_deny_null_resource if {
	not allow with input as {"resource_changes": [{
		"address": "null_resource.example",
		"type": "null_resource",
		"name": "example",
		"change": {"actions": ["create"]},
	}]}
}

# Test case: Plan without null resources should be allowed
test_allow_no_null_resources if {
	allow with input as {"resource_changes": [{
		"address": "aws_instance.example",
		"type": "aws_instance",
		"name": "example",
		"change": {"actions": ["create"]},
	}]}
}

# Test case: Check violation messages are generated
test_violation_messages if {
	violations := violation with input as {"resource_changes": [{
		"address": "null_resource.test",
		"type": "null_resource",
		"name": "test",
		"change": {"actions": ["create"]},
	}]}
	count(violations) > 0
}
