<%@ page import="com.meemeep.portal.School"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">

<title>Add New School Details</title>
</head>
<body>
	<div class="nav" role="navigation">
       <g:link class="list" action="list">List of Schools</g:link>
	</div>
	<div id="create-school" class="content scaffold-create" role="main">
		<h1>Create School</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:form action="save">
			<fieldset class="form">
				<g:render template="form" />
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.create.label')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
