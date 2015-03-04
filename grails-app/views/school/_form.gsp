<%@ page import="com.meemeep.portal.School"%>
<div
	class="fieldcontain">
	<label for="name"> School Name <span class="required-indicator">*</span></label>
	<g:textField name="name" maxlength="150" value="${schoolInstance?.name}" />
</div>

<div
	class="fieldcontain">
	<label for="code"> School Code <span class="required-indicator">*</span></label>
	<g:textField name="code" maxlength="10" value="${schoolInstance?.code}" />
</div>

<div
	class="fieldcontain">
	<label for="address">Address <span class="required-indicator">*</span></label>
	<g:textField name="address" maxlength="150" required="" value="${schoolInstance?.address}" />
</div>

<div
	class="fieldcontain">
	<label for="emailDomain">Email Domain <span class="required-indicator">*</span></label>
	<g:textField name="emailDomain" maxlength="100" value="${schoolInstance?.emailDomain}" />
</div>

