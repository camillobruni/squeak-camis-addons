fill-styles
tasklistFillStyleFor: aTasklist
	"Return the tasklist fillStyle for the given tasklist."
	
	|aColor c cm cd cb|
	aColor := aTasklist color.
	c := aColor  alphaMixed: 0.7 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.7 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.50->cm. 0.51->cd. 1.0->cb})
		origin: aTasklist topLeft;
		direction: 0 @ aTasklist height;
		radial: false