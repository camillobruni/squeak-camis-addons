as yet unclassified
contents
	^ '
Widget = function() {};

Widget.processEvents = true;
Widget.safari = (-1 < navigator.userAgent.toLowerCase().indexOf(''safari''));
Widget.mozilla = (-1 < navigator.userAgent.toLowerCase().indexOf(''firefox''));

Widget.init = function(id) 
{
  this.widgets = new Object;
  var root = document.getElementById(id);
  this.bind(root);
  var children = root.getElementsByTagName(''DIV'');
  for (var i=0; i < children.length; i++) {
    this.bind(children.item(i));
  };
}

Widget.bind = function(node) 
{
  var klass = node.className.split('' '')[0];
  if (window[klass])
    this.widgets[node.id] = new window[klass](node.id);
}

Widget.unbind = function(node) 
{
  delete this.widgets[node.id];
};

Widget.get = function(id)
{
  return this.widgets[id];
}

Widget.prototype.thunk = function(method) {
  var self = this;
  return function() {return self[method].apply(self, arguments)};
};

Widget.prototype.cont = function(method) {
  var self = this;
  var len = arguments.length;
  var args = new Array(len - 1);
  for (var i=1; i < len; i++) {
    args[i-1] = arguments[i];
  };
  return function() {return self[method].apply(self, args)};
};


Widget.prototype.children = function()
{
  var nodes = this.div.childNodes;
  var length = nodes.length;
  var result = new Array;
  for (var i=0; i < length; i++) {
    if (nodes[i].nodeType == Node.ELEMENT_NODE)
      result.push(nodes[i]);
  };
  return result;
};

Widget.prototype.requestText = function(prompt, template) {
  var text = window.prompt(prompt, template);
  link.send(this.id, ''continue:'', text);
};

Widget.prototype.requestChoice = function(prompt, labels) {
  var items = new Array(labels.length);
  for (var i = labels.length - 1; i >= 0; i--){
    items[i] = {label: labels[i], isEnabled: true};
  };
  
	if (prompt) prompt = prompt.replace("\r", "\n", ''gm'');

  menu = new Menu(this.id, prompt, items);
  menu.show(Menu.x, Menu.y);
};

Widget.prototype.openMenu = function(spec) {
  menu = new Menu(this.id, '''', spec.items);
  menu.show(Menu.x, Menu.y);
};

Widget.prototype.openWindow = function(url) {
	window.opener.launcher.openWindow(url);	
}

Root = function(id)
{
  this.id = id;
  this.div = document.getElementById(id);
	link.heartbeat(5, this.id, ''ping'')
}

Root.prototype = new Widget;

Root.prototype.title = function(title)
{
  document.title = title;
};

SelectingWidget = function() {}

SelectingWidget.prototype = new Widget();

SelectingWidget.prototype.installHandler = function(id)
{
  var self = this;
  this.node.onclick = function(evt) 
  {
    if (Widget.processEvents) self.select(evt.target)
  };
};

SelectingWidget.prototype.update = function(state)
{
  this.node.innerHTML = '''';
  var length = state.items.length;
  for (var i=0; i < length; i++) {
    this.node.appendChild(this.createItemNode(state, i));
  };
  if (state.selection != undefined)
    this.node.childNodes[state.selection].className += '' '' + this.selectedClass;
  this.noteSelection(this.node.childNodes[state.selection]);
};

SelectingWidget.prototype.select = function(node)
{
  if (node.nodeName == this.element)
  {
    var label = this.decode(node);
    link.send(this.id, ''select:'', label);
  } 
};

SelectingWidget.prototype.selectedNode = function()
{
  var nodes = this.node.childNodes;
  var length = nodes.length;
  for (var i=0; i < length; i++) 
    if (nodes[i].className == this.selectedClass)
      return nodes[i]
  return null;
};

SelectingWidget.prototype.isEmpty = function() {
  return this.node.childNodes.length == 0;
};

SelectingWidget.prototype.noteSelection = function(node) {
  // do nothing be default
};


function ButtonBar (id)
{
  this.id = id;
  this.node = document.getElementById(id);
  this.node.innerHTML = '''';
  this.node.className += '' button-bar'';
  this.installHandler();
}

ButtonBar.prototype = new SelectingWidget;
ButtonBar.prototype.element = ''SPAN'';
ButtonBar.prototype.unselectedClass = ''button'';
ButtonBar.prototype.selectedClass = ''button selection'';

ButtonBar.prototype.createItemNode = function(state, index)
{
  var element = document.createElement(this.element);
  element.className = this.unselectedClass;
  element.innerHTML = state.items[index];
  return element;
};

ButtonBar.prototype.decode = function(node) {
  return node.firstChild.data
};


function List(id) {
  this.id = id;
  var div = document.getElementById(id);
  div.innerHTML = '''';
  
  this.node = document.createElement(''ul'');
  this.node.className = ''list'';
  div.appendChild(this.node);
  
  this.node.onclick = this.thunk(''handleClick'');
  this.node.oncontextmenu = this.thunk(''handleContextMenu'');
}

List.prototype = new SelectingWidget;
List.prototype.element = ''LI'';
List.prototype.selectedClass = ''selection'';

SelectingWidget.prototype.createItemNode = function(state, index)
{
  var element = document.createElement(this.element);

  if (state.icons.length > 0) {
 		if (state.icons[index] == ''blank'') {
			element.className = ''blank'';
		} else {
	   	var image = new Image();
	    image.src = ''/icons/'' + state.icons[index];
	    image.width = 12;
	    image.height = 12;    
	    element.appendChild(image);
		};
  }

  var label = document.createTextNode(this.encode(state.items[index]));
  element.appendChild(label);
  
  return element;
};

List.prototype.noteSelection = function(node) {
  if (undefined == node) return;
  
  var div = this.node.parentNode;
  var nodeBottom = node.offsetTop + node.offsetHeight;
  var divBottom = div.scrollTop + div.offsetHeight;

  if ((node.offsetTop < div.scrollTop) || (nodeBottom > divBottom)) {
    var middle = node.offsetTop + Math.floor((node.offsetHeight / 2));
    div.scrollTop = middle - Math.floor((div.offsetHeight / 2));
  };
};

List.prototype.handleClick = function(evt) {
  evt.preventDefault();
  if (Widget.processEvents) this.select(evt.target);
};

List.prototype.handleContextMenu = function(evt) {
  evt.preventDefault();
  if (Widget.processEvents) this.requestMenu(evt);
};

List.prototype.encode = function(label) {
  label = label.replace('' '', "\u00A0", ''g'');
  label = label.replace(''>>'', "\u00BB", ''g'');
  return label;
};

List.prototype.decode = function(node) {
  var label = node.lastChild.data;
  label = label.replace("\u00A0", '' '', ''g'')
  label = label.replace(''&nbsp;'', '' '', ''g'');
  label = label.replace(''&gt;'', ''>'', ''g'');
  label = label.replace("\u00BB", ''>>'', ''g'');
  return label;
};

List.prototype.requestMenu = function(evt) {
  if (!evt) var evt = window.event;
  Menu.noteLocation(evt);
  link.send(this.id, ''openMenu'')
};


Menu = function(id, prompt, items)
{
  this.id = id;
	this.prompt = prompt;
  this.items = items;
  this.saved = new Object;
}

Menu.noteLocation = function(evt)
{
  Menu.x = evt.pageX;
  Menu.y = evt.pageY;
}

Menu.clearLocation = function()
{
	Menu.x = Math.floor(window.innerWidth / 2);
	Menu.y = Math.floor(window.innerHeight / 2);
}

Menu.clearLocation();
Menu.prototype = new Widget;

Menu.prototype.installHandlers = function() 
{
  this.saved.onmousedown = document.body.onmousedown;
  this.saved.onmouseup = document.body.onmouseup;
  document.body.onmousedown = this.thunk(''handleMouseDown'');
  document.body.onmouseup = this.thunk(''handleMouseUp'');
};

Menu.prototype.removeHandlers = function() 
{
  document.body.onmousedown = this.saved.onmousedown;
  document.body.onmouseup = this.saved.onmouseup;
};

Menu.prototype.handleMouseUp = function(evt) {
  if (!evt) var evt = window.event;
  var target = (window.event) ? evt.srcElement : evt.target;
  var node = target;
  while (node != this.node && node.nodeName != ''BODY'')
    node = node.parentNode;
  if (node == this.node)
  {   
    Menu.noteLocation(evt);
    this.select(target);
  }  
  else this.hide();
};

Menu.prototype.handleMouseDown = function(evt) {
  evt.preventDefault()
};

Menu.prototype.show = function(x, y) {
  var ul = document.createElement(''ul'');
  var item;
  this.node = document.createElement(''div'');
  this.node.className = ''menu'';

	if (this.prompt) {
		var prompt = document.createElement(''div'');
		prompt.className = ''prompt'';
		prompt.appendChild(document.createTextNode(this.prompt));
		this.node.appendChild(prompt);
	}
	
  ul.className = ''menu'';
  this.node.appendChild(ul);  
  var len = this.items.length;
  for (var i=0; i < len; i++) {
    if (null == this.items[i]) {
      item = document.createElement(''hr'');
    } else {
      item = document.createElement(''li'');
      item.appendChild(document.createTextNode(this.items[i].label));
    }
    ul.appendChild(item);
  };
  Widget.processEvents = false;
  setTimeout(this.thunk(''installHandlers''), 10);
  document.body.appendChild(this.node);
  this.position(x, y);
};

Menu.prototype.position = function(x, y) {
  
  // measure the node and the window
  var mw = this.node.offsetWidth;
  var mh = this.node.offsetHeight;
  var ww = document.body.clientWidth;
  var wh = document.body.clientHeight;
  
  // offset from the mouse a bit
  x += 5;
  y -= 12;
  
  // move so that it''s entirely inside the window
  x = x + mw < ww ? x : ww - mw;
  y = y + mh < wh ? y : wh - mh;
  this.node.style.left = x;
  this.node.style.top = y; 
};

Menu.prototype.hide = function() {
  this.node.parentNode.removeChild(this.node); 
  this.removeHandlers();
  window.setTimeout(function() {Widget.processEvents = true}, 100);
	Menu.clearLocation();
};

Menu.prototype.select = function(node) {
  if (node.nodeName == ''LI'')
    link.send(this.id, ''continue:'', node.innerHTML);
  this.hide()
};

Scroller = function(id)
{
  this.id = this.id;
  this.div = document.getElementById(id);
}

Scroller.prototype = new Widget();

Scroller.prototype.adjustPanes = function()
{
  var panes = this.children();
  var sizing = this.sizing ? this.sizing : panes.length;
  var width = 100 / sizing;
  for (var i=0; i < panes.length; i++) {
    var p = panes[i];
    p.style.left = width*i + ''%'';
    p.style.right = (100 - width - width * i) + ''%'';
  };
  this.div.scrollLeft = this.div.scrollWidth - this.div.style.width;
};

Scroller.prototype.push = function(spec) {
  var pane = document.createElement(''div'');
  pane.id = spec.id;
  pane.className = ''Pane horizontal'';
  
  var list = document.createElement(''div'');
  list.id = spec.list;
  list.className = ''List vertical'';
  pane.appendChild(list);
  
  var buttons = document.createElement(''div'');
  buttons.id = spec.buttons;
  buttons.className = ''ButtonBar vertical''
  pane.appendChild(buttons);
  
  this.div.appendChild(pane);
  Widget.bind(pane);
  Widget.bind(list);
  Widget.bind(buttons);
  
  if (spec.show)
  {
    Widget.get(spec.id).showSwitch();
  }
  else 
  {
    Widget.get(spec.id).hideSwitch();
  }
  
  this.adjustPanes();
};

Scroller.prototype.pop = function(count) {
  for (var i=0; i < count; i++) 
  {
    pane = this.div.lastChild;
    Widget.unbind(pane);
    this.div.removeChild(this.div.lastChild);
  };
  this.adjustPanes();
};

Scroller.prototype.setSizing = function(sizing) {
  this.sizing = sizing;
  this.adjustPanes();
};


Pane = function (id)
{
  this.id = id;
  this.div = document.getElementById(id);
}

Pane.prototype = new Widget();

Pane.prototype.isShowing = function() {
  return Widget.get(this.children()[1].id).isEmpty();
};

Pane.prototype.update = function(shouldShow) {
  var isShowing = this.isShowing();
  if (shouldShow && !isShowing) {
    this.showSwitch();
  } else if (!shouldShow && isShowing) {
    this.hideSwitch();
  }
};

Pane.prototype.showSwitch = function()
{
  var children = this.children();
  children[0].style.top = ''0px'';
  children[0].style.bottom = ''18px'';
  
  children[1].style.display = ''block'';
  children[1].style.bottom = ''0px'';
  children[1].style.height = ''18px'';
};

Pane.prototype.hideSwitch = function()
{
  var children = this.children();
  children[0].style.top = ''0px'';
  children[0].style.bottom = ''0px'';
  
  children[1].style.display = ''none'';
  children[1].style.bottom = ''0px'';
  children[1].style.height = ''18px'';
};'