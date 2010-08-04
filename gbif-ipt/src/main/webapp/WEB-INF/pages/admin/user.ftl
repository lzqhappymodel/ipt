<#include "/WEB-INF/pages/inc/header.ftl">
	<title><@s.text name="admin.user.title"/></title>
<#include "/WEB-INF/pages/inc/menu.ftl">

<h1><@s.text name="admin.user.title"/></h1>

<p><@s.text name="admin.user.intro"/></p>
<p><@s.text name="admin.user.intro2"/></p>
 
<#include "/WEB-INF/pages/macros/forms.ftl">
<@s.form cssClass="topForm half" action="user.do" method="post">
	<@s.hidden name="id" value="${user.email!}" required="true"/>

	<@input name="user.email" disabled=id?has_content/>  
	<@input name="user.firstname" />  
	<@input name="user.lastname" />  
	<@input name="user.password" />
	<@select name="user.role" value=user.role options={"User":"user.roles.user", "Manager":"user.roles.manager", "Admin":"user.roles.admin"}/>
	  	
  <div class="buttons">
 	<@s.submit name="save" key="button.save"/>
 	<@s.submit name="delete" key="button.delete"/>
 	<@s.submit name="cancel" key="button.cancel"/>
  </div>	
</@s.form>

<#include "/WEB-INF/pages/inc/footer.ftl">