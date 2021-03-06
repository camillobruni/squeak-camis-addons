tests
testRandom
	"verify that the methods allowed don't crash the system.  Pick 3 or 4 from a mixed list of the fundamental types." 

| objects other aa cnt take tuple fName sss |
objects := #((1 4 17 42) ($a $b $c $d) ('one' 'two' 'three' 'four')
	(x + rect: new) ((a b 1 4) (c 1 5) ($a 3 d) ()) (4.5 0.0 3.2 100.3)
	).

objects := objects, {{true. false. true. false}. {Point. SmallInteger. Association. Array}.
	{Point class. SmallInteger class. Association class. Array class}.
	"{ 4 blocks }."
	{Date today. '1 Jan 1950' asDate. '25 Aug 1987' asDate. '1 Jan 2000' asDate}.
	{'15:16' asTime. '1:56' asTime. '4:01' asTime. '6:23' asTime}.
	{Dictionary new. Dictionary new. Dictionary new. Dictionary new}.
	{#(a b 1 4) asOrderedCollection. #(c 1 5) asOrderedCollection. 
		#($a 3 d) asOrderedCollection. #() asOrderedCollection}.
	{3->true. 5.6->$a. #x->2. 'abcd'->false}.
	{9@3 extent: 5@4. 0@0 extent: 45@9. -3@-7 extent: 2@2. 4@4 extent: 16@16}.
	{Color red.  Color blue. Color black. Color gray}}.

self test2: objects.
"rec+0, rec+1, rec+2, rec+3 need to be tested.  " 
fName := (FileDirectory default fileNamesMatching: '*.ran') first.
sss := fName splitInteger first.
(Collection classPool at: #RandomForPicking) seed: sss.
cnt := 0.
[take := #(3 4) atRandom.
	tuple := (1 to: take) collect: [:ind | (objects atRandom) atRandom].
	other := (1 to: take) collect: [:ind | (objects atRandom) atRandom].
	self load: (aa := Array with: tuple with: 1 with: other with: 7).
	((cnt := cnt+1) \\ 10 = 0) " | (cnt > Skip)" ifTrue: [
		Transcript cr; show: cnt printString; tab; tab; show: aa first printString].
	cnt > (Smalltalk at: #StopHere) ifTrue: [self halt].		"stop just before crash"
	cnt > (Smalltalk at: #Skip) ifTrue: ["skip this many at start"
		self search: true.
		self test2: aa first.  self test2: (aa at: 3).
		"self test2: objects"
		].
	true] whileTrue.
	