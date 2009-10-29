view callbacks
accept: aString
	text _ aString asText.
	model accept: text notifying: self.