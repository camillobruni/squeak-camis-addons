*o2-standard
packageName
    ^self package ifNotNilDo: [:pkg | pkg packageName] ifNil: ['']