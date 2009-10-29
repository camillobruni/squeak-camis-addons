initialize-release
fillTable
	| i d |
	d := DateAndTime now.
	i := $a to: $y.
	i do: 
		[ :c1 | 
		i do: 
			[ :c2 | 
			i do: 
				[ :c3 | 
				($a to: $b) do: 
					[ :c4 | 
					table addEntry: (String 
							with: c1
							with: c2
							with: c3
							with: c4)
							date: d ] ] ] ]