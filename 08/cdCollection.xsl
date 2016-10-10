<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="CDCollection">
	<html>
		<style type="text/css">
				table{
						margin: auto;
						width: 500px;
				}
				.header-top{
				background-color: orange;
				color: white;
				}
		</style>
	<body>
		<h2 align="center">My CD Collection</h2>
		 <table border="1">
			 <tr class="header-top">
				 <th>TITLE</th>
				 <th>ARTIST</th>
				
			 </tr>
				 <xsl:for-each select="cd">
				 <tr>
				 <td><xsl:value-of select="title"/></td>
				 <td><xsl:value-of select="artist"/></td>
				
			 </tr>
		 		</xsl:for-each>
		 </table>
		 
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>