*Polymorph-Widgets-override
initialize
	"Initialize the state of the receiver."
	
	super initialize.
	self
		rubberBandCells: false;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		wrapCentering: #center;
		cellPositioning: #center.
	model := nil.
	label := nil.
	getStateSelector := nil.
	actionSelector := nil.
	getLabelSelector := nil.
	getMenuSelector := nil.
	shortcutCharacter := nil.
	askBeforeChanging := false.
	triggerOnMouseDown := false.
	onColor := nil.
	offColor := nil.
	feedbackColor := nil.
	showSelectionFeedback := false.
	allButtons := nil.
	arguments := #().
	argumentsProvider := nil.
	argumentsSelector := nil.
	self
		layoutInset: (self theme buttonLabelInsetFor: self);
		borderStyle: BorderStyle thinGray;
		extent: 20@15;
		setProperty: #lastState toValue: false;
		cornerStyle: (self theme buttonCornerStyleIn: nil)