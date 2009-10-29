as yet unclassified
contents
	^ 'function Widget() {};

Widget.widgets = new Object;
Widget.get = function(id)
{
  return this.widgets[id];
}

function Launcher(id)
{
  this.id = id;
  this.windows = new Array;
  Widget.widgets[id] = this;
}

Launcher.prototype = new Widget();

Launcher.prototype.openBrowser = function()
{
  link.send(this.id, ''openBrowser'');
};

Launcher.prototype.openWindow = function(url)
{
  var child = window.open(url,'''',''scrollbars=no,menubar=no,height=400,width=600,resizable=yes,toolbar=no,location=no,status=no'');
  this.windows.push(child);
};

'