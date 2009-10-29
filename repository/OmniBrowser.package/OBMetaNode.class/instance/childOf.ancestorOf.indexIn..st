nodes
childOf: parent ancestorOf: descendant indexIn: aBlock 
	(self childsPerEdgeFor: parent) do: 
		[ :childsPerEdge | 
		childsPerEdge keysAndValuesDo: 
			[ :index :node | 
			(node 
				isAncestorOf: descendant
				using: node metaNode ancestrySelector) ifTrue: 
				[ filters do: 
					[ :f | 
					f 
						noteParent: parent
						child: node ].
				aBlock value: index.
				^ node ] ] ].
	^ nil