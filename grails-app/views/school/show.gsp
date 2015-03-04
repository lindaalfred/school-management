<%@ page import="com.meemeep.portal.School"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="School" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
    <g:link class="create" action="create">
		<g:message code="default.new.label" args="[entityName]" />
	</g:link>
	<div class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list">
			<li class="fieldcontain">School Name:<g:fieldValue bean="${schoolInstance}" field="name" /></li>
		    <li class="fieldcontain">School Code:<g:fieldValue bean="${schoolInstance}" field="code" /></li>
		    <li class="fieldcontain">School Address:<g:fieldValue bean="${schoolInstance}" field="address" /></li>
		    <li class="fieldcontain">School EmailDomain:<g:fieldValue bean="${schoolInstance}" field="emailDomain" /></li>
		</ol>
		<g:form>
			<fieldset class="buttons">
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
