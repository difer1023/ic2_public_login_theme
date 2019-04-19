<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<link rel="stylesheet" href="${css_folder}/adminlte/font-awesome/css/font-awesome.min.css">
	  <!-- Ionicons -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/ionicons.min.css">
	  
	  <!-- Theme style -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/AdminLTE.css?v1.1">
	  <!-- AdminLTE Skins. Choose a skin from the css/skins
	   folder instead of downloading all of them to reduce the load. -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/_all-skins.min.css">
	<link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        

	${theme.include(top_head_include)}
	
	<!-- jQuery 3 -->
	<script src="${javascript_folder}/jquery-3.3.1.min.js"></script>
</head>

<body class="${css_class} ic2 hold-transition login-page">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<#if is_signed_in && admin_user>
	<@liferay.dockbar />
</#if>

<#assign imagen_fondo = layout.getExpandoBridge().getAttribute("imagenFondo") >
<#if imagen_fondo>
	<div class="background-image">
		<img src="${images_folder}/background-2.png">
	</div>
</#if>

<div class="container-fluid" id="wrapper">
	<div id="content">

		<#if selectable>
			${theme.include(content_include)}
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			${theme.wrapPortlet("portlet.ftl", content_include)}
		</#if>
	</div>
</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

<!-- AdminLTE App -->
<script src="${javascript_folder}/adminlte/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="${javascript_folder}/adminlte/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="${javascript_folder}/adminlte/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${javascript_folder}/adminlte/jquery-jvectormap-world-mill-en.js"></script>
<!-- ChartJS -->
<script src="${javascript_folder}/adminlte/Chart.min.js"></script>

</body>

</html>