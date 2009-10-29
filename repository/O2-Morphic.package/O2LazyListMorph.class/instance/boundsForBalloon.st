drawing
boundsForBalloon
    ^handPoint ifNotNil: [Rectangle origin: (handPoint x + 3) @ (handPoint y - 3)  extent: 1@1] 
                  ifNil: [Rectangle origin: 1@1 extent: 1@1]