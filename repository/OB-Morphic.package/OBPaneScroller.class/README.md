Instances of OBPaneScroller contain the panes which represent columns in a browser. Their primary responsibilities are laying out panes to fit the space available and scrolling them horizontally when there isn't sufficient space. 

iVars:

sizing		- The number of panes which should exactly fit the available space.
		   	   During layout, the  width of the panes is determined accordingly.
transform	- A TransformMorph used for scrolling
scrollBar	- An OBHorizontalScrollBar used for scrolling