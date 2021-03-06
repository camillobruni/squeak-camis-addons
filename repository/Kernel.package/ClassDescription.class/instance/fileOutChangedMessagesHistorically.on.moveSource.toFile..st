fileIn/Out
fileOutChangedMessagesHistorically: aSet on: aFileStream moveSource: moveSource toFile: fileIndex 
	"File all historical description of the messages of this class that have been 
	changed (i.e., are entered into the argument, aSet) onto aFileStream.  If 
	moveSource, is true, then set the method source pointer to the new file position.
	Note when this method is called with moveSource=true, it is condensing the
	.changes file, and should only write a preamble for every method."
	| org sels |
	(org := self organization) categories do: 
		[:cat | 
		sels := (org listAtCategoryNamed: cat) select: [:sel | aSet includes: sel].
		sels do:
			[:sel |  self printMethodChunkHistorically: sel on: aFileStream
							moveSource: moveSource toFile: fileIndex]]