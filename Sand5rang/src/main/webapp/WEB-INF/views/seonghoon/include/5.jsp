<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*------------------------------------------------------------------
Bootstrap Admin Template by EGrappler.com
------------------------------------------------------------------*/



/*------------------------------------------------------------------
[1. Shortcuts / .shortcuts]
*/

.shortcuts {
	text-align: center;	
}

.shortcuts .shortcut { 
	width: 22.50%;
	display: inline-block;
	padding: 12px 0;
	margin: 0 .9% 1em;
	vertical-align: top;	
	
	text-decoration: none;
	
	background: #f9f6f1;
	
	border-radius: 5px;
}

.shortcuts .shortcut .shortcut-icon {
	margin-top: .25em;
	margin-bottom: .25em;
	
	font-size: 32px;
	color: #545454;
}

.shortcuts .shortcut:hover {
	background: #00ba8b;
}

.shortcuts .shortcut:hover span{
	color: #fff;
}

.shortcuts .shortcut:hover .shortcut-icon {
	color: #fff;
}

.shortcuts .shortcut-label {
	display: block;
	
	font-weight: 400;
	color: #545454;
}



/*------------------------------------------------------------------
[2. Stats / .stats]
*/

.stats {
	width: 100%;
	display: table;
	padding: 0 0 0 10px;
	margin-top: .5em;
	margin-bottom: 1.9em;
}

.stats .stat {
	display: table-cell;
	width: 40%;
	vertical-align: top;
	
	font-size: 11px;
	font-weight: bold;
	color: #999;
}

.stat-value {
	display: block;
	margin-bottom: .55em;
	
	font-size: 30px;
	font-weight: bold;
	letter-spacing: -2px;
	color: #444;
}

.stat-time {
	text-align: center;
	padding-top: 1.5em;
}

.stat-time .stat-value {
	color: #19bc9c;
	font-size: 40px;
}

.stats #donut-chart {
	height: 100px;
	margin-left: -20px;	
}





/*------------------------------------------------------------------
[3. News Item / .news-items]
*/

.news-items {
	margin: 1em 0 0;
}

.news-items li {
	display: table;
	padding: 0 2em 0 1.5em;
	padding-bottom: 1em;
	margin-bottom: 1em;
	border-bottom: 1px dotted #CCC;
}

.news-items li:last-child { padding-bottom: 0; border: none; }

.news-item-date {
	display: table-cell;
}

.news-item-detail {
	display: table-cell;
}

.news-item-title {
	font-size: 13px;
	font-weight: 600;
}

.news-item-date {
	width: 75px;
	vertical-align: middle;
	text-align: center;
	
}

.news-item-day {
	display: block;
	margin-bottom: .25em;
	
	font-size: 24px;
	color: #888;
}

.news-item-preview {
	margin-bottom: 0;
	
	color: #777;
}

.news-item-month {
	display: block;
	padding-right: 1px;	
	
	font-size: 12px;
	font-weight: 600;
	color: #888;
}



/*------------------------------------------------------------------
[4. Action Table / .action-table]
*/

.action-table .btn-small {
	padding: 4px 5px 5px;
	
	font-size: 10px;
}

.action-table .td-actions { 
	width: 80px; 
	
	text-align: center; 
}

	.action-table .td-actions .btn { 
		margin-right: .5em;		
	}
	
	.action-table .td-actions .btn:last-child { 
		margin-rigth: 0; 		
	}
	
	
	
#big_stats 
{ 
	width: 100%; 
	display: table;
	margin-top: 1.5em;
	
	
}

.big-stats-container .widget-content {
	border:0;
}

#big_stats .stat
{
	width: 25%;
	height: 90px;
	text-align: center;
	display: table-cell;
	padding: 0;
	position: relative;
	
	border-right: 1px solid #CCC;
	border-left: 1px solid #FFF;
}
#big_stats  i { font-size:30px; display:block; line-height: 40px; color:#b2afaa;}
#big_stats .stat:hover i {color:#19bc9c;}

h6.bigstats{margin: 20px;
border-bottom: 1px solid #eee;
padding-bottom: 20px;
margin-bottom: 26px;}

#big_stats .stat:first-child {
	border-left: none;
}

#big_stats .stat:last-child {
	border-right: none;
}

#big_stats .stat h4
{
	font-size: 11px;
	font-weight: bold;
	color: #777;
	margin-bottom: 1.5em;
}

#big_stats .stat .value
{
	font-size: 45px;
	font-weight: bold;
	color: #545454;
	line-height: 1em;
}



@media all and (max-width: 950px) and (min-width: 1px) {
	
	#big_stats {
		display: block;
		margin-bottom: -40px;
	}
	
	#big_stats .stat {
		width: 49%;
		display: block;
		margin-bottom: 3em;
		float: left;
	}	
	
	#big_stats .stat:nth-child(2) {
		border-right: none;
	}
	
	#big_stats .stat:nth-child(3) {
		border-left: none;
	}
	
}

@media (max-width: 767px) {
	#big_stats .stat .value {
		font-size: 40px;
	}
}
	
	
	
	
@media (max-width: 979px) {
	
	.shortcuts .shortcut {
		width: 31%;
	}
}


@media (max-width: 480px) {
	
	.stats .stat {
		
		margin-bottom: 3em;
	}
	
	.stats .stat .stat-value {
		margin-bottom: .15em;
		
		font-size: 20px;
	}
	
	.stats {
		float: left;
		
		display: block;
		
		margin-bottom: 0;
	}
	
	#chart-stats {
		margin: 2em 0 1em;		
	}
	
	.shortcuts .shortcut {
		width: 48%;
	}
}

/* 오늘의 재고 CSS */
.bread{
	display:inline-block;
	margin-left : 20px;
}
.vegetable{
	display:inline-block;
	margin-left : 20px;
}
.meat{
	display:inline-block;
	margin-left : 20px;
}
.sauce{
	display:inline-block;
	margin-left : 20px;
}
.cheese{
	display:inline-block;
	margin-left : 20px;
}

.stock_style{
	width:80px;
	height:10px;
	margin-top:5px;
	font-weight:900;
}
.expiration_style{
	width:80px;
	height:10px;
	margin-top:5px;
	background-color: white;	
	font-weight:900;
}
input[type=number]{
	background-color: white;
	border:none;
}
input[type=text]{
	background-color: white;
	border:none;
}


/* 전체 재고현황 페이지 CSS */
.stockSum{
	margin-top:30px;
	margin-bottom:10px;
	margin-left : 20px;
}

.stockTable1{
	width:600px;
	margin-left:20px;
}

.stockTable2{
	width:1100px;
	margin-left:20px;
}


.st_head th{
	text-align:center;
}
.st_body td{
	text-align:center;
}

/* 제품 판매 현황페이지 CSS*/
.menuModal th{
	text-align:left;
	width:250px;
	height:30px;
}
.menuModal td{
	text-align:center;
	width:100px;
	height:30px;
	color:gray;
	font-weight:900;
}


</style>
</head>
<body>
</body>
</html>