<%--
  This Source Code is the sole property of Delegata, Inc.  All rights reserved.
  User: sholmes
  Date: Jul 1, 2008
  Time: 9:09:05 AM
--%>

<%--<?xml version="1.0" encoding="utf-8"?>--%>
<testResult id="${ci.id}">
    <%-- all cis --%>
    <author>${ci.author}</author>
    <name>${ci.name}</name>
    <ownerEmail>${ci.ownerEmail}</ownerEmail>
    <ownerName>${ci.ownerName}</ownerName>
    <description>${ci.description}</description>
    <environments>
        <g:each in="${ci.environments}">
            <environment id="${it.id}"/>
        </g:each>
    </environments>
    <parent id="${ci.parent?.id}"/>
    <%-- end all cis --%>

    <%-- ci specific cis --%>
    <testResultType id="${ci.testResultType.id}"/>
    <%-- end ci specific --%>


    <statuses>
        <g:each in="${ci.statuses}">
            <status id="${it.id}">
                <startDate>${it.startDate}</startDate>
                <endDate>${it.endDate}</endDate>
                <reference id="${it.reference.id}">
                    <name>${it.reference.name}</name>
                </reference>
            </status>
        </g:each>
    </statuses>
    <thisRelations>
        <g:each in="${ci.thisRelations}">
            <relation id="${it.id}">
                <reference id="${it.reference.id}">
                    <name>${it.reference.name}</name>
                </reference>
                <thisCI id="${it.thisCI.id}">
                    <name>${it.thisCI.name}</name>
                </thisCI>
                <thatCI id="${it.thatCI.id}">
                    <name>${it.thatCI.name}</name>
                </thatCI>
            </relation>
        </g:each>
    </thisRelations>
    <thatRelations>
        <g:each in="${ci.thatRelations}">
            <relation id="${it.id}">
                <reference id="${it.reference.id}">
                    <name>${it.reference.name}</name>
                </reference>
                <thisCI id="${it.thisCI.id}">
                    <name>${it.thisCI.name}</name>
                </thisCI>
                <thatCI id="${it.thatCI.id}">
                    <name>${it.thatCI.name}</name>
                </thatCI>
            </relation>
        </g:each>
    </thatRelations>
</testResult>