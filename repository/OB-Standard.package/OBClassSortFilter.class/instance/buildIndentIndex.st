private
buildIndentIndex
	indents := IdentityDictionary new.
	order do: [:assoc | indents at: assoc value put: assoc key size - 1].