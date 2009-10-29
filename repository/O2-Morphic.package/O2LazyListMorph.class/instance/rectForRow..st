drawing
rectForRow: index
	"return a rectangle containing the row at index"
	
	| top |
	top := self top + (index - 1 * self listItemHeight).
	^ (self left @ top) extent: self width @ self listItemHeight
