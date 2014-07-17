<%@ page import="gccount.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'request', 'error')} required">
	<label for="request">
		<g:message code="user.request.label" default="Request" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="request" required="" value="${userInstance?.request}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'response', 'error')} required">
	<label for="response">
		<g:message code="user.response.label" default="Response" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="response" required="" value="${userInstance?.response}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

