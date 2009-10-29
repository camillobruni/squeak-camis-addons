as yet unclassified
contents
	^ 'Text = function(id)
{
  this.id = id;
  this.border = document.getElementById(id);

	this.node = document.createElement(''div'');
	this.node.className = ''Content'';
	this.node.innerHTML = ''<p></p>'';
	this.node.contentEditable = ''true'';
	this.border.appendChild(this.node);
	
  this.codes = new Object;

  if (Widget.mozilla)
    this.configMozilla()
  else 
    this.configSafari();
}

Text.prototype = new Widget();

Text.prototype.configMozilla = function() {
  document.execCommand(''enableObjectResizing'', false, false);
	window.addEventListener(''load'', this.thunk(''installHandlers''), false);
  this.insertCommand = ''inserthtml'';
  with (this.codes) {
    circumflex = 94;
    underscore = 95;
    tab = 9;
    save = 115;
    implementors = 109;
    senders = 110;
    references = 78;
    browse = 98;
  }
  
  this.contents = function() {
    var result = this.node.innerHTML;
    result = result.replace(''<br>'', "\n", ''gm'');
    return result
  }
};

Text.prototype.configSafari = function() {
  setTimeout(this.thunk(''installHandlers''), 0);
  this.insertCommand = ''inserttext'';
  with (this.codes) {
    circumflex = 94;
    underscore = 95;
    tab = 9;
    save = 19;
    senders = 14;
    implementors = 13;
    references = 13;
    browse = 2;
  }
  
  this.contents = function() {
    return this.encode(this.node.innerText);
  }
};

Text.prototype.installHandlers = function() {
  this.node.addEventListener(''keypress'', this.thunk(''handleKeystroke''), false);
  this.node.addEventListener(''contextmenu'', this.thunk(''handleContextMenu''), false);
};

Text.prototype.init = function(state) {
  // if (Widget.mozilla)
  //   document.addEventListener(''load'', this.cont(''update'', state), false);
  // else
    setTimeout(this.cont(''update'', state), 0);
};

Text.prototype.decode = function(text) {
  var result = text;
  result = result.replace("\r", "\n", ''gm'');
  result = result.replace(''_'', "\u2190", ''gm'');
  result = result.replace(''^'', "\u2191", ''gm'');  
  return result
};

Text.prototype.encode = function(text) {
  var result = text;
  result = result.replace("\n", "\r", ''gm'');
  result = result.replace("\u2190", ''_'', ''gm'');
  result = result.replace("\u2191", ''^'', ''gm'');
  return result
};

Text.prototype.update = function(state) {
  this.node.innerHTML = this.decode(state.text);
	this.markClean();
};

Text.prototype.handleKeystroke = function(evt) {
  var target, code;
  if (!evt) var evt = window.event;
  if (evt.target) target = evt.target;
    else if (evt.srcElement) target = evt.srcElement;
  if (target.nodeType == 3) target = target.parentNode;
  if (evt.keyCode) code = evt.keyCode;
    else if (evt.which) code = evt.which;
  
  with (this.codes) {
    if (evt.ctrlKey) {
      if (evt.shiftKey) {
        if (references == code) this.sendCommand(''references:'')
      } else {
        if (save == code) this.save()
        else if (implementors == code) this.sendCommand(''implementors:'')
        else if (senders == code) this.sendCommand(''senders:'') 
        else if (browse == code) this.sendCommand(''browse:'')        
      }
    } else {
      if (circumflex == code) this.upArrow(evt)
      else if (underscore == code) this.leftArrow(evt)
    } 
  }
	
	this.markDirty()
}

Text.prototype.handleContextMenu = function(evt) {
  evt.preventDefault();
  if (Widget.processEvents) this.requestMenu(evt);
};

Text.prototype.markDirty = function() {
	if (-1 == this.border.className.indexOf(''dirty''))
		this.border.className += '' dirty''
};

Text.prototype.markClean = function() {
	this.border.className = this.border.className.replace('' dirty'', '''')
};

Text.prototype.requestMenu = function(evt) {
  if (!evt) var evt = window.event;
  Menu.x = evt.pageX + this.iframe.parentNode.offsetLeft;
  Menu.y = evt.pageY + this.iframe.parentNode.offsetTop;
  
  link.send(this.id, ''menuShifted:selection:'', evt.shiftKey, this.getSelection())
};

Text.prototype.getSelection = function() {
  return this.win.getSelection().toString()
};

Text.prototype.sendCommand = function(command) {
  link.send(this.id, command, this.getSelection());
};

Text.prototype.upArrow = function(evt) {
  evt.preventDefault();
  document.execCommand(this.insertCommand, false, "\u2191");
};

Text.prototype.leftArrow = function(evt) {
  evt.preventDefault();
  document.execCommand(this.insertCommand, false, "\u2190");
};

Text.prototype.save = function() {
  var contents = this.encode(this.contents());
  link.send(this.id, ''accept:'', contents);
};

Text.prototype.tab = function() {};
'