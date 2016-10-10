<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="QuanLySinhVien">
	<html>
	<body>
		 	<table border="1">
			 <tr>
				 <th>Mã sinh viên</th>
				 <th>Họ</th>
				 <th>Tên</th>
				 <th>Phái</th>
				 <th>Ngày sinh</th>
				 <th>Nơi sinh</th>
				 <th>Mã khoa</th>
				 <th>Học bổng</th>
			 </tr>
				 <xsl:for-each select="SinhVien">
				 	<xsl:if test="HocBong[not(. = 0)]"> 
						 <tr>
						 		<td><xsl:value-of select="MaSV"/></td>
							 	<td><xsl:value-of select="HoSV"/></td>
							 	<td><xsl:value-of select="TenSV"/></td>
							 	<td><xsl:value-of select="Phai"/></td>
							 	<td><xsl:value-of select="NgaySinh"/></td>
							 	<td><xsl:value-of select="NoiSinh"/></td>
						  	<td><xsl:value-of select="MaKhoa"/></td>
						 		<td><xsl:value-of select="HocBong"/></td>
						 	</tr>
				 		</xsl:if>
		 		</xsl:for-each>

		 </table>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>