as yet unclassified
contents
	^ 'function Link(url) 
{
  this.url = url;
  this.objects = new Object;
	this.beats = [];
}

Link.log = function(val)
{
	if (window.console) {
		window.console.log(val);
	} else if (document.createEvent) {
			printfire=function(){}
	        printfire.args = arguments;
	        var ev = document.createEvent("Events");
	        ev.initEvent("printfire", false, true);
	        dispatchEvent(ev);
	} else {
		window.alert(val + "\n");
	}
}

Link.prototype.register = function(object)
{
  this.objects[object.id] = object;
};

Link.prototype.printValue = function(val)
{
  var str;
  switch(val) {
    case undefined: str = ''null''; break;
    case null: str = ''null''; break;
    case true: str = ''true''; break;
    case false: str = ''false''; break;
    default: str = this.printObject(val);
  }
  return str;
};

Link.prototype.printObject = function(obj)
{
	var str=[];
	switch(obj.constructor) {
		case Boolean:
		case Number:
		  str.push(obj);
		  break;
		case String:
		  str.push("\"", obj, "\"");
		  break;
	  case Array:
			for (var i=0; i < obj.length; i++) {
			 str.push(this.printValue(obj[i]));
			};
			str=["[", str.join(", "), "]"];
			break;
		default:
			for (var p in obj) {
				str.push("\"" + p + "\": " + this.printValue(obj[p]));
			};
			str = ["{", str.join(", "), "}"];
	    break;
	};

  return str.join("");
}

Link.prototype.message = function(receiver, selector) {
  var msg = {receiver: receiver, selector: selector};
  msg.arguments = new Array();
  for (var i=2; i<arguments.length; i++)
		msg.arguments.push(arguments[i]);
  return msg
};

Link.prototype.handleStateChange = function(req) {
  if(req.readyState == 4) {
    if (req.status == 200) {
      this.dispatch(eval(req.responseText));
    } else {
      Link.log(''Server Error '' + req.status + '': '' + req.statusText);
      Link.log(req.responseText);
    }
  }
};

Link.prototype.heartbeat = function(seconds, receiver, selector) {
  var msg = {receiver: receiver, selector: selector};
  msg.arguments = new Array();
  for (var i=3; i<arguments.length; i++)
    msg.arguments.push(arguments[i]);
	this.beats.push(new Heartbeat(seconds, msg))
};


Link.prototype.send = function(receiver, selector)
{
  var msg = this.message.apply(this, arguments);
  this.post(msg);
	for (var i = this.beats.length - 1; i >= 0; i--){
		this.beats[i].reset
	};
}

Link.prototype.post = function(msg)
{
  var self = this;
  var req = new XMLHttpRequest();
  req.open(''POST'', this.url, true);
  req.onreadystatechange = function() {
    self.handleStateChange(req);
  }
  req.setRequestHeader(''Content-Type'', ''application/json'');
  req.send(this.printValue(msg));
}

Link.prototype.dispatch = function(messages)
{
  var msg, receiver;
  for (var i=0; i < messages.length; i++) {
    msg = messages[i];
    receiver = Widget.get(msg.receiver);
    receiver[msg.selector].apply(receiver, msg.arguments)
  };
};


function Heartbeat (seconds, message) {
	this.seconds = seconds;
	this.message = message;
	this.reset();
}

Heartbeat.prototype.reset = function() {
	var self = this;
	var func = function() {link.post(self.message)};
	if (this.id) window.clearInterval(this.id);
	this.id = window.setInterval(func, this.seconds * 1000);
};



link = new Link(window.location);

'