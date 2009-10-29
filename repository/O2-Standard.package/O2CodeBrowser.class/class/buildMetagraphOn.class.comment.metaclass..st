configuration
buildMetagraphOn: root class: classSel comment: commentSel metaclass: metaclassSel 
	^ (O2MetagraphBuilder 
		on: root
		class: classSel
		comment: commentSel
		metaclass: metaclassSel) execute