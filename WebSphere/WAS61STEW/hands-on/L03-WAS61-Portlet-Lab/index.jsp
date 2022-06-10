<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://ibm.com/portlet/aggregation" prefix="portlet"%>
<%@ page isELIgnored="false" import="java.util.Enumeration"%>
<%@ include file="portlet.css"%>

<head>
<title>AggregationJSP</title>
</head>
<table border="0" CELLPADDING="3" CELLSPACING="8" WIDTH="100%">
	<TR>
		<TD VALIGN="top"><portlet:init
			portletURLPrefix="http://localhost:9081/" portletURLSuffix="">
			<portlet:insert url=".Hello/Hello"
				contentVar="hellocontent" titleVar="hellotitle" windowId="ABC" />
			<portlet:state url=".Hello/Hello" portletMode="edit"
				var="helloedit" windowId="ABC" />
			<portlet:state url=".Hello/Hello" portletMode="view"
				var="helloview" windowId="ABC" />
			<portlet:state url=".Hello/Hello" portletMode="view"
				var="hellomin" windowId="ABC" portletWindowState="minimized" />

			<portlet:insert url=".Hello/HelloJSP" contentVar="jspcontent"
				titleVar="jsptitle" windowId="XYZ" />
			<portlet:state url=".Hello/HelloJSP" portletMode="edit"
				var="jspedit" windowId="XYZ" />
			<portlet:state url=".Hello/HelloJSP" portletMode="view"
				var="jspview" windowId="XYZ" />
			<portlet:state url=".Hello/HelloJSP" portletMode="view"
				var="jspmin" windowId="XYZ" portletWindowState="minimized" />

			<table border="0" width="100%" CELLPADDING="3" CELLSPACING="0"
				CLASS="portletTable" SUMMARY="top">
				<tr>
					<td class="portletTitle">${hellotitle}</td>

					<td class="portletTitleControls"><a href="${helloview}">view</a></td>
					<td class="portletTitleControls"><a href="${helloedit}">edit</a></td>
					<td class="portletTitleControls"><a href="${hellomin}">minimize</a></td>
				</tr>
				<tr>
					<td CLASS="portletBody" COLSPAN="2">${hellocontent}</td>
				</tr>
			</table>

			<BR />

			
		<TD VALIGN="top">
		<table border="0" width="100%" CELLPADDING="3" CELLSPACING="0"
			CLASS="portletTable" SUMMARY="top">
			<tr>
				<td class="portletTitle">${jsptitle}</td>

				<td class="portletTitleControls"><a href="${jspview}">view</a></td>
				<td class="portletTitleControls"><a href="${jspedit}">edit</a></td>
				<td class="portletTitleControls"><a href="${jspmin}">minimize</a></td>
			</tr>
			<tr>
				<td CLASS="portletBody" COLSPAN="2">${jspcontent}</td>
			</tr>
		</table>

		</TD>
	</TR>

</table>

</portlet:init>


