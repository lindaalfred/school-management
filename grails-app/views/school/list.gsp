
<%@ page import="com.meemeep.portal.School"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="School" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<g:link class="create" action="create">
		<g:message code="default.new.label" args="[entityName]" />
	</g:link>
	<div class="content scaffold-list" role="main">
	<h1>
		<g:message code="default.list.label" args="[entityName]" />
	</h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
	<table>
		<thead>
			<tr>

				<g:sortableColumn property="name"
					title="School Name" />

				<g:sortableColumn property="code"
					title="School Code" />

				<g:sortableColumn property="address"
					title="Address" />

				<g:sortableColumn property="emailDomain"
					title="Email Domain" />

			</tr>
		</thead>
			<tbody>
				<g:each in="${schoolInstanceList}" status="i" var="schoolInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${schoolInstance.id}">
								${schoolInstance.name}
							</g:link></td>

						<td>
							${schoolInstance.code}
						</td>

						<td>
							${schoolInstance.address}
						</td>

						<td>
							${schoolInstance.emailDomain}
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${schoolInstanceTotal}" />
		</div>
	</div>
</body>
</html>
