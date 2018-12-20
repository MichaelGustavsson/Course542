<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="flights-html.xsl"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:fn="http://www.w3.org/2005/xpath-functions"
  xmlns:cs="http://XsltDemoExtensions.XsltFunctions/1.0">
	
	<xsl:template match="Flights">
		<!-- Paste HTML template here -->
		<html>
			<head>
				<title>Learning Tree Travel - Airline Flights</title>
			</head>
			<body>
				<div align="center">
					<img src="ltreeLogo.gif" width="148" height="38" alt="Learning Tree Logo" border="0"/>
					<span style="font-size:2em;font-weight:bold;">Learning Tree Travel</span>
				</div>
				<div align="center">
					<h2>Course 542 - Airline Flight Information</h2>
					<p>We found the following flights </p>
          <h4>
            <xsl:value-of select="cs:Greeting()"></xsl:value-of>
          </h4>
				</div>
				<hr/>
				<div align="center">
					<table cellpadding="10" cellspacing="0">
						<tbody>
							<tr style="background-color:#d9e6ef;">
								<th>Flight</th>
								<th>Depart</th>
								<th>Arrive</th>
								<th>Miles</th>
								<th>Destination</th>
							</tr>
							
					<!-- Put the flight data here -->
					<xsl:apply-templates select="Flight"/>

						</tbody>
					</table>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<!-- Put additional template match here -->
<xsl:template match="Flight">
   <tr>
	<td>
	   <xsl:value-of select="Airline"/><br/>
	   Flight: <xsl:value-of select="Number"/>
	</td>
	<td>
	   <xsl:value-of select="Origin"/>
	</td>
	<td>
	   <xsl:value-of select="Destination"/>
	</td>
	<td>
	   <xsl:value-of select="Miles"/>
	</td>
	<td>
	   <xsl:value-of select="Destination"/>
	</td>
   </tr>
</xsl:template>

</xsl:stylesheet>
