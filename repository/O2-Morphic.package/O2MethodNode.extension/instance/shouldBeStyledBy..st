*o2-morphic
shouldBeStyledBy: aShoutMorph
    super shouldBeStyledBy: aShoutMorph.

    (self theClass isBehavior or: [self theClass isTrait]) ifTrue: [aShoutMorph classOrMetaClass: self theClass].
    ^true