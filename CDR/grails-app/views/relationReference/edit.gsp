<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Edit Relation Reference</title>
</head>
<body>
<div class="body">
    <h1>Edit Relation Reference</h1>
    <div class="nav">
        <span class="menuButton"><g:link class="list" action="list">Relation Reference List</g:link></span>
    </div>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${relationReference}">
        <div class="errors">
            <g:renderErrors bean="${relationReference}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form controller="relationReference" method="post">
        <input type="hidden" name="id" value="${relationReference?.id}"/>
        <input type="hidden" name="version" value="${relationReference?.version}"/>
        <div class="dialog">
            <table>
                <tbody>

                    <tr class='prop'>
                        <td valign='top' class='name'>
                            <label for='name'>Name:<span class="required">*</span></label>
                        </td>
                        <td valign='top' class='value ${hasErrors(bean: relationReference, field: 'name', 'errors')}'>
                            <input type="text" id='name' name='name' value="${fieldValue(bean: relationReference, field: 'name')}"/>
                        </td>
                    </tr>

                    <tr class='prop'>
                        <td valign='top' class='name'>
                            <label for='description'>Description:</label>
                        </td>
                        <td valign='top' class='value ${hasErrors(bean: relationReference, field: 'description', 'errors')}'>
                            <input type="text" id='description' name='description' value="${fieldValue(bean: relationReference, field: 'description')}"/>
                        </td>
                    </tr>

                    <tr class='prop'>
                        <td valign='top' class='name'>
                            <label for='relations'>Relations:</label>
                        </td>
                        <td valign='top' class='value ${hasErrors(bean: relationReference, field: 'relations', 'errors')}'>

                            <ul>
                                <g:each var='r' in='${relationReference?.relations?}'>
                                    <li><g:link controller='relation' action='show' id='${r.id}'>${r}</g:link></li>
                                </g:each>
                            </ul>
                            <g:link controller='relation' params='["relationReference.id":relationReference?.id]' action='create'>Add Relation</g:link>

                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button"><g:actionSubmit class="save" value="Update"/></span>
            <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
        </div>
    </g:form>
</div>
</body>
</html>