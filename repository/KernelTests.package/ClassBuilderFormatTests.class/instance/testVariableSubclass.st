testing
testVariableSubclass
	"Ensure that the invariants for superclass/subclass format are preserved"
	baseClass := Object variableSubclass: self baseClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Kernel-Tests-ClassBuilder'.
	[
	"pointer classes"
	self shouldnt:[self makeNormalSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self assert: (subClass isVariable).
	self deny: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	self shouldnt:[self makeIVarsSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self assert: (subClass isVariable).
	self deny: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	self shouldnt:[self makeVariableSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self assert: (subClass isVariable).
	self deny: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	self shouldnt:[self makeWeakSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self assert: (subClass isVariable).
	self assert: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	"bit classes"
	self should:[self makeByteVariableSubclassOf: baseClass] raise: Error.
	self should:[self makeWordVariableSubclassOf: baseClass] raise: Error.
	] ensure:[self cleanup].