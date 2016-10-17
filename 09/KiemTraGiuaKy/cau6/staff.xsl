<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="StaffsManagement">
	<html>
		<style type="text/css">
				table{
						margin: auto;
						width: 500px;
						text-align: center;
				}
				.header-top th{
						text-transform: uppercase;
						padding: 10px;
				}
				th.name{
					padding: 0px 60px;
				}
				.header-top{
				background-color: orange;
				color: white;
				}
		</style>
	<body>
		<h2 align="center">STAFFS MANAGEMENT</h2>
		 <table border="1">
			 <tr class="header-top">
				 <th>code</th>
				 <th class="name">name</th>
				 <th>gender</th>
				 <th>birthday</th>
				 <th>position</th>
				 <th>department</th>
				 <th>salary</th>
				
			 </tr>

				 <xsl:for-each select="Staff">
				 <xsl:if test="Staff_Gender[.='Male']">
					 	<tr>
						 <td><xsl:value-of select="Staff_Code"/></td>
						 <td><xsl:value-of select="Staff_Name"/></td>
						 <td><xsl:value-of select="Staff_Gender"/></td>
						 <td><xsl:value-of select="Staff_Birthday"/></td>
						 <td><xsl:value-of select="Staff_Position"/></td>
						 <td><xsl:value-of select="Staff_Department"/></td>
						 <td><xsl:value-of select="Staff_Salary"/></td>
				 		</tr>
			 		</xsl:if>
		 		</xsl:for-each>
		 </table>
		 
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>