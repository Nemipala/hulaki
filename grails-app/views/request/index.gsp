
<%@ page import="gccount.Request" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'request.label', default: 'Request')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-request" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-request" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-hover">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" width="15%" title="${message(code: 'request.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="request" title="${message(code: 'request.request.label', default: 'Request')}" />
					
						<g:sortableColumn property="response" title="${message(code: 'request.response.label', default: 'Response')}" />
					
						<g:sortableColumn property="username" width="10%" title="${message(code: 'request.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${requestInstanceList}" status="i" var="requestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${requestInstance.id}">${fieldValue(bean: requestInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: requestInstance, field: "request")}</td>
					
						<td>${fieldValue(bean: requestInstance, field: "response")}</td>
					
						<td>${fieldValue(bean: requestInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${requestInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
