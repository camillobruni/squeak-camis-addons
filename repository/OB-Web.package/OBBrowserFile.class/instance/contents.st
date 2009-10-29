as yet unclassified
contents
	^ '
body {
  font-family: Palatino, Georgia, serif;
/*  font-family: Bitstream Vera Serif, serif;*/
  font-size: 10pt;
}

div {
  position: absolute;
  overflow: auto;
}

.root {
  position: absolute;
  left: 0px;
  top: 0px;
  right: 0px;
  bottom: 0px;
}

.vertical {
  left: 0px;
  right: 0px;
}

.horizontal {
  top: 0px;
  bottom: 0px;
}

div.list {
  border: 1px #CCE3C8 solid;
  cursor: default;
}

.list {
  padding: 3px;
  margin: 1px;
}

.list img {
  margin-right: 2px;
  vertical-align: text-top;
}

.list li {
  list-style-type: none;
  white-space: nowrap;
  right: 2px;
  overflow: hidden;
}

li.blank {
  padding-left: 15px;
}

div.menu {
  background-color: #CCE3C8;
  position: absolute;
}

div.prompt {
  display: inline-block;
  position: relative;
  left: 4px;
  right: 4px;
  padding: 4px;
  margin-bottom: 4px;
  text-align: center;
  background-color: #B5DEAD;

  white-space: pre; /* CSS2 */
  white-space: -moz-pre-wrap; /* Mozilla */
  white-space: pre-wrap; /* CSS 2.1 */
  word-wrap: break-word; /* IE */
}

ul.menu {
  padding: 8px;
  margin: 0px;
  cursor: default;
}

.menu li {
  list-style-type: none;
  white-space: nowrap;
  margin: 0;
}

.menu li:hover, .button-bar .selection {
  background-color: #B5DEAD;  
}

.button-bar, .list .selection {
  background-color: #CDE9C1;
}

.button-bar {
  text-align: center;
  line-height: 100%;
  overflow: hidden;
  margin: 1px;
}

.button {
  position: relative;
  top: 2px;
  padding-top: 3px;
  padding-bottom: 3px;
  padding-left: 6px;
  padding-right: 6px;
  cursor: default;
}

div.Text {
  border: 1px #CCE3C8 solid;
  margin: 1px;
}

div.Text.dirty {
  border: 1px red solid;
}

div.Content {
  font-family: Georgia, serif;
  font-size: 10pt;
  white-space: pre; /* CSS2 */
  white-space: -moz-pre-wrap; /* Mozilla */
  white-space: pre-wrap; /* CSS 2.1 */
  word-wrap: break-word; /* IE */
  outline: none;
  
  top: 5px;
  bottom: 5px;
  left: 5px;
  right: 5px;
}

'