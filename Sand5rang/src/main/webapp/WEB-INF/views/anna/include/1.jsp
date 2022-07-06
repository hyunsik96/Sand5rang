<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
article, aside, details, figcaption, figure, footer, header, hgroup, nav, section {
	display: block;
}
audio, canvas, video {
	display: inline-block;
*display:inline;
*zoom:1;
}
audio:not([controls]) {
	display: none;
}
html {
	font-size: 100%;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}
a:focus {
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}
a:hover, a:active {
	outline: 0;
}
sub, sup {
	position: relative;
	font-size: 75%;
	line-height: 0;
	vertical-align: baseline;
}
sup {
	top: -0.5em;
}
sub {
	bottom: -0.25em;
}
img {
	height: auto;
	border: 0;
	-ms-interpolation-mode: bicubic;
	vertical-align: middle;
}
button, input, select, textarea {
	margin: 0;
	font-size: 100%;
	vertical-align: middle;
}
button, input {
*overflow:visible;
	line-height: normal;
}
button::-moz-focus-inner, input::-moz-focus-inner {
padding:0;
border:0;
}
button, input[type="button"], input[type="reset"], input[type="submit"] {
	cursor: pointer;
	-webkit-appearance: button;
}
input[type="search"] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
}
input[type="search"]::-webkit-search-decoration, input[type="search"]::-webkit-search-cancel-button {
-webkit-appearance:none;
}
textarea {
	overflow: auto;
	vertical-align: top;
}
.clearfix {
*zoom:1;
}
.clearfix:before, .clearfix:after {
	display: table;
	content: "";
}
.clearfix:after {
	clear: both;
}
.hide-text {
	overflow: hidden;
	text-indent: 100%;
	white-space: nowrap;
}
.input-block-level {
	display: block;
	width: 100%;
	min-height: 28px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
}
body {
	margin: 0;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	line-height: 18px;
	color: #333333;
	background-color: #ffffff;
}
a {
	color: #073614;
	text-decoration: none;
}
a:hover {
	color: #545454;
	text-decoration: underline;
}
.row {
	margin-left: -20px;
*zoom:1;
}
.row:before, .row:after {
	display: table;
	content: "";
}
.row:after {
	clear: both;
}
[class*="span"] {
float:left;
margin-left:20px;
}
.container, .navbar-fixed-top .container, .navbar-fixed-bottom .container {
	width: 940px;
}
.span12 {
	width: 940px;
}
.span11 {
	width: 860px;
}
.span10 {
	width: 780px;
}
.span9 {
	width: 700px;
}
.span8 {
	width: 620px;
}
.span7 {
	width: 540px;
}
.span6 {
	width: 460px;
}
.span5 {
	width: 380px;
}
.span4 {
	width: 300px;
}
.span3 {
	width: 220px;
}
.span2 {
	width: 140px;
}
.span1 {
	width: 60px;
}
.offset12 {
	margin-left: 980px;
}
.offset11 {
	margin-left: 900px;
}
.offset10 {
	margin-left: 820px;
}
.offset9 {
	margin-left: 740px;
}
.offset8 {
	margin-left: 660px;
}
.offset7 {
	margin-left: 580px;
}
.offset6 {
	margin-left: 500px;
}
.offset5 {
	margin-left: 420px;
}
.offset4 {
	margin-left: 340px;
}
.offset3 {
	margin-left: 260px;
}
.offset2 {
	margin-left: 180px;
}
.offset1 {
	margin-left: 100px;
}
.row-fluid {
	width: 100%;
*zoom:1;
}
.row-fluid:before, .row-fluid:after {
	display: table;
	content: "";
}
.row-fluid:after {
	clear: both;
}
.row-fluid>[class*="span"] {
float:left;
margin-left:2.127659574%;
}
.row-fluid>[class*="span"]:first-child {
	margin-left: 0;
}
.row-fluid > .span12 {
	width: 99.99999998999999%;
}
.row-fluid > .span11 {
	width: 91.489361693%;
}
.row-fluid > .span10 {
	width: 82.97872339599999%;
}
.row-fluid > .span9 {
	width: 74.468085099%;
}
.row-fluid > .span8 {
	width: 65.95744680199999%;
}
.row-fluid > .span7 {
	width: 57.446808505%;
}
.row-fluid > .span6 {
	width: 48.93617020799999%;
}
.row-fluid > .span5 {
	width: 40.425531911%;
}
.row-fluid > .span4 {
	width: 31.914893614%;
}
.row-fluid > .span3 {
	width: 23.404255317%;
}
.row-fluid > .span2 {
	width: 14.89361702%;
}
.row-fluid > .span1 {
	width: 6.382978723%;
}
.container {
	margin-left: auto;
	margin-right: auto;
*zoom:1;
}
.container:before, .container:after {
	display: table;
	content: "";
}
.container:after {
	clear: both;
}
.container-fluid {
	padding-left: 20px;
	padding-right: 20px;
*zoom:1;
}
.container-fluid:before, .container-fluid:after {
	display: table;
	content: "";
}
.container-fluid:after {
	clear: both;
}
p {
	margin: 0 0 9px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	line-height: 18px;
}
p small {
	font-size: 11px;
	color: #999999;
}
.lead {
	margin-bottom: 18px;
	font-size: 20px;
	font-weight: 200;
	line-height: 27px;
}
h1, h2, h3, h4, h5, h6 {
	margin: 0;
	font-family: inherit;
	font-weight: bold;
	color: inherit;
	text-rendering: optimizelegibility;
}
h1 small, h2 small, h3 small, h4 small, h5 small, h6 small {
	font-weight: normal;
	color: #999999;
}
h1 {
	font-size: 30px;
	line-height: 36px;
}
h1 small {
	font-size: 18px;
}
h2 {
	font-size: 24px;
	line-height: 36px;
}
h2 small {
	font-size: 18px;
}
h3 {
	line-height: 27px;
	font-size: 18px;
}
h3 small {
	font-size: 14px;
}
h4, h5, h6 {
	line-height: 18px;
}
h4 {
	font-size: 14px;
}
h4 small {
	font-size: 12px;
}
h5 {
	font-size: 12px;
}
h6 {
	font-size: 11px;
	color: #999999;
	text-transform: uppercase;
}
.page-header {
	padding-bottom: 17px;
	margin: 18px 0;
	border-bottom: 1px solid #eeeeee;
}
.page-header h1 {
	line-height: 1;
}
ul, ol {
	padding: 0;
	margin: 0 0 9px 25px;
}
ul ul, ul ol, ol ol, ol ul {
	margin-bottom: 0;
}
ul {
	list-style: disc;
}
ol {
	list-style: decimal;
}
li {
	line-height: 18px;
}
ul.unstyled, ol.unstyled {
	margin-left: 0;
	list-style: none;
}
dl {
	margin-bottom: 18px;
}
dt, dd {
	line-height: 18px;
}
dt {
	font-weight: bold;
	line-height: 17px;
}
dd {
	margin-left: 9px;
}
.dl-horizontal dt {
	float: left;
	clear: left;
	width: 120px;
	text-align: right;
}
.dl-horizontal dd {
	margin-left: 130px;
}
hr {
	margin: 18px 0;
	border: 0;
	border-top: 1px solid #eeeeee;
	border-bottom: 1px solid #ffffff;
}
strong {
	font-weight: bold;
}
em {
	font-style: italic;
}
.muted {
	color: #999999;
}
abbr[title] {
	border-bottom: 1px dotted #ddd;
	cursor: help;
}
abbr.initialism {
	font-size: 90%;
	text-transform: uppercase;
}
blockquote {
	padding: 0 0 0 15px;
	margin: 0 0 18px;
	border-left: 5px solid #eeeeee;
}
blockquote p {
	margin-bottom: 0;
	font-size: 16px;
	font-weight: 300;
	line-height: 22.5px;
}
blockquote small {
	display: block;
	line-height: 18px;
	color: #999999;
}
blockquote small:before {
	content: '\2014 \00A0';
}
blockquote.pull-right {
	float: right;
	padding-left: 0;
	padding-right: 15px;
	border-left: 0;
	border-right: 5px solid #eeeeee;
}
blockquote.pull-right p, blockquote.pull-right small {
	text-align: right;
}
q:before, q:after, blockquote:before, blockquote:after {
	content: "";
}
address {
	display: block;
	margin-bottom: 18px;
	line-height: 18px;
	font-style: normal;
}
small {
	font-size: 100%;
}
cite {
	font-style: normal;
}
code, pre {
	padding: 0 3px 2px;
	font-family: Menlo, Monaco, "Courier New", monospace;
	font-size: 12px;
	color: #333333;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}
code {
	padding: 2px 4px;
	color: #d14;
	background-color: #f7f7f9;
	border: 1px solid #e1e1e8;
}
pre {
	display: block;
	padding: 8.5px;
	margin: 0 0 9px;
	font-size: 12.025px;
	line-height: 18px;
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, 0.15);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	white-space: pre;
	white-space: pre-wrap;
	word-break: break-all;
	word-wrap: break-word;
}
pre.prettyprint {
	margin-bottom: 18px;
}
pre code {
	padding: 0;
	color: inherit;
	background-color: transparent;
	border: 0;
}
.pre-scrollable {
	max-height: 340px;
	overflow-y: scroll;
}
form {
	margin: 0 0 18px;
}
fieldset {
	padding: 0;
	margin: 0;
	border: 0;
}
legend {
	display: block;
	width: 100%;
	padding: 0;
	margin-bottom: 27px;
	font-size: 19.5px;
	line-height: 36px;
	color: #333333;
	border: 0;
	border-bottom: 1px solid #eee;
}
legend small {
	font-size: 13.5px;
	color: #999999;
}
label, input, button, select, textarea {
	font-size: 13px;
	font-weight: normal;
	line-height: 18px;
}
input, button, select, textarea {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
label {
	display: block;
	margin-bottom: 5px;
	color: #333333;
}
input, textarea, select, .uneditable-input {
	display: inline-block;
	width: 210px;
	height: 18px;
	padding: 4px;
	margin-bottom: 9px;
	font-size: 13px;
	line-height: 18px;
	color: #555555;
	border: 1px solid #cccccc;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}
.uneditable-textarea {
	width: auto;
	height: auto;
}
label input, label textarea, label select {
	display: block;
}
input[type="image"], input[type="checkbox"], input[type="radio"] {
	width: auto;
	height: auto;
	padding: 0;
	margin: 3px 0;
*margin-top:0;
	line-height: normal;
	cursor: pointer;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	border: 0 \9;
}
input[type="image"] {
	border: 0;
}
input[type="file"] {
	width: auto;
	padding: initial;
	line-height: initial;
	border: initial;
	background-color: #ffffff;
	background-color: initial;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
input[type="button"], input[type="reset"], input[type="submit"] {
	width: auto;
	height: auto;
}
select, input[type="file"] {
	height: 28px;
*margin-top:4px;
	line-height: 28px;
}
input[type="file"] {
	line-height: 18px \9;
}
select {
	width: 220px;
	background-color: #ffffff;
}
select[multiple], select[size] {
	height: auto;
}
input[type="image"] {
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
textarea {
	height: auto;
}
input[type="hidden"] {
	display: none;
}
.radio, .checkbox {
	padding-left: 18px;
}
.radio input[type="radio"], .checkbox input[type="checkbox"] {
	float: left;
	margin-left: -18px;
}
.controls>.radio:first-child, .controls>.checkbox:first-child {
	padding-top: 5px;
}
.radio.inline, .checkbox.inline {
	display: inline-block;
	padding-top: 5px;
	margin-bottom: 0;
	vertical-align: middle;
}
.radio.inline+.radio.inline, .checkbox.inline+.checkbox.inline {
	margin-left: 10px;
}
input, textarea {
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-webkit-transition: border linear 0.2s, box-shadow linear 0.2s;
	-moz-transition: border linear 0.2s, box-shadow linear 0.2s;
	-ms-transition: border linear 0.2s, box-shadow linear 0.2s;
	-o-transition: border linear 0.2s, box-shadow linear 0.2s;
	transition: border linear 0.2s, box-shadow linear 0.2s;
}
input:focus, textarea:focus {
	border-color: rgba(82, 168, 236, 0.8);
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
	outline: 0;
	outline: thin dotted \9;
}
input[type="file"]:focus, input[type="radio"]:focus, input[type="checkbox"]:focus, select:focus {
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}
.input-mini {
	width: 60px;
}
.input-small {
	width: 90px;
}
.input-medium {
	width: 150px;
}
.input-large {
	width: 210px;
}
.input-xlarge {
	width: 270px;
}
.input-xxlarge {
	width: 530px;
}
input[class*="span"], select[class*="span"], textarea[class*="span"], .uneditable-input {
	float: none;
	margin-left: 0;
}
input, textarea, .uneditable-input {
	margin-left: 0;
}
input.span12, textarea.span12, .uneditable-input.span12 {
	width: 930px;
}
input.span11, textarea.span11, .uneditable-input.span11 {
	width: 850px;
}
input.span10, textarea.span10, .uneditable-input.span10 {
	width: 770px;
}
input.span9, textarea.span9, .uneditable-input.span9 {
	width: 690px;
}
input.span8, textarea.span8, .uneditable-input.span8 {
	width: 610px;
}
input.span7, textarea.span7, .uneditable-input.span7 {
	width: 530px;
}
input.span6, textarea.span6, .uneditable-input.span6 {
	width: 450px;
}
input.span5, textarea.span5, .uneditable-input.span5 {
	width: 370px;
}
input.span4, textarea.span4, .uneditable-input.span4 {
	width: 290px;
}
input.span3, textarea.span3, .uneditable-input.span3 {
	width: 210px;
}
input.span2, textarea.span2, .uneditable-input.span2 {
	width: 130px;
}
input.span1, textarea.span1, .uneditable-input.span1 {
	width: 50px;
}
input[disabled], select[disabled], textarea[disabled], input[readonly], select[readonly], textarea[readonly] {
	background-color: #eeeeee;
	border-color: #ddd;
	cursor: not-allowed;
}
.control-group.warning>label, .control-group.warning .help-block, .control-group.warning .help-inline {
	color: #c09853;
}
.control-group.warning input, .control-group.warning select, .control-group.warning textarea {
	color: #c09853;
	border-color: #c09853;
}
.control-group.warning input:focus, .control-group.warning select:focus, .control-group.warning textarea:focus {
	border-color: #a47e3c;
	-webkit-box-shadow: 0 0 6px #dbc59e;
	-moz-box-shadow: 0 0 6px #dbc59e;
	box-shadow: 0 0 6px #dbc59e;
}
.control-group.warning .input-prepend .add-on, .control-group.warning .input-append .add-on {
	color: #c09853;
	background-color: #fcf8e3;
	border-color: #c09853;
}
.control-group.error>label, .control-group.error .help-block, .control-group.error .help-inline {
	color: #b94a48;
}
.control-group.error input, .control-group.error select, .control-group.error textarea {
	color: #b94a48;
	border-color: #b94a48;
}
.control-group.error input:focus, .control-group.error select:focus, .control-group.error textarea:focus {
	border-color: #953b39;
	-webkit-box-shadow: 0 0 6px #d59392;
	-moz-box-shadow: 0 0 6px #d59392;
	box-shadow: 0 0 6px #d59392;
}
.control-group.error .input-prepend .add-on, .control-group.error .input-append .add-on {
	color: #b94a48;
	background-color: #f2dede;
	border-color: #b94a48;
}
.control-group.success>label, .control-group.success .help-block, .control-group.success .help-inline {
	color: #468847;
}
.control-group.success input, .control-group.success select, .control-group.success textarea {
	color: #468847;
	border-color: #468847;
}
.control-group.success input:focus, .control-group.success select:focus, .control-group.success textarea:focus {
	border-color: #356635;
	-webkit-box-shadow: 0 0 6px #7aba7b;
	-moz-box-shadow: 0 0 6px #7aba7b;
	box-shadow: 0 0 6px #7aba7b;
}
.control-group.success .input-prepend .add-on, .control-group.success .input-append .add-on {
	color: #468847;
	background-color: #dff0d8;
	border-color: #468847;
}
input:focus:required:invalid, textarea:focus:required:invalid, select:focus:required:invalid {
color:#b94a48;
border-color:#ee5f5b;
}
input:focus:required:invalid:focus, textarea:focus:required:invalid:focus, select:focus:required:invalid:focus {
border-color:#e9322d;
-webkit-box-shadow:0 0 6px #f8b9b7;
-moz-box-shadow:0 0 6px #f8b9b7;
box-shadow:0 0 6px #f8b9b7;
}
.form-actions {
	padding: 17px 20px 18px;
	margin-top: 18px;
	margin-bottom: 18px;
	background-color: #eeeeee;
	border-top: 1px solid #ddd;
*zoom:1;
}
.form-actions:before, .form-actions:after {
	display: table;
	content: "";
}
.form-actions:after {
	clear: both;
}
.uneditable-input {
	display: block;
	background-color: #ffffff;
	border-color: #eee;
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
	cursor: not-allowed;
}
:-moz-placeholder {
color:#999999;
}
::-webkit-input-placeholder {
color:#999999;
}
.help-block, .help-inline {
	color: #555555;
}
.help-block {
	display: block;
	margin-bottom: 9px;
}
.help-inline {
	display: inline-block;
*display:inline;
*zoom:1;
	vertical-align: middle;
	padding-left: 5px;
}
.input-prepend, .input-append {
	margin-bottom: 5px;
}
.input-prepend input, .input-append input, .input-prepend select, .input-append select, .input-prepend .uneditable-input, .input-append .uneditable-input {
*margin-left:0;
	-webkit-border-radius: 0 3px 3px 0;
	-moz-border-radius: 0 3px 3px 0;
	border-radius: 0 3px 3px 0;
}
.input-prepend input:focus, .input-append input:focus, .input-prepend select:focus, .input-append select:focus, .input-prepend .uneditable-input:focus, .input-append .uneditable-input:focus {
	position: relative;
	z-index: 2;
}
.input-prepend .uneditable-input, .input-append .uneditable-input {
	border-left-color: #ccc;
}
.input-prepend .add-on, .input-append .add-on {
	display: inline-block;
	width: auto;
	min-width: 16px;
	height: 18px;
	padding: 4px 5px;
	font-weight: normal;
	line-height: 18px;
	text-align: center;
	text-shadow: 0 1px 0 #ffffff;
	vertical-align: middle;
	background-color: #eeeeee;
	border: 1px solid #ccc;
}
.input-prepend .add-on, .input-append .add-on, .input-prepend .btn, .input-append .btn {
	-webkit-border-radius: 3px 0 0 3px;
	-moz-border-radius: 3px 0 0 3px;
	border-radius: 3px 0 0 3px;
}
.input-prepend .active, .input-append .active {
	background-color: #a9dba9;
	border-color: #46a546;
}
.input-prepend .add-on, .input-prepend .btn {
	margin-right: -1px;
}
.input-append input, .input-append select .uneditable-input {
	-webkit-border-radius: 3px 0 0 3px;
	-moz-border-radius: 3px 0 0 3px;
	border-radius: 3px 0 0 3px;
}
.input-append .uneditable-input {
	border-left-color: #eee;
	border-right-color: #ccc;
}
.input-append .add-on, .input-append .btn {
	margin-left: -4px;
	-webkit-border-radius: 0 3px 3px 0;
	-moz-border-radius: 0 3px 3px 0;
	border-radius: 0 3px 3px 0;
}
.input-prepend.input-append input, .input-prepend.input-append select, .input-prepend.input-append .uneditable-input {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}
.input-prepend.input-append .add-on:first-child, .input-prepend.input-append .btn:first-child {
	-webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  -ms-border-radius: 4px 0 0 4px;
  -o-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
  margin-right: -1px;
}
.input-prepend.input-append .add-on:last-child, .input-prepend.input-append .btn:last-child {
	margin-left: -4px;
	-webkit-border-radius: 0 3px 3px 0;
	-moz-border-radius: 0 3px 3px 0;
	border-radius: 0 3px 3px 0;
}
.search-query {
	padding-left: 14px;
	padding-right: 14px;
	margin-bottom: 0;
	-webkit-border-radius: 14px;
	-moz-border-radius: 14px;
	border-radius: 14px;
}
.form-search input, .form-inline input, .form-horizontal input, .form-search textarea, .form-inline textarea, .form-horizontal textarea, .form-search select, .form-inline select, .form-horizontal select, .form-search .help-inline, .form-inline .help-inline, .form-horizontal .help-inline, .form-search .uneditable-input, .form-inline .uneditable-input, .form-horizontal .uneditable-input, .form-search .input-prepend, .form-inline .input-prepend, .form-horizontal .input-prepend, .form-search .input-append, .form-inline .input-append, .form-horizontal .input-append {
	display: inline-block;
	margin-bottom: 0;
}
.form-search .hide, .form-inline .hide, .form-horizontal .hide {
	display: none;
}
.form-search label, .form-inline label {
	display: inline-block;
}
.form-search .input-append, .form-inline .input-append, .form-search .input-prepend, .form-inline .input-prepend {
	margin-bottom: 0;
}
.form-search .radio, .form-search .checkbox, .form-inline .radio, .form-inline .checkbox {
	padding-left: 0;
	margin-bottom: 0;
	vertical-align: middle;
}
.form-search .radio input[type="radio"], .form-search .checkbox input[type="checkbox"], .form-inline .radio input[type="radio"], .form-inline .checkbox input[type="checkbox"] {
	float: left;
	margin-left: 0;
	margin-right: 3px;
}
.control-group {
	margin-bottom: 9px;
}
legend+.control-group {
	margin-top: 18px;
	-webkit-margin-top-collapse: separate;
}
.form-horizontal .control-group {
	margin-bottom: 18px;
*zoom:1;
}
.form-horizontal .control-group:before, .form-horizontal .control-group:after {
	display: table;
	content: "";
}
.form-horizontal .control-group:after {
	clear: both;
}
.form-horizontal .control-label {
	float: left;
	width: 140px;
	padding-top: 5px;
	text-align: right;
}
.form-horizontal .controls {
	margin-left: 160px;
*display:inline-block;
*margin-left:0;
*padding-left:20px;
}
.form-horizontal .help-block {
	margin-top: 9px;
	margin-bottom: 0;
}
.form-horizontal .form-actions {
	padding-left: 160px;
}
table {
	max-width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	background-color: transparent;
}
.table {
	width: 100%;
	margin-bottom: 18px;
}
.table th, .table td {
	padding: 8px;
	line-height: 18px;
	text-align: left;
	vertical-align: top;
	border-top: 1px solid #dddddd;
}
.table th {
	font-weight: bold;
}
.table thead th {
	vertical-align: bottom;
}
.table colgroup+thead tr:first-child th, .table colgroup+thead tr:first-child td, .table thead:first-child tr:first-child th, .table thead:first-child tr:first-child td {
	border-top: 0;
}
.table tbody+tbody {
	border-top: 2px solid #dddddd;
}
.table-condensed th, .table-condensed td {
	padding: 4px 5px;
}
.table-bordered {
	border: 1px solid #dddddd;
	border-left: 0;
	border-collapse: separate;
*border-collapse:collapsed;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.table-bordered th, .table-bordered td {
	border-left: 1px solid #dddddd;
}
.table-bordered thead:first-child tr:first-child th, .table-bordered tbody:first-child tr:first-child th, .table-bordered tbody:first-child tr:first-child td {
	border-top: 0;
}
.table-bordered thead:first-child tr:first-child th:first-child, .table-bordered tbody:first-child tr:first-child td:first-child {
	-webkit-border-radius: 4px 0 0 0;
	-moz-border-radius: 4px 0 0 0;
	border-radius: 4px 0 0 0;
}
.table-bordered thead:first-child tr:first-child th:last-child, .table-bordered tbody:first-child tr:first-child td:last-child {
	-webkit-border-radius: 0 4px 0 0;
	-moz-border-radius: 0 4px 0 0;
	border-radius: 0 4px 0 0;
}
.table-bordered thead:last-child tr:last-child th:first-child, .table-bordered tbody:last-child tr:last-child td:first-child {
	-webkit-border-radius: 0 0 0 4px;
	-moz-border-radius: 0 0 0 4px;
	border-radius: 0 0 0 4px;
}
.table-bordered thead:last-child tr:last-child th:last-child, .table-bordered tbody:last-child tr:last-child td:last-child {
	-webkit-border-radius: 0 0 4px 0;
	-moz-border-radius: 0 0 4px 0;
	border-radius: 0 0 4px 0;
}
.table-striped tbody tr:nth-child(odd) td, .table-striped tbody tr:nth-child(odd) th {
	background-color: #f9f9f9;
}
.table tbody tr:hover td, .table tbody tr:hover th {
	background-color: #f5f5f5;
}
table .span1 {
	float: none;
	width: 44px;
	margin-left: 0;
}
table .span2 {
	float: none;
	width: 124px;
	margin-left: 0;
}
table .span3 {
	float: none;
	width: 204px;
	margin-left: 0;
}
table .span4 {
	float: none;
	width: 284px;
	margin-left: 0;
}
table .span5 {
	float: none;
	width: 364px;
	margin-left: 0;
}
table .span6 {
	float: none;
	width: 444px;
	margin-left: 0;
}
table .span7 {
	float: none;
	width: 524px;
	margin-left: 0;
}
table .span8 {
	float: none;
	width: 604px;
	margin-left: 0;
}
table .span9 {
	float: none;
	width: 684px;
	margin-left: 0;
}
table .span10 {
	float: none;
	width: 764px;
	margin-left: 0;
}
table .span11 {
	float: none;
	width: 844px;
	margin-left: 0;
}
table .span12 {
	float: none;
	width: 924px;
	margin-left: 0;
}
table .span13 {
	float: none;
	width: 1004px;
	margin-left: 0;
}
table .span14 {
	float: none;
	width: 1084px;
	margin-left: 0;
}
table .span15 {
	float: none;
	width: 1164px;
	margin-left: 0;
}
table .span16 {
	float: none;
	width: 1244px;
	margin-left: 0;
}
table .span17 {
	float: none;
	width: 1324px;
	margin-left: 0;
}
table .span18 {
	float: none;
	width: 1404px;
	margin-left: 0;
}
table .span19 {
	float: none;
	width: 1484px;
	margin-left: 0;
}
table .span20 {
	float: none;
	width: 1564px;
	margin-left: 0;
}
table .span21 {
	float: none;
	width: 1644px;
	margin-left: 0;
}
table .span22 {
	float: none;
	width: 1724px;
	margin-left: 0;
}
table .span23 {
	float: none;
	width: 1804px;
	margin-left: 0;
}
table .span24 {
	float: none;
	width: 1884px;
	margin-left: 0;
}
[class^="icon-"], [class*=" icon-"] {
display:inline-block;
width:14px;
height:14px;
line-height:14px;
vertical-align:text-top;
background-image:url("../img/glyphicons-halflings.html");
background-position:14px 14px;
background-repeat:no-repeat;
*margin-right:.3em;
}
[class^="icon-"]:last-child, [class*=" icon-"]:last-child {
*margin-left:0;
}
.icon-white {
	background-image: url("../img/glyphicons-halflings-white.html");
}
.icon-glass {
	background-position: 0 0;
}
.icon-music {
	background-position: -24px 0;
}
.icon-search {
	background-position: -48px 0;
}
.icon-envelope {
	background-position: -72px 0;
}
.icon-heart {
	background-position: -96px 0;
}
.icon-star {
	background-position: -120px 0;
}
.icon-star-empty {
	background-position: -144px 0;
}
.icon-user {
	background-position: -168px 0;
}
.icon-film {
	background-position: -192px 0;
}
.icon-th-large {
	background-position: -216px 0;
}
.icon-th {
	background-position: -240px 0;
}
.icon-th-list {
	background-position: -264px 0;
}
.icon-ok {
	background-position: -288px 0;
}
.icon-remove {
	background-position: -312px 0;
}
.icon-zoom-in {
	background-position: -336px 0;
}
.icon-zoom-out {
	background-position: -360px 0;
}
.icon-off {
	background-position: -384px 0;
}
.icon-signal {
	background-position: -408px 0;
}
.icon-cog {
	background-position: -432px 0;
}
.icon-trash {
	background-position: -456px 0;
}
.icon-home {
	background-position: 0 -24px;
}
.icon-file {
	background-position: -24px -24px;
}
.icon-time {
	background-position: -48px -24px;
}
.icon-road {
	background-position: -72px -24px;
}
.icon-download-alt {
	background-position: -96px -24px;
}
.icon-download {
	background-position: -120px -24px;
}
.icon-upload {
	background-position: -144px -24px;
}
.icon-inbox {
	background-position: -168px -24px;
}
.icon-play-circle {
	background-position: -192px -24px;
}
.icon-repeat {
	background-position: -216px -24px;
}
.icon-refresh {
	background-position: -240px -24px;
}
.icon-list-alt {
	background-position: -264px -24px;
}
.icon-lock {
	background-position: -287px -24px;
}
.icon-flag {
	background-position: -312px -24px;
}
.icon-headphones {
	background-position: -336px -24px;
}
.icon-volume-off {
	background-position: -360px -24px;
}
.icon-volume-down {
	background-position: -384px -24px;
}
.icon-volume-up {
	background-position: -408px -24px;
}
.icon-qrcode {
	background-position: -432px -24px;
}
.icon-barcode {
	background-position: -456px -24px;
}
.icon-tag {
	background-position: 0 -48px;
}
.icon-tags {
	background-position: -25px -48px;
}
.icon-book {
	background-position: -48px -48px;
}
.icon-bookmark {
	background-position: -72px -48px;
}
.icon-print {
	background-position: -96px -48px;
}
.icon-camera {
	background-position: -120px -48px;
}
.icon-font {
	background-position: -144px -48px;
}
.icon-bold {
	background-position: -167px -48px;
}
.icon-italic {
	background-position: -192px -48px;
}
.icon-text-height {
	background-position: -216px -48px;
}
.icon-text-width {
	background-position: -240px -48px;
}
.icon-align-left {
	background-position: -264px -48px;
}
.icon-align-center {
	background-position: -288px -48px;
}
.icon-align-right {
	background-position: -312px -48px;
}
.icon-align-justify {
	background-position: -336px -48px;
}
.icon-list {
	background-position: -360px -48px;
}
.icon-indent-left {
	background-position: -384px -48px;
}
.icon-indent-right {
	background-position: -408px -48px;
}
.icon-facetime-video {
	background-position: -432px -48px;
}
.icon-picture {
	background-position: -456px -48px;
}
.icon-pencil {
	background-position: 0 -72px;
}
.icon-map-marker {
	background-position: -24px -72px;
}
.icon-adjust {
	background-position: -48px -72px;
}
.icon-tint {
	background-position: -72px -72px;
}
.icon-edit {
	background-position: -96px -72px;
}
.icon-share {
	background-position: -120px -72px;
}
.icon-check {
	background-position: -144px -72px;
}
.icon-move {
	background-position: -168px -72px;
}
.icon-step-backward {
	background-position: -192px -72px;
}
.icon-fast-backward {
	background-position: -216px -72px;
}
.icon-backward {
	background-position: -240px -72px;
}
.icon-play {
	background-position: -264px -72px;
}
.icon-pause {
	background-position: -288px -72px;
}
.icon-stop {
	background-position: -312px -72px;
}
.icon-forward {
	background-position: -336px -72px;
}
.icon-fast-forward {
	background-position: -360px -72px;
}
.icon-step-forward {
	background-position: -384px -72px;
}
.icon-eject {
	background-position: -408px -72px;
}
.icon-chevron-left {
	background-position: -432px -72px;
}
.icon-chevron-right {
	background-position: -456px -72px;
}
.icon-plus-sign {
	background-position: 0 -96px;
}
.icon-minus-sign {
	background-position: -24px -96px;
}
.icon-remove-sign {
	background-position: -48px -96px;
}
.icon-ok-sign {
	background-position: -72px -96px;
}
.icon-question-sign {
	background-position: -96px -96px;
}
.icon-info-sign {
	background-position: -120px -96px;
}
.icon-screenshot {
	background-position: -144px -96px;
}
.icon-remove-circle {
	background-position: -168px -96px;
}
.icon-ok-circle {
	background-position: -192px -96px;
}
.icon-ban-circle {
	background-position: -216px -96px;
}
.icon-arrow-left {
	background-position: -240px -96px;
}
.icon-arrow-right {
	background-position: -264px -96px;
}
.icon-arrow-up {
	background-position: -289px -96px;
}
.icon-arrow-down {
	background-position: -312px -96px;
}
.icon-share-alt {
	background-position: -336px -96px;
}
.icon-resize-full {
	background-position: -360px -96px;
}
.icon-resize-small {
	background-position: -384px -96px;
}
.icon-plus {
	background-position: -408px -96px;
}
.icon-minus {
	background-position: -433px -96px;
}
.icon-asterisk {
	background-position: -456px -96px;
}
.icon-exclamation-sign {
	background-position: 0 -120px;
}
.icon-gift {
	background-position: -24px -120px;
}
.icon-leaf {
	background-position: -48px -120px;
}
.icon-fire {
	background-position: -72px -120px;
}
.icon-eye-open {
	background-position: -96px -120px;
}
.icon-eye-close {
	background-position: -120px -120px;
}
.icon-warning-sign {
	background-position: -144px -120px;
}
.icon-plane {
	background-position: -168px -120px;
}
.icon-calendar {
	background-position: -192px -120px;
}
.icon-random {
	background-position: -216px -120px;
}
.icon-comment {
	background-position: -240px -120px;
}
.icon-magnet {
	background-position: -264px -120px;
}
.icon-chevron-up {
	background-position: -288px -120px;
}
.icon-chevron-down {
	background-position: -313px -119px;
}
.icon-retweet {
	background-position: -336px -120px;
}
.icon-shopping-cart {
	background-position: -360px -120px;
}
.icon-folder-close {
	background-position: -384px -120px;
}
.icon-folder-open {
	background-position: -408px -120px;
}
.icon-resize-vertical {
	background-position: -432px -119px;
}
.icon-resize-horizontal {
	background-position: -456px -118px;
}
.dropdown {
	position: relative;
}
.dropdown-toggle {
*margin-bottom:-3px;
}
.dropdown-toggle:active, .open .dropdown-toggle {
	outline: 0;
}
.caret {
	display: inline-block;
	width: 0;
	height: 0;
	vertical-align: top;
	border-left: 4px solid transparent;
	border-right: 4px solid transparent;
	border-top: 4px solid #000000;
	opacity: 0.3;
	filter: alpha(opacity=30);
	content: "";
}
.dropdown .caret {
	margin-top: 8px;
	margin-left: 2px;
}
.dropdown:hover .caret, .open.dropdown .caret {
	opacity: 1;
	filter: alpha(opacity=100);
}
.dropdown-menu {
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 1000;
	float: left;
	display: none;
	min-width: 160px;
	padding: 4px 0;
	margin: 0;
	list-style: none;
	background-color: #ffffff;
	border-color: #ccc;
	border-color: rgba(0, 0, 0, 0.2);
	border-style: solid;
	border-width: 1px;
	-webkit-border-radius: 0 0 5px 5px;
	-moz-border-radius: 0 0 5px 5px;
	border-radius: 0 0 5px 5px;
	-webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
	-webkit-background-clip: padding-box;
	-moz-background-clip: padding;
	background-clip: padding-box;
*border-right-width:2px;
*border-bottom-width:2px;
}
.dropdown-menu.pull-right {
	right: 0;
	left: auto;
}
.dropdown-menu .divider {
	height: 1px;
	margin: 8px 1px;
	overflow: hidden;
	background-color: #e5e5e5;
	border-bottom: 1px solid #ffffff;
*width:100%;
*margin:-5px 0 5px;
}
.dropdown-menu a {
	display: block;
	padding: 3px 15px;
	clear: both;
	font-weight: normal;
	line-height: 18px;
	color: #333333;
	white-space: nowrap;
}
.dropdown-menu li>a:hover, .dropdown-menu .active>a, .dropdown-menu .active>a:hover {
	color: #ffffff;
	text-decoration: none;
	background-color: #0088cc;
}
.dropdown.open {
*z-index:1000;
}
.dropdown.open .dropdown-toggle {
	color: #ffffff;
	background: #ccc;
	background: rgba(0, 0, 0, 0.3);
}
.dropdown.open .dropdown-menu {
	display: block;
}
.pull-right .dropdown-menu {
	left: auto;
	right: 0;
}
.dropup .caret, .navbar-fixed-bottom .dropdown .caret {
	border-top: 0;
	border-bottom: 4px solid #000000;
	content: "\2191";
}
.dropup .dropdown-menu, .navbar-fixed-bottom .dropdown .dropdown-menu {
	top: auto;
	bottom: 100%;
	margin-bottom: 1px;
}
.typeahead {
	margin-top: 2px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.well {
	min-height: 20px;
	padding: 19px;
	margin-bottom: 20px;
	background-color: #f5f5f5;
	border: 1px solid #eee;
	border: 1px solid rgba(0, 0, 0, 0.05);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
	border-color: #ddd;
	border-color: rgba(0, 0, 0, 0.15);
}
.well-large {
	padding: 24px;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
}
.well-small {
	padding: 9px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}
.fade {
	-webkit-transition: opacity 0.15s linear;
	-moz-transition: opacity 0.15s linear;
	-ms-transition: opacity 0.15s linear;
	-o-transition: opacity 0.15s linear;
	transition: opacity 0.15s linear;
	opacity: 0;
}
.fade.in {
	opacity: 1;
}
.collapse {
	-webkit-transition: height 0.35s ease;
	-moz-transition: height 0.35s ease;
	-ms-transition: height 0.35s ease;
	-o-transition: height 0.35s ease;
	transition: height 0.35s ease;
	position: relative;
	overflow: hidden;
	height: 0;
}
.collapse.in {
	height: auto;
}
.close {
	float: right;
	font-size: 20px;
	font-weight: bold;
	line-height: 18px;
	color: #000000;
	text-shadow: 0 1px 0 #ffffff;
	opacity: 0.2;
	filter: alpha(opacity=20);
}
.close:hover {
	color: #000000;
	text-decoration: none;
	opacity: 0.4;
	filter: alpha(opacity=40);
	cursor: pointer;
}


/**/

.btn {
	-webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  -ms-border-radius: 4px;
  -o-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: inset rgba(255, 255, 255, 0.1) 0 1px 0, rgba(0, 0, 0, 0.1) 0 1px 2px;
  -moz-box-shadow: inset rgba(255, 255, 255, 0.1) 0 1px 0, rgba(0, 0, 0, 0.1) 0 1px 2px;
  box-shadow: inset rgba(255, 255, 255, 0.1) 0 1px 0, rgba(0, 0, 0, 0.1) 0 1px 2px;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(255, 255, 255, 0)), color-stop(100%, rgba(128, 128, 128, 0.1)));
  background-image: -webkit-linear-gradient(rgba(255, 255, 255, 0), rgba(128, 128, 128, 0.1));
  background-image: -moz-linear-gradient(rgba(255, 255, 255, 0), rgba(128, 128, 128, 0.1));
  background-image: -o-linear-gradient(rgba(255, 255, 255, 0), rgba(128, 128, 128, 0.1));
  background-image: linear-gradient(rgba(255, 255, 255, 0), rgba(128, 128, 128, 0.1));
  background-color: white;
  border-color: whitesmoke whitesmoke #cfcfcf;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: #333333;
  *background-color: whitesmoke;
  font-size: 14px;
  line-height: 22px;
  -webkit-transition: background-color 0.2s;
  -moz-transition: background-color 0.2s;
  -o-transition: background-color 0.2s;
  transition: background-color 0.2s;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15) rgba(0, 0, 0, 0.2);
  border-style: solid;
  border-width: 1px;
  cursor: pointer;
  display: inline-block;
  margin-bottom: 0;
  padding: 2px 12px;
  text-align: center;
  vertical-align: middle;
  *border: 0;
  *display: inline;
  *zoom: 1;
  *margin-left: .3em;
}
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
	background-color: whitesmoke;
  color: #333333;
  *background-color: #e8e8e8;
}
.btn:active, .btn.active {
	background-color: #dbdbdb \9;
}
.btn:first-child {
*margin-left:0;
}
.btn:hover {
	color: #333333;
	text-decoration: none;
	background-color: #e6e6e6;
	background-position: 0 -15px;
	-webkit-transition: background-position 0.1s linear;
	-moz-transition: background-position 0.1s linear;
	-ms-transition: background-position 0.1s linear;
	-o-transition: background-position 0.1s linear;
	transition: background-position 0.1s linear;
}
.btn:focus {
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}
.btn.active, .btn:active {
	-webkit-box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
  outline: 0;
}
.btn.disabled, .btn[disabled] {
	 -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=65);
  opacity: 0.65;
  background-image: none;
  cursor: default;
}
.btn-large {
	 -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  -ms-border-radius: 6px;
  -o-border-radius: 6px;
  border-radius: 6px;
  font-size: 16px;
  line-height: 24px;
  line-height: 22px;
  padding: 6px 14px;
}
.btn-large [class^="icon-"] {
	margin-top: 1px;
}
.btn-small {
	 -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  -ms-border-radius: 3px;
  -o-border-radius: 3px;
  border-radius: 3px;
  font-size: 12px;
  line-height: 24px;
  line-height: 22px;
  padding: 0 9px;
}
.btn-small [class^="icon-"] {
	margin-top: -1px;
}
.btn-mini {
	 -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  -ms-border-radius: 3px;
  -o-border-radius: 3px;
  border-radius: 3px;
  font-size: 11px;
  line-height: 24px;
  line-height: 22px;
  padding: 0 6px;
}
.btn-primary, .btn-primary:hover, .btn-warning, .btn-warning:hover, .btn-danger, .btn-danger:hover, .btn-success, .btn-success:hover, .btn-info, .btn-info:hover, .btn-inverse, .btn-inverse:hover {
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	color: #ffffff;
}
.btn-primary.active, .btn-warning.active, .btn-danger.active, .btn-success.active, .btn-info.active, .btn-inverse.active {
	color: rgba(255, 255, 255, 0.75);
}
.btn-primary {
	 background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(33, 169, 236, 0)), color-stop(100%, rgba(1, 9, 13, 0.1)));
  background-image: -webkit-linear-gradient(rgba(33, 169, 236, 0), rgba(1, 9, 13, 0.1));
  background-image: -moz-linear-gradient(rgba(33, 169, 236, 0), rgba(1, 9, 13, 0.1));
  background-image: -o-linear-gradient(rgba(33, 169, 236, 0), rgba(1, 9, 13, 0.1));
  background-image: linear-gradient(rgba(33, 169, 236, 0), rgba(1, 9, 13, 0.1));
  background-color: #21a9ec;
  border-color: #1399dc #1399dc #0d6895;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: white;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.15);
  *background-color: #1399dc;
}
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
	background-color: #1399dc;
  color: white;
  *background-color: #1189c4;
}
.btn-primary:active, .btn-primary.active {
	background-color: #0f79ad \9;
}
.btn-warning {
	 background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(245, 167, 50, 0)), color-stop(100%, rgba(38, 24, 2, 0.1)));
  background-image: -webkit-linear-gradient(rgba(245, 167, 50, 0), rgba(38, 24, 2, 0.1));
  background-image: -moz-linear-gradient(rgba(245, 167, 50, 0), rgba(38, 24, 2, 0.1));
  background-image: -o-linear-gradient(rgba(245, 167, 50, 0), rgba(38, 24, 2, 0.1));
  background-image: linear-gradient(rgba(245, 167, 50, 0), rgba(38, 24, 2, 0.1));
  background-color: #f5a732;
  border-color: #f49a15 #f49a15 #b36f09;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: white;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.15);
  *background-color: #f49a15;
}
.btn-warning:hover, .btn-warning:active, .btn-warning.active, .btn-warning.disabled, .btn-warning[disabled] {
	 background-color: #f49a15;
  color: white;
  *background-color: #e48d0b;
}
.btn-warning:active, .btn-warning.active {
	background-color: #cb7e0a \9;
}
.btn-danger {
	 background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(219, 51, 37, 0)), color-stop(100%, rgba(1, 0, 0, 0.1)));
  background-image: -webkit-linear-gradient(rgba(219, 51, 37, 0), rgba(1, 0, 0, 0.1));
  background-image: -moz-linear-gradient(rgba(219, 51, 37, 0), rgba(1, 0, 0, 0.1));
  background-image: -o-linear-gradient(rgba(219, 51, 37, 0), rgba(1, 0, 0, 0.1));
  background-image: linear-gradient(rgba(219, 51, 37, 0), rgba(1, 0, 0, 0.1));
  background-color: #db3325;
  border-color: #bd2b1f #bd2b1f #7b1c14;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: white;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.15);
  *background-color: #bd2b1f;
}
.btn-danger:hover, .btn-danger:active, .btn-danger.active, .btn-danger.disabled, .btn-danger[disabled] {
	background-color: #bd2b1f;
  color: white;
  *background-color: #a7261c;
}
.btn-danger:active, .btn-danger.active {
	background-color: #912118 \9;
}
.btn-success {
	background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(126, 178, 22, 0)), color-stop(100%, rgba(0, 0, 0, 0.1)));
  background-image: -webkit-linear-gradient(rgba(126, 178, 22, 0), rgba(0, 0, 0, 0.1));
  background-image: -moz-linear-gradient(rgba(126, 178, 22, 0), rgba(0, 0, 0, 0.1));
  background-image: -o-linear-gradient(rgba(126, 178, 22, 0), rgba(0, 0, 0, 0.1));
  background-image: linear-gradient(rgba(126, 178, 22, 0), rgba(0, 0, 0, 0.1));
  background-color: #7eb216;
  border-color: #6e9b13 #6e9b13 #3e570b;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: white;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.15);
  *background-color: #6e9b13;
}
.btn-success:hover, .btn-success:active, .btn-success.active, .btn-success.disabled, .btn-success[disabled] {
	background-color: #6e9b13;
  color: white;
  *background-color: #5e8510;
}
.btn-success:active, .btn-success.active {
	 background-color: #4e6e0e \9;
}
.btn-info {
	background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(78, 178, 213, 0)), color-stop(100%, rgba(7, 23, 29, 0.1)));
  background-image: -webkit-linear-gradient(rgba(78, 178, 213, 0), rgba(7, 23, 29, 0.1));
  background-image: -moz-linear-gradient(rgba(78, 178, 213, 0), rgba(7, 23, 29, 0.1));
  background-image: -o-linear-gradient(rgba(78, 178, 213, 0), rgba(7, 23, 29, 0.1));
  background-image: linear-gradient(rgba(78, 178, 213, 0), rgba(7, 23, 29, 0.1));
  background-color: #4eb2d5;
  border-color: #35a7cf #35a7cf #237795;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: white;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.15);
  *background-color: #35a7cf;
}
.btn-info:hover, .btn-info:active, .btn-info.active, .btn-info.disabled, .btn-info[disabled] {
	background-color: #35a7cf;
  color: white;
  *background-color: #2d98be;
}
.btn-info:active, .btn-info.active {
	background-color: #2888a9 \9;
}
.btn-inverse {
	 background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, rgba(85, 85, 85, 0)), color-stop(100%, rgba(0, 0, 0, 0.1)));
  background-image: -webkit-linear-gradient(rgba(85, 85, 85, 0), rgba(0, 0, 0, 0.1));
  background-image: -moz-linear-gradient(rgba(85, 85, 85, 0), rgba(0, 0, 0, 0.1));
  background-image: -o-linear-gradient(rgba(85, 85, 85, 0), rgba(0, 0, 0, 0.1));
  background-image: linear-gradient(rgba(85, 85, 85, 0), rgba(0, 0, 0, 0.1));
  background-color: #555555;
  border-color: #464646 #464646 #1f1f1f;
  border-color: rgba(0, 0, 0, 0.05) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.15);
  color: white;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.15);
  *background-color: #464646;
}
.btn-inverse:hover, .btn-inverse:active, .btn-inverse.active, .btn-inverse.disabled, .btn-inverse[disabled] {
	background-color: #464646;
  color: white;
  *background-color: #393939;
}
.btn-inverse:active, .btn-inverse.active {
	 background-color: #2c2c2c \9;
}
button.btn, input[type="submit"].btn {
*padding-top:2px;
*padding-bottom:2px;
}
button.btn::-moz-focus-inner, input[type="submit"].btn::-moz-focus-inner {
padding:0;
border:0;
}
button.btn.btn-large, input[type="submit"].btn.btn-large {
*padding-top:7px;
*padding-bottom:7px;
}
button.btn.btn-small, input[type="submit"].btn.btn-small {
*padding-top:3px;
*padding-bottom:3px;
}
button.btn.btn-mini, input[type="submit"].btn.btn-mini {
*padding-top:1px;
*padding-bottom:1px;
}
.btn-group {
	position: relative;
*zoom:1;
*margin-left:.3em;
}
.btn-group:before, .btn-group:after {
	display: table;
	content: "";
}
.btn-group:after {
	clear: both;
}
.btn-group:first-child {
*margin-left:0;
}
.btn-group+.btn-group {
	margin-left: 5px;
}
.btn-toolbar {
	margin-top: 9px;
	margin-bottom: 9px;
}
.btn-toolbar .btn-group {
	display: inline-block;
*display:inline;
*zoom:1;
}
.btn-group .btn {
	position: relative;
	float: left;
	margin-left: -1px;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}
.btn-group .btn:first-child {
	margin-left: 0;
	-webkit-border-top-left-radius: 4px;
	-moz-border-radius-topleft: 4px;
	border-top-left-radius: 4px;
	-webkit-border-bottom-left-radius: 4px;
	-moz-border-radius-bottomleft: 4px;
	border-bottom-left-radius: 4px;
}
.btn-group .btn:last-child, .btn-group .dropdown-toggle {
	-webkit-border-top-right-radius: 4px;
	-moz-border-radius-topright: 4px;
	border-top-right-radius: 4px;
	-webkit-border-bottom-right-radius: 4px;
	-moz-border-radius-bottomright: 4px;
	border-bottom-right-radius: 4px;
}
.btn-group .btn.large:first-child {
	margin-left: 0;
	-webkit-border-top-left-radius: 6px;
	-moz-border-radius-topleft: 6px;
	border-top-left-radius: 6px;
	-webkit-border-bottom-left-radius: 6px;
	-moz-border-radius-bottomleft: 6px;
	border-bottom-left-radius: 6px;
}
.btn-group .btn.large:last-child, .btn-group .large.dropdown-toggle {
	-webkit-border-top-right-radius: 6px;
	-moz-border-radius-topright: 6px;
	border-top-right-radius: 6px;
	-webkit-border-bottom-right-radius: 6px;
	-moz-border-radius-bottomright: 6px;
	border-bottom-right-radius: 6px;
}
.btn-group .btn:hover, .btn-group .btn:focus, .btn-group .btn:active, .btn-group .btn.active {
	z-index: 2;
}
.btn-group .dropdown-toggle:active, .btn-group.open .dropdown-toggle {
	outline: 0;
}
.btn-group .dropdown-toggle {
	padding-left: 8px;
	padding-right: 8px;
	-webkit-box-shadow: inset 1px 0 0 rgba(255, 255, 255, 0.125), inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 1px 0 0 rgba(255, 255, 255, 0.125), inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
	box-shadow: inset 1px 0 0 rgba(255, 255, 255, 0.125), inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
*padding-top:3px;
*padding-bottom:3px;
}
.btn-group .btn-mini.dropdown-toggle {
	padding-left: 5px;
	padding-right: 5px;
*padding-top:1px;
*padding-bottom:1px;
}
.btn-group .btn-small.dropdown-toggle {
*padding-top:4px;
*padding-bottom:4px;
}
.btn-group .btn-large.dropdown-toggle {
	padding-left: 12px;
	padding-right: 12px;
}
.btn-group.open {
*z-index:1000;
}
.btn-group.open .dropdown-menu {
	display: block;
	margin-top: 1px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
.btn-group.open .dropdown-toggle {
	background-image: none;
	-webkit-box-shadow: inset 0 1px 6px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 6px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 6px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
}


/**/


.btn .caret {
	margin-left: 0;
	  margin-top: 10px;
	  *margin-top: 5px;
}
.btn:hover .caret, .open.btn-group .caret {
	opacity: 1;
	filter: alpha(opacity=100);
}
.btn-mini .caret {
	margin-top: 5px;
}
.btn-small .caret {
	margin-top: 6px;
}
.btn-large .caret {
	margin-top: 6px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-top: 5px solid #000000;
}
.btn-primary .caret, .btn-warning .caret, .btn-danger .caret, .btn-info .caret, .btn-success .caret, .btn-inverse .caret {
	border-top-color: #ffffff;
	border-bottom-color: #ffffff;
	opacity: 0.75;
	filter: alpha(opacity=75);
}
.alert {
	padding: 8px 35px 8px 14px;
	margin-bottom: 18px;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
	background-color: #fcf8e3;
	border: 1px solid #fbeed5;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	color: #c09853;
}
.alert-heading {
	color: inherit;
}
.alert .close {
	position: relative;
	top: -2px;
	right: -21px;
	line-height: 18px;
}
.alert-success {
	background-color: #dff0d8;
	border-color: #d6e9c6;
	color: #468847;
}
.alert-danger, .alert-error {
	background-color: #f2dede;
	border-color: #eed3d7;
	color: #b94a48;
}
.alert-info {
	background-color: #d9edf7;
	border-color: #bce8f1;
	color: #3a87ad;
}
.alert-block {
	padding-top: 14px;
	padding-bottom: 14px;
}
.alert-block>p, .alert-block>ul {
	margin-bottom: 0;
}
.alert-block p+p {
	margin-top: 5px;
}
.nav {
	margin-left: 0;
	margin-bottom: 18px;
	list-style: none;
}
.nav>li>a {
	display: block;
}
.nav>li>a:hover {
	text-decoration: none;
	background-color: #eeeeee;
}
.nav .nav-header {
	display: block;
	padding: 3px 15px;
	font-size: 11px;
	font-weight: bold;
	line-height: 18px;
	color: #999999;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
	text-transform: uppercase;
}
.nav li+.nav-header {
	margin-top: 9px;
}
.nav-list {
	padding-left: 15px;
	padding-right: 15px;
	margin-bottom: 0;
}
.nav-list>li>a, .nav-list .nav-header {
	margin-left: -15px;
	margin-right: -15px;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}
.nav-list>li>a {
	padding: 3px 15px;
}
.nav-list>.active>a, .nav-list>.active>a:hover {
	color: #ffffff;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);
	background-color: #0088cc;
}
.nav-list [class^="icon-"] {
	margin-right: 2px;
}
.nav-list .divider {
	height: 1px;
	margin: 8px 1px;
	overflow: hidden;
	background-color: #e5e5e5;
	border-bottom: 1px solid #ffffff;
*width:100%;
*margin:-5px 0 5px;
}
.nav-tabs, .nav-pills {
*zoom:1;
}
.nav-tabs:before, .nav-pills:before, .nav-tabs:after, .nav-pills:after {
	display: table;
	content: "";
}
.nav-tabs:after, .nav-pills:after {
	clear: both;
}
.nav-tabs>li, .nav-pills>li {
	float: left;
}
.nav-tabs>li>a, .nav-pills>li>a {
	padding-right: 12px;
	padding-left: 12px;
	margin-right: 2px;
	line-height: 14px;
}
.nav-tabs {
	border-bottom: 1px solid #ddd;
}
.nav-tabs>li {
	margin-bottom: -1px;
}
.nav-tabs>li>a {
	padding-top: 8px;
	padding-bottom: 8px;
	line-height: 18px;
	border: 1px solid transparent;
	-webkit-border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	border-radius: 4px 4px 0 0;
}
.nav-tabs>li>a:hover {
	border-color: #eeeeee #eeeeee #dddddd;
}
.nav-tabs>.active>a, .nav-tabs>.active>a:hover {
	color: #555555;
	background-color: #ffffff;
	border: 1px solid #ddd;
	border-bottom-color: transparent;
	cursor: default;
}
.nav-pills>li>a {
	padding-top: 8px;
	padding-bottom: 8px;
	margin-top: 2px;
	margin-bottom: 2px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
.nav-pills>.active>a, .nav-pills>.active>a:hover {
	color: #ffffff;
	background-color: #0088cc;
}
.nav-stacked>li {
	float: none;
}
.nav-stacked>li>a {
	margin-right: 0;
}
.nav-tabs.nav-stacked {
	border-bottom: 0;
}
.nav-tabs.nav-stacked>li>a {
	border: 1px solid #ddd;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}
.nav-tabs.nav-stacked>li:first-child>a {
	-webkit-border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	border-radius: 4px 4px 0 0;
}
.nav-tabs.nav-stacked>li:last-child>a {
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;
}
.nav-tabs.nav-stacked>li>a:hover {
	border-color: #ddd;
	z-index: 2;
}
.nav-pills.nav-stacked>li>a {
	margin-bottom: 3px;
}
.nav-pills.nav-stacked>li:last-child>a {
	margin-bottom: 1px;
}
.nav-tabs .dropdown-menu, .nav-pills .dropdown-menu {
	margin-top: 1px;
	border-width: 1px;
}
.nav-pills .dropdown-menu {
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.nav-tabs .dropdown-toggle .caret, .nav-pills .dropdown-toggle .caret {
	border-top-color: #0088cc;
	border-bottom-color: #0088cc;
	margin-top: 6px;
}
.nav-tabs .dropdown-toggle:hover .caret, .nav-pills .dropdown-toggle:hover .caret {
	border-top-color: #005580;
	border-bottom-color: #005580;
}
.nav-tabs .active .dropdown-toggle .caret, .nav-pills .active .dropdown-toggle .caret {
	border-top-color: #333333;
	border-bottom-color: #333333;
}
.nav>.dropdown.active>a:hover {
	color: #000000;
	cursor: pointer;
}
.nav-tabs .open .dropdown-toggle, .nav-pills .open .dropdown-toggle, .nav>.open.active>a:hover {
	color: #ffffff;
	background-color: #999999;
	border-color: #999999;
}
.nav .open .caret, .nav .open.active .caret, .nav .open a:hover .caret {
	border-top-color: #ffffff;
	border-bottom-color: #ffffff;
	opacity: 1;
	filter: alpha(opacity=100);
}
.tabs-stacked .open>a:hover {
	border-color: #999999;
}
.tabbable {
*zoom:1;
}
.tabbable:before, .tabbable:after {
	display: table;
	content: "";
}
.tabbable:after {
	clear: both;
}
.tab-content {
	display: table;
	width: 100%;
}
.tabs-below .nav-tabs, .tabs-right .nav-tabs, .tabs-left .nav-tabs {
	border-bottom: 0;
}
.tab-content>.tab-pane, .pill-content>.pill-pane {
	display: none;
}
.tab-content>.active, .pill-content>.active {
	display: block;
}
.tabs-below .nav-tabs {
	border-top: 1px solid #ddd;
}
.tabs-below .nav-tabs>li {
	margin-top: -1px;
	margin-bottom: 0;
}
.tabs-below .nav-tabs>li>a {
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;
}
.tabs-below .nav-tabs>li>a:hover {
	border-bottom-color: transparent;
	border-top-color: #ddd;
}
.tabs-below .nav-tabs .active>a, .tabs-below .nav-tabs .active>a:hover {
	border-color: transparent #ddd #ddd #ddd;
}
.tabs-left .nav-tabs>li, .tabs-right .nav-tabs>li {
	float: none;
}
.tabs-left .nav-tabs>li>a, .tabs-right .nav-tabs>li>a {
	min-width: 74px;
	margin-right: 0;
	margin-bottom: 3px;
}
.tabs-left .nav-tabs {
	float: left;
	margin-right: 19px;
	border-right: 1px solid #ddd;
}
.tabs-left .nav-tabs>li>a {
	margin-right: -1px;
	-webkit-border-radius: 4px 0 0 4px;
	-moz-border-radius: 4px 0 0 4px;
	border-radius: 4px 0 0 4px;
}
.tabs-left .nav-tabs>li>a:hover {
	border-color: #eeeeee #dddddd #eeeeee #eeeeee;
}
.tabs-left .nav-tabs .active>a, .tabs-left .nav-tabs .active>a:hover {
	border-color: #ddd transparent #ddd #ddd;
*border-right-color:#ffffff;
}
.tabs-right .nav-tabs {
	float: right;
	margin-left: 19px;
	border-left: 1px solid #ddd;
}
.tabs-right .nav-tabs>li>a {
	margin-left: -1px;
	-webkit-border-radius: 0 4px 4px 0;
	-moz-border-radius: 0 4px 4px 0;
	border-radius: 0 4px 4px 0;
}
.tabs-right .nav-tabs>li>a:hover {
	border-color: #eeeeee #eeeeee #eeeeee #dddddd;
}
.tabs-right .nav-tabs .active>a, .tabs-right .nav-tabs .active>a:hover {
	border-color: #ddd #ddd #ddd transparent;
*border-left-color:#ffffff;
}
.navbar {
*position:relative;
*z-index:2;
	overflow: visible;
	margin-bottom: 18px;
}
.navbar-inner {
	padding-left: 20px;
	padding-right: 20px;
	background-color: #2c2c2c;
	background-image: -moz-linear-gradient(top, #333333, #222222);
	background-image: -ms-linear-gradient(top, #333333, #222222);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#333333), to(#222222));
	background-image: -webkit-linear-gradient(top, #333333, #222222);
	background-image: -o-linear-gradient(top, #333333, #222222);
	background-image: linear-gradient(top, #333333, #222222);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#333333', endColorstr='#222222', GradientType=0);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25), inset 0 -1px 0 rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25), inset 0 -1px 0 rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25), inset 0 -1px 0 rgba(0, 0, 0, 0.1);
}
.navbar .container {
	width: auto;
}
.btn-navbar {
	display: none;
	float: right;
	padding: 7px 10px;
	margin-left: 5px;
	margin-right: 5px;
	background-color: #2c2c2c;
	background-image: -moz-linear-gradient(top, #333333, #222222);
	background-image: -ms-linear-gradient(top, #333333, #222222);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#333333), to(#222222));
	background-image: -webkit-linear-gradient(top, #333333, #222222);
	background-image: -o-linear-gradient(top, #333333, #222222);
	background-image: linear-gradient(top, #333333, #222222);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#333333', endColorstr='#222222', GradientType=0);
	border-color: #222222 #222222 #000000;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
filter:progid:dximagetransform.microsoft.gradient(enabled=false);
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.075);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.075);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.075);
}
.btn-navbar:hover, .btn-navbar:active, .btn-navbar.active, .btn-navbar.disabled, .btn-navbar[disabled] {
	background-color: #222222;
}
.btn-navbar:active, .btn-navbar.active {
	background-color: #080808 \9;
}
.btn-navbar .icon-bar {
	display: block;
	width: 18px;
	height: 2px;
	background-color: #f5f5f5;
	-webkit-border-radius: 1px;
	-moz-border-radius: 1px;
	border-radius: 1px;
	-webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
}
.btn-navbar .icon-bar+.icon-bar {
	margin-top: 3px;
}
.nav-collapse.collapse {
	height: auto;
}
.navbar {
	color: #999999;
}
.navbar .brand:hover {
	text-decoration: none;
}
.navbar .brand {
	float: left;
	display: block;
	padding: 8px 20px 12px;
	margin-left: -20px;
	font-size: 20px;
	font-weight: 200;
	line-height: 1;
	color: #ffffff;
}
.navbar .navbar-text {
	margin-bottom: 0;
	line-height: 40px;
}
.navbar .btn, .navbar .btn-group {
	margin-top: 5px;
}
.navbar .btn-group .btn {
	margin-top: 0;
}
.navbar-form {
	margin-bottom: 0;
*zoom:1;
}
.navbar-form:before, .navbar-form:after {
	display: table;
	content: "";
}
.navbar-form:after {
	clear: both;
}
.navbar-form input, .navbar-form select, .navbar-form .radio, .navbar-form .checkbox {
	margin-top: 5px;
}
.navbar-form input, .navbar-form select {
	display: inline-block;
	margin-bottom: 0;
}
.navbar-form input[type="image"], .navbar-form input[type="checkbox"], .navbar-form input[type="radio"] {
	margin-top: 3px;
}
.navbar-form .input-append, .navbar-form .input-prepend {
	margin-top: 6px;
	white-space: nowrap;
}
.navbar-form .input-append input, .navbar-form .input-prepend input {
	margin-top: 0;
}
.navbar-search {
	position: relative;
	float: left;
	margin-top: 6px;
	margin-bottom: 0;
}
.navbar-search .search-query {
	padding: 4px 9px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: normal;
	line-height: 1;
	color: #ffffff;
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 1px 0px rgba(255, 255, 255, 0.15);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 1px 0px rgba(255, 255, 255, 0.15);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 1px 0px rgba(255, 255, 255, 0.15);
	-webkit-transition: none;
	-moz-transition: none;
	-ms-transition: none;
	-o-transition: none;
	transition: none;
}
.navbar-search .search-query:-moz-placeholder {
color:#cccccc;
}
.navbar-search .search-query::-webkit-input-placeholder {
color:#cccccc;
}
.navbar-search .search-query:focus, .navbar-search .search-query.focused {
	padding: 5px 10px;
	color: #333333;
	text-shadow: 0 1px 0 #ffffff;
	background-color: #ffffff;
	border: 0;
	-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
	outline: 0;
}
.navbar-fixed-top, .navbar-fixed-bottom {
	position: fixed;
	right: 0;
	left: 0;
	z-index: 1030;
	margin-bottom: 0;
}
.navbar-fixed-top .navbar-inner, .navbar-fixed-bottom .navbar-inner {
	padding-left: 0;
	padding-right: 0;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}
.navbar-fixed-top .container, .navbar-fixed-bottom .container {
	width: 940px;
}
.navbar-fixed-top {
	top: 0;
}
.navbar-fixed-bottom {
	bottom: 0;
}
.navbar .nav {
	position: relative;
	left: 0;
	display: block;
	float: left;
	margin: 0 10px 0 0;
}
.navbar .nav.pull-right {
	float: right;
}
.navbar .nav>li {
	display: block;
	float: left;
}
.navbar .nav>li>a {
	float: none;
	padding: 10px 10px 11px;
	line-height: 19px;
	color: #999999;
	text-decoration: none;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.navbar .nav>li>a:hover {
	background-color: transparent;
	color: #ffffff;
	text-decoration: none;
}
.navbar .nav .active>a, .navbar .nav .active>a:hover {
	color: #ffffff;
	text-decoration: none;
	background-color: #222222;
}
.navbar .divider-vertical {
	height: 40px;
	width: 1px;
	margin: 0 9px;
	overflow: hidden;
	background-color: #222222;
	border-right: 1px solid #333333;
}
.navbar .nav.pull-right {
	margin-left: 10px;
	margin-right: 0;
}
.navbar .dropdown-menu {
	margin-top: 1px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.navbar .dropdown-menu:before {
	content: '';
	display: inline-block;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-bottom: 7px solid #ccc;
	border-bottom-color: rgba(0, 0, 0, 0.2);
	position: absolute;
	top: -7px;
	left: 9px;
}
.navbar .dropdown-menu:after {
	content: '';
	display: inline-block;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-bottom: 6px solid #ffffff;
	position: absolute;
	top: -6px;
	left: 10px;
}
.navbar-fixed-bottom .dropdown-menu:before {
	border-top: 7px solid #ccc;
	border-top-color: rgba(0, 0, 0, 0.2);
	border-bottom: 0;
	bottom: -7px;
	top: auto;
}
.navbar-fixed-bottom .dropdown-menu:after {
	border-top: 6px solid #ffffff;
	border-bottom: 0;
	bottom: -6px;
	top: auto;
}
.navbar .nav .dropdown-toggle .caret, .navbar .nav .open.dropdown .caret {
	border-top-color: #ffffff;
	border-bottom-color: #ffffff;
}
.navbar .nav .active .caret {
	opacity: 1;
	filter: alpha(opacity=100);
}
.navbar .nav .open>.dropdown-toggle, .navbar .nav .active>.dropdown-toggle, .navbar .nav .open.active>.dropdown-toggle {
	background-color: transparent;
}
.navbar .nav .active>.dropdown-toggle:hover {
	color: #ffffff;
}
.navbar .nav.pull-right .dropdown-menu, .navbar .nav .dropdown-menu.pull-right {
	left: auto;
	right: 0;
}
.navbar .nav.pull-right .dropdown-menu:before, .navbar .nav .dropdown-menu.pull-right:before {
	left: auto;
	right: 12px;
}
.navbar .nav.pull-right .dropdown-menu:after, .navbar .nav .dropdown-menu.pull-right:after {
	left: auto;
	right: 13px;
}
.breadcrumb {
	padding: 7px 14px;
	margin: 0 0 18px;
	list-style: none;
	background-color: #fbfbfb;
	background-image: -moz-linear-gradient(top, #ffffff, #f5f5f5);
	background-image: -ms-linear-gradient(top, #ffffff, #f5f5f5);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f5f5f5));
	background-image: -webkit-linear-gradient(top, #ffffff, #f5f5f5);
	background-image: -o-linear-gradient(top, #ffffff, #f5f5f5);
	background-image: linear-gradient(top, #ffffff, #f5f5f5);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#f5f5f5', GradientType=0);
	border: 1px solid #ddd;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: inset 0 1px 0 #ffffff;
	-moz-box-shadow: inset 0 1px 0 #ffffff;
	box-shadow: inset 0 1px 0 #ffffff;
}
.breadcrumb li {
	display: inline-block;
*display:inline;
*zoom:1;
	text-shadow: 0 1px 0 #ffffff;
}
.breadcrumb .divider {
	padding: 0 5px;
	color: #999999;
}
.breadcrumb .active a {
	color: #333333;
}
.pagination {
	display: block;
   text-align: center;
	height: 36px;
	margin: 18px 0;
}
.pagination ul {
	display: inline-block;
*display:inline;
*zoom:1;
	margin-left: 0;
	margin-bottom: 0;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}
.pagination li {
	display: inline;
}
.pagination a {
	display: inline-block;
	padding: 0 14px;
	line-height: 34px;
	text-decoration: none;
	border: 1px solid #ddd;
	border-left-width: 0;
	margin-left: -5px;
}
.pagination a:hover, .pagination .active a {
	background-color: #f5f5f5;
}
.pagination .active a {
	color: #999999;
	cursor: default;
}
.pagination .disabled span, .pagination .disabled a, .pagination .disabled a:hover {
	color: #999999;
	background-color: transparent;
	cursor: default;
}
.pagination li:first-child a {
	border-left-width: 1px;
	-webkit-border-radius: 3px 0 0 3px;
	-moz-border-radius: 3px 0 0 3px;
	border-radius: 3px 0 0 3px;
}
.pagination li:last-child a {
	-webkit-border-radius: 0 3px 3px 0;
	-moz-border-radius: 0 3px 3px 0;
	border-radius: 0 3px 3px 0;
}
.pagination-centered {
	text-align: center;
}
.pagination-right {
	text-align: right;
}
.pager {
	margin-left: 0;
	margin-bottom: 18px;
	list-style: none;
	text-align: center;
*zoom:1;
}
.pager:before, .pager:after {
	display: table;
	content: "";
}
.pager:after {
	clear: both;
}
.pager li {
	display: inline;
}
.pager a {
	display: inline-block;
	padding: 5px 14px;
	background-color: #fff;
	border: 1px solid #ddd;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	border-radius: 15px;
}
.pager a:hover {
	text-decoration: none;
	background-color: #f5f5f5;
}
.pager .next a {
	float: right;
}
.pager .previous a {
	float: left;
}
.pager .disabled a, .pager .disabled a:hover {
	color: #999999;
	background-color: #fff;
	cursor: default;
}
.modal-open .dropdown-menu {
	z-index: 2050;
}
.modal-open .dropdown.open {
*z-index:2050;
}
.modal-open .popover {
	z-index: 2060;
}
.modal-open .tooltip {
	z-index: 2070;
}
.modal-backdrop {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 1040;
	background-color: #000000;
}
.modal-backdrop.fade {
	opacity: 0;
}
.modal-backdrop, .modal-backdrop.fade.in {
	opacity: 0.8;
	filter: alpha(opacity=80);
}
.modal {
	position: fixed;
	top: 50%;
	left: 50%;
	z-index: 1050;
	overflow: auto;
	width: 560px;
	margin: -250px 0 0 -280px;
	background-color: #ffffff;
	border: 1px solid #999;
	border: 1px solid rgba(0, 0, 0, 0.3);
*border:1px solid #999;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	-webkit-background-clip: padding-box;
	-moz-background-clip: padding-box;
	background-clip: padding-box;
}
.modal.fade {
	-webkit-transition: opacity .3s linear, top .3s ease-out;
	-moz-transition: opacity .3s linear, top .3s ease-out;
	-ms-transition: opacity .3s linear, top .3s ease-out;
	-o-transition: opacity .3s linear, top .3s ease-out;
	transition: opacity .3s linear, top .3s ease-out;
	top: -25%;
}
.modal.fade.in {
	top: 50%;
}
.modal-header {
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
}
.modal-header .close {
	margin-top: 2px;
}
.modal-body {
	overflow-y: auto;
	max-height: 400px;
	padding: 15px;
}
.modal-form {
	margin-bottom: 0;
}
.modal-footer {
	padding: 14px 15px 15px;
	margin-bottom: 0;
	text-align: right;
	background-color: #f5f5f5;
	border-top: 1px solid #ddd;
	-webkit-border-radius: 0 0 6px 6px;
	-moz-border-radius: 0 0 6px 6px;
	border-radius: 0 0 6px 6px;
	-webkit-box-shadow: inset 0 1px 0 #ffffff;
	-moz-box-shadow: inset 0 1px 0 #ffffff;
	box-shadow: inset 0 1px 0 #ffffff;
*zoom:1;
}
.modal-footer:before, .modal-footer:after {
	display: table;
	content: "";
}
.modal-footer:after {
	clear: both;
}
.modal-footer .btn+.btn {
	margin-left: 5px;
	margin-bottom: 0;
}
.modal-footer .btn-group .btn+.btn {
	margin-left: -1px;
}
.tooltip {
	position: absolute;
	z-index: 1020;
	display: block;
	visibility: visible;
	padding: 5px;
	font-size: 11px;
	opacity: 0;
	filter: alpha(opacity=0);
}
.tooltip.in {
	opacity: 0.8;
	filter: alpha(opacity=80);
}
.tooltip.top {
	margin-top: -2px;
}
.tooltip.right {
	margin-left: 2px;
}
.tooltip.bottom {
	margin-top: 2px;
}
.tooltip.left {
	margin-left: -2px;
}
.tooltip.top .tooltip-arrow {
	bottom: 0;
	left: 50%;
	margin-left: -5px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-top: 5px solid #000000;
}
.tooltip.left .tooltip-arrow {
	top: 50%;
	right: 0;
	margin-top: -5px;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-left: 5px solid #000000;
}
.tooltip.bottom .tooltip-arrow {
	top: 0;
	left: 50%;
	margin-left: -5px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 5px solid #000000;
}
.tooltip.right .tooltip-arrow {
	top: 50%;
	left: 0;
	margin-top: -5px;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-right: 5px solid #000000;
}
.tooltip-inner {
	max-width: 200px;
	padding: 3px 8px;
	color: #ffffff;
	text-align: center;
	text-decoration: none;
	background-color: #000000;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.tooltip-arrow {
	position: absolute;
	width: 0;
	height: 0;
}
.popover {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1010;
	display: none;
	padding: 5px;
}
.popover.top {
	margin-top: -5px;
}
.popover.right {
	margin-left: 5px;
}
.popover.bottom {
	margin-top: 5px;
}
.popover.left {
	margin-left: -5px;
}
.popover.top .arrow {
	bottom: 0;
	left: 50%;
	margin-left: -5px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-top: 5px solid #000000;
}
.popover.right .arrow {
	top: 50%;
	left: 0;
	margin-top: -5px;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-right: 5px solid #000000;
}
.popover.bottom .arrow {
	top: 0;
	left: 50%;
	margin-left: -5px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 5px solid #000000;
}
.popover.left .arrow {
	top: 50%;
	right: 0;
	margin-top: -5px;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
	border-left: 5px solid #000000;
}
.popover .arrow {
	position: absolute;
	width: 0;
	height: 0;
}
.popover-inner {
	padding: 3px;
	width: 280px;
	overflow: hidden;
	background: #000000;
	background: rgba(0, 0, 0, 0.8);
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
}
.popover-title {
	padding: 9px 15px;
	line-height: 1;
	background-color: #f5f5f5;
	border-bottom: 1px solid #eee;
	-webkit-border-radius: 3px 3px 0 0;
	-moz-border-radius: 3px 3px 0 0;
	border-radius: 3px 3px 0 0;
}
.popover-content {
	padding: 14px;
	background-color: #ffffff;
	-webkit-border-radius: 0 0 3px 3px;
	-moz-border-radius: 0 0 3px 3px;
	border-radius: 0 0 3px 3px;
	-webkit-background-clip: padding-box;
	-moz-background-clip: padding-box;
	background-clip: padding-box;
}
.popover-content p, .popover-content ul, .popover-content ol {
	margin-bottom: 0;
}
.thumbnails {
	margin-left: -20px;
	list-style: none;
*zoom:1;
}
.thumbnails:before, .thumbnails:after {
	display: table;
	content: "";
}
.thumbnails:after {
	clear: both;
}
.thumbnails>li {
	float: left;
	margin: 0 0 18px 20px;
}
.thumbnail {
	display: block;
	padding: 4px;
	line-height: 1;
	border: 1px solid #ddd;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
}
a.thumbnail:hover {
	border-color: #0088cc;
	-webkit-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
	-moz-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
	box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
.thumbnail>img {
	display: block;
	max-width: 100%;
	margin-left: auto;
	margin-right: auto;
}
.thumbnail .caption {
	padding: 9px;
}
.label {
	padding: 1px 4px 2px;
	font-size: 10.998px;
	font-weight: bold;
	line-height: 13px;
	color: #ffffff;
	vertical-align: middle;
	white-space: nowrap;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	background-color: #999999;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}
.label:hover {
	color: #ffffff;
	text-decoration: none;
}
.label-important {
	background-color: #b94a48;
}
.label-important:hover {
	background-color: #953b39;
}
.label-warning {
	background-color: #f89406;
}
.label-warning:hover {
	background-color: #c67605;
}
.label-success {
	background-color: #468847;
}
.label-success:hover {
	background-color: #356635;
}
.label-info {
	background-color: #3a87ad;
}
.label-info:hover {
	background-color: #2d6987;
}
.label-inverse {
	background-color: #333333;
}
.label-inverse:hover {
	background-color: #1a1a1a;
}
.badge {
	padding: 1px 9px 2px;
	font-size: 12.025px;
	font-weight: bold;
	white-space: nowrap;
	color: #ffffff;
	background-color: #999999;
	-webkit-border-radius: 9px;
	-moz-border-radius: 9px;
	border-radius: 9px;
}
.badge:hover {
	color: #ffffff;
	text-decoration: none;
	cursor: pointer;
}
.badge-error {
	background-color: #b94a48;
}
.badge-error:hover {
	background-color: #953b39;
}
.badge-warning {
	background-color: #f89406;
}
.badge-warning:hover {
	background-color: #c67605;
}
.badge-success {
	background-color: #468847;
}
.badge-success:hover {
	background-color: #356635;
}
.badge-info {
	background-color: #3a87ad;
}
.badge-info:hover {
	background-color: #2d6987;
}
.badge-inverse {
	background-color: #333333;
}
.badge-inverse:hover {
	background-color: #1a1a1a;
}
@-webkit-keyframes progress-bar-stripes {
from {
background-position:0 0;
}
to {
	background-position: 40px 0;
}
}
@-moz-keyframes progress-bar-stripes {
from {
background-position:0 0;
}
to {
	background-position: 40px 0;
}
}
@-ms-keyframes progress-bar-stripes {
from {
background-position:0 0;
}
to {
	background-position: 40px 0;
}
}
@keyframes progress-bar-stripes {
from {
background-position:0 0;
}
to {
	background-position: 40px 0;
}
}
.progress {
	overflow: hidden;
	height: 18px;
	margin-bottom: 18px;
	background-color: #f7f7f7;
	background-image: -moz-linear-gradient(top, #f5f5f5, #f9f9f9);
	background-image: -ms-linear-gradient(top, #f5f5f5, #f9f9f9);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f5f5f5), to(#f9f9f9));
	background-image: -webkit-linear-gradient(top, #f5f5f5, #f9f9f9);
	background-image: -o-linear-gradient(top, #f5f5f5, #f9f9f9);
	background-image: linear-gradient(top, #f5f5f5, #f9f9f9);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#f9f9f9', GradientType=0);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.progress .bar {
	width: 0%;
	height: 18px;
	color: #ffffff;
	font-size: 12px;
	text-align: center;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	background-color: #0e90d2;
	background-image: -moz-linear-gradient(top, #149bdf, #0480be);
	background-image: -ms-linear-gradient(top, #149bdf, #0480be);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#149bdf), to(#0480be));
	background-image: -webkit-linear-gradient(top, #149bdf, #0480be);
	background-image: -o-linear-gradient(top, #149bdf, #0480be);
	background-image: linear-gradient(top, #149bdf, #0480be);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#149bdf', endColorstr='#0480be', GradientType=0);
	-webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: width 0.6s ease;
	-moz-transition: width 0.6s ease;
	-ms-transition: width 0.6s ease;
	-o-transition: width 0.6s ease;
	transition: width 0.6s ease;
}
.progress-striped .bar {
	background-color: #149bdf;
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	-webkit-background-size: 40px 40px;
	-moz-background-size: 40px 40px;
	-o-background-size: 40px 40px;
	background-size: 40px 40px;
}
.progress.active .bar {
	-webkit-animation: progress-bar-stripes 2s linear infinite;
	-moz-animation: progress-bar-stripes 2s linear infinite;
	animation: progress-bar-stripes 2s linear infinite;
}
.progress-danger .bar {
	background-color: #dd514c;
	background-image: -moz-linear-gradient(top, #ee5f5b, #c43c35);
	background-image: -ms-linear-gradient(top, #ee5f5b, #c43c35);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#c43c35));
	background-image: -webkit-linear-gradient(top, #ee5f5b, #c43c35);
	background-image: -o-linear-gradient(top, #ee5f5b, #c43c35);
	background-image: linear-gradient(top, #ee5f5b, #c43c35);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ee5f5b', endColorstr='#c43c35', GradientType=0);
}
.progress-danger.progress-striped .bar {
	background-color: #ee5f5b;
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-success .bar {
	background-color: #5eb95e;
	background-image: -moz-linear-gradient(top, #62c462, #57a957);
	background-image: -ms-linear-gradient(top, #62c462, #57a957);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#57a957));
	background-image: -webkit-linear-gradient(top, #62c462, #57a957);
	background-image: -o-linear-gradient(top, #62c462, #57a957);
	background-image: linear-gradient(top, #62c462, #57a957);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#62c462', endColorstr='#57a957', GradientType=0);
}
.progress-success.progress-striped .bar {
	background-color: #62c462;
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-info .bar {
	background-color: #4bb1cf;
	background-image: -moz-linear-gradient(top, #5bc0de, #339bb9);
	background-image: -ms-linear-gradient(top, #5bc0de, #339bb9);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#339bb9));
	background-image: -webkit-linear-gradient(top, #5bc0de, #339bb9);
	background-image: -o-linear-gradient(top, #5bc0de, #339bb9);
	background-image: linear-gradient(top, #5bc0de, #339bb9);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5bc0de', endColorstr='#339bb9', GradientType=0);
}
.progress-info.progress-striped .bar {
	background-color: #5bc0de;
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-warning .bar {
	background-color: #faa732;
	background-image: -moz-linear-gradient(top, #fbb450, #f89406);
	background-image: -ms-linear-gradient(top, #fbb450, #f89406);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
	background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
	background-image: -o-linear-gradient(top, #fbb450, #f89406);
	background-image: linear-gradient(top, #fbb450, #f89406);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fbb450', endColorstr='#f89406', GradientType=0);
}
.progress-warning.progress-striped .bar {
	background-color: #fbb450;
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.accordion {
	margin-bottom: 18px;
}
.accordion-group {
	margin-bottom: 2px;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.accordion-heading {
	border-bottom: 0;
}
.accordion-heading .accordion-toggle {
	display: block;
	padding: 8px 15px;
}
.accordion-inner {
	padding: 9px 15px;
	border-top: 1px solid #e5e5e5;
}
.carousel {
	position: relative;
	margin-bottom: 18px;
	line-height: 1;
}
.carousel-inner {
	overflow: hidden;
	width: 100%;
	position: relative;
}
.carousel .item {
	display: none;
	position: relative;
	-webkit-transition: 0.6s ease-in-out left;
	-moz-transition: 0.6s ease-in-out left;
	-ms-transition: 0.6s ease-in-out left;
	-o-transition: 0.6s ease-in-out left;
	transition: 0.6s ease-in-out left;
}
.carousel .item>img {
	display: block;
	line-height: 1;
}
.carousel .active, .carousel .next, .carousel .prev {
	display: block;
}
.carousel .active {
	left: 0;
}
.carousel .next, .carousel .prev {
	position: absolute;
	top: 0;
	width: 100%;
}
.carousel .next {
	left: 100%;
}
.carousel .prev {
	left: -100%;
}
.carousel .next.left, .carousel .prev.right {
	left: 0;
}
.carousel .active.left {
	left: -100%;
}
.carousel .active.right {
	left: 100%;
}
.carousel-control {
	position: absolute;
	top: 40%;
	left: 15px;
	width: 40px;
	height: 40px;
	margin-top: -20px;
	font-size: 60px;
	font-weight: 100;
	line-height: 30px;
	color: #ffffff;
	text-align: center;
	background: #222222;
	border: 3px solid #ffffff;
	-webkit-border-radius: 23px;
	-moz-border-radius: 23px;
	border-radius: 23px;
	opacity: 0.5;
	filter: alpha(opacity=50);
}
.carousel-control.right {
	left: auto;
	right: 15px;
}
.carousel-control:hover {
	color: #ffffff;
	text-decoration: none;
	opacity: 0.9;
	filter: alpha(opacity=90);
}
.carousel-caption {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	padding: 10px 15px 5px;
	background: #333333;
	background: rgba(0, 0, 0, 0.75);
}
.carousel-caption h4, .carousel-caption p {
	color: #ffffff;
}
.hero-unit {
	padding: 60px;
	margin-bottom: 30px;
	background-color: #eeeeee;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
}
.hero-unit h1 {
	margin-bottom: 0;
	font-size: 60px;
	line-height: 1;
	color: inherit;
	letter-spacing: -1px;
}
.hero-unit p {
	font-size: 18px;
	font-weight: 200;
	line-height: 27px;
	color: inherit;
}
.pull-right {
	float: right;
}
.pull-left {
	float: left;
}
.hide {
	display: none;
}
.show {
	display: block;
}
.invisible {
	visibility: hidden;
}

</style>
</head>
<body>
</body>
</html>