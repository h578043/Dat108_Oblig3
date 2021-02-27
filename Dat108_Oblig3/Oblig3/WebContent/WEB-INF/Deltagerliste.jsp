<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<title>Deltagerliste</title>
</head>
<body>
	<h2>Deltagerliste</h2>
	<table class="pure-table">
		<tr bgcolor="#cccccc">
			<th>Kj�nn</th>
			<th align="left">Navn</th>
			<th align="left">Mobil</th>
		</tr>
		
		<c:forEach var="d" items="${liste}">
		<c:choose>
		<c:when test="${d.mobilnr == mobilnr2}">
			<tr bgcolor="#aaffaa">
				<td align="center"><c:choose>
						<c:when test="${d.kjonn == 'mann'}">
        &#9794; 
        <br />
						</c:when>
						<c:otherwise>
       &#9792;
        <br />
						</c:otherwise>
					</c:choose></td>
				<td>${d.fornavn} ${d.etternavn}</td>
				<td>${d.mobilnr}</td>
			</tr>
		</c:when>
		<c:otherwise>
		<tr bgcolor="#ffffff">
				<td align="center"><c:choose>
						<c:when test="${d.kjonn == 'mann'}">
        &#9794; 
        <br />
						</c:when>
						<c:otherwise>
       &#9792;
        <br />
						</c:otherwise>
					</c:choose></td>
				<td>${d.fornavn} ${d.etternavn}</td>
				<td>${d.mobilnr}</td>
			</tr>
		
		</c:otherwise>
		</c:choose>
		</c:forEach>
	</table>
	<p>
		<a href="loggut">Ferdig</a>
	</p>
</body>
</html>