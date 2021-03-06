basic function
scanVersionsOf: class 
	"Scan for all past versions of the class comment of the given class"

	| oldCommentRemoteStr sourceFilesCopy position prevPos stamp preamble tokens prevFileIndex |

	classOfMethod := class.
	oldCommentRemoteStr := class  organization commentRemoteStr.
	currentCompiledMethod := oldCommentRemoteStr.
	selectorOfMethod := #Comment.
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	listIndex := 0.
	oldCommentRemoteStr ifNil:[^ nil] ifNotNil: [oldCommentRemoteStr sourcePointer].

	sourceFilesCopy := SourceFiles collect:
		[:x | x isNil ifTrue: [ nil ]
				ifFalse: [x readOnlyCopy]].
	position := oldCommentRemoteStr position.
	file := sourceFilesCopy at: oldCommentRemoteStr sourceFileNumber.
	[position notNil & file notNil]
		whileTrue:
		[file position: (0 max: position-150).  " Skip back to before the preamble"
		[file position < (position-1)]  "then pick it up from the front"
			whileTrue: [preamble := file nextChunk].

		prevPos := nil.
		stamp := ''.
		(preamble findString: 'commentStamp:' startingAt: 1) > 0
			ifTrue: [tokens := Scanner new scanTokens: preamble.
				(tokens at: tokens size-3) = #commentStamp:
				ifTrue: ["New format gives change stamp and unified prior pointer"
						stamp := tokens at: tokens size-2.
						prevPos := tokens last.
						prevFileIndex := sourceFilesCopy fileIndexFromSourcePointer: prevPos.
						prevPos := sourceFilesCopy filePositionFromSourcePointer: prevPos]]
			ifFalse: ["The stamp get lost, maybe after a condenseChanges"
					stamp := '<historical>'].
 		self addItem:
				(ChangeRecord new file: file position: position type: #classComment
						class: class name category: nil meta: class stamp: stamp)
			text: stamp , ' ' , class name , ' class comment'. 
		prevPos = 0 ifTrue:[prevPos := nil].
		position := prevPos.
		prevPos notNil 
					ifTrue:[file := sourceFilesCopy at: prevFileIndex]].
	sourceFilesCopy do: [:x | x notNil ifTrue: [x close]].
	listSelections := Array new: list size withAll: false