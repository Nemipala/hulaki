<%@ page import="gccount.Request" %>



<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="request.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${requestInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'request', 'error')} required">
	<label for="request">
		<g:message code="request.request.label" default="Request" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="request" required="" id="requestUrl" value="${requestInstance?.request}"/>
    <button type="button" name="requestUrl" class="buttons" onClick="getData();"> Request</button>
</div>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'response', 'error')} required">
	<label for="response">
		<g:message code="request.response.label" default="Response" />
		<span class="required-indicator">*</span>
	</label>
	<textArea name="response" required="" id="response" cols="300" rows="100" value="${requestInstance?.response}"></textArea>

</div>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="request.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="amamaharjan"/>

</div>
