filtering
displayString: aStringOrText forParent: pNode child: cNode
    | count indented | 
    count := (indents at: cNode ifAbsent: [^ aStringOrText]) * 2.
    indented := String new: count + aStringOrText size.

    1 to: count do: [:i | indented at: i put: $ ].
    indented replaceFrom: count + 1 to: indented size with: aStringOrText.
    aStringOrText isText ifTrue: [
        aStringOrText setString: indented setRuns: aStringOrText runs.
        ^aStringOrText
    ].
    ^indented 