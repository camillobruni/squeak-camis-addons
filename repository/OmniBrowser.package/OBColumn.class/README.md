An OBColumn manages a list of nodes, which it displays in a PluggableListMorph in the pane scroller at the top of the browser. All instances of OBColumn belong to an OBColumnPanel. It's main responsibility is keeping its list - and those of its neighbours - up to date. Each column has a MetaNode, which provides the list contents. It uses a filter to meditate between its self and the MetaNode.

iVars:

panel		- the panel which owns the column
filter		- the filter which manages the column's MetaNode.
parent		- the node selected in the column to the left of this column
children 	- the nodes which make up this column's list
selection 	- the index of the node selected by the user