<#macro rootpath><#if (content.rootpath)??>${content.rootpath}<#else></#if></#macro>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Strongly Typed by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="<@rootpath/>assets/css/main.css" />
	</head>
	<body class="<#if (content.layout)?has_content && (content.layout == "no-sidebar")>no-sidebar<#elseif (content.layout)?has_content && (content.layout == "left-sidebar")>left-sidebar<#else>homepage is-preload</#if>">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="/index.html">Strongly Typed</a></h1>
							<p>A responsive HTML5 site template. Manufactured by HTML5 UP. Baked with JBake.</p>

						<#include "menu.ftl">

					</div>
				</section>
