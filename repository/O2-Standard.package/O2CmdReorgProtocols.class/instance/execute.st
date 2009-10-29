execution
execute
	| definition organizer |
	organizer := target organization.
	definition := O2OrganizationDefinition on: organizer.
	requestor announce: definition