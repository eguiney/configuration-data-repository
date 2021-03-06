  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show User</title>
    </head>
    <body>
        <div class="body">
            <h1>Show User</h1>
            <div class="nav">
                %{--<span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>--}%
                %{--<span class="menuButton"><g:link class="list" action="list">JsecUser List</g:link></span>--}%
                <span class="menuButton"><g:link class="create" action="create">New User</g:link></span>
            </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        %{--<tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${jsecUser.id}</td>
                            
                        </tr>--}%
                    
                        <tr class="prop">
                            <td valign="top" class="name">Username:</td>
                            
                            <td valign="top" class="value">${jsecUser.username}</td>
                            
                        </tr>
                    
                        %{--<tr class="prop">
                            <td valign="top" class="name">Password Hash:</td>
                            
                            <td valign="top" class="value">${jsecUser.passwordHash}</td>
                            
                        </tr>--}%
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form controller="jsecUser">
                    <input type="hidden" name="id" value="${jsecUser?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
