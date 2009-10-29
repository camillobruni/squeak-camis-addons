drawing
handleMouseMove: anEvent
    | iconArea newOrigin eventPosition |
    super handleMouseMove: anEvent.
    eventPosition := anEvent position.
    anEvent wasHandled ifTrue: [^self]. 
    handPoint ifNil: [^self]. 
    (balloonShown notNil and: [balloonShown == false]) ifTrue: [^self]. 
    iconArea := self boundsForBalloon.
    newOrigin := (iconArea origin x - self positionInWorld x - 6) @ (iconArea origin y + self positionInWorld y abs).
    iconArea setOrigin: newOrigin corner: (newOrigin x + 12) @ (newOrigin y + 12).

    (iconArea containsPoint: eventPosition) ifFalse: [
	   anEvent hand removePendingBalloonFor: self. 
	   anEvent hand triggerBalloonFor: self after: (2 * self balloonHelpDelayTime).
	   balloonShown := false].