<#--
This file allows you to override and define new FreeMarker variables.
-->
<#assign serviceContext = staticUtil["com.liferay.portal.service.ServiceContextThreadLocal"].getServiceContext()>
<#assign themeDisplay = serviceContext.getThemeDisplay() />
<#assign user = themeDisplay.getUser() />
<#assign profilePic = user.getPortraitURL(themeDisplay) />
<#assign roles =user.getRoles()/>
<#assign admin_user =false/>
<#list roles as role>
	<#if role.getName() == "Administrator">
		<#assign admin_user =true/>
		
	</#if>
	
</#list>