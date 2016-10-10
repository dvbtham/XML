<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="students">
	<html>
		<style type="text/css">
			table{
			text-align: center;
			cell-padding:10px;
			}
				.yellow{
					background-color: yellow;
				}
				.red{
					background-color: red;
					color: white;
				}
				.green{
					background-color: green;
					color: white;
				}
		</style>
	<body>
		<!-- câu 2 -->
		 <h2 class="text-center">Câu 2 - Điểm trung bình lớn hơn 50</h2>
		 <table border="1">
			 <tr class="header-top">
				 <th>ID sinh viên</th>
				 <th>Họ tên sinh viên</th>
				 <th>Điểm trung bình</th>
				
			 </tr>
				 <xsl:for-each select="student">
				 	<xsl:if test="GPA[.>50]">
				 	<tr>
						 <td><xsl:value-of select="studentID"/></td>
						 <td><xsl:value-of select="fullname"/></td>
						 <td><xsl:value-of select="GPA"/></td>
			 	  </tr>
				 	</xsl:if>
		 		</xsl:for-each>
		 </table>
		<!-- end câu 2 -->
		<!-- câu 3 -->
		 <h2 class="text-center">Câu 3 Điểm trung bình nhỏ hơn hoặc bằng 50</h2>
		 <table border="1">
			 <tr class="header-top">
				 <th>ID sinh viên</th>
				 <th>Họ tên sinh viên</th>
				 <th>Điểm trung bình</th>
				
			 </tr>
				 <xsl:for-each select="student">
				 	<xsl:if test="GPA[.&lt;=50]">
				 	<tr>
						 <td><xsl:value-of select="studentID"/></td>
						 <td><xsl:value-of select="fullname"/></td>
						 <td><xsl:value-of select="GPA"/></td>
			 	  </tr>
				 	</xsl:if>
		 		</xsl:for-each>
		 </table>
		<!-- end câu 3 -->
		<!-- câu 4 -->
		 <h2 class="text-center">Câu 4</h2>
		 <table border="1">
			 <tr class="header-top">
				 <th>ID sinh viên</th>
				 <th>Họ tên sinh viên</th>
				 <th>Điểm trung bình</th>
				 <th>Xếp loại</th>
				
			 </tr>
				 <xsl:for-each select="student">
				 	<xsl:choose>
						 	<xsl:when test="GPA[.&gt;=80]">
						 		<tr class="red">
									 <td><xsl:value-of select="studentID"/></td>
									 <td><xsl:value-of select="fullname"/></td>
									 <td><xsl:value-of select="GPA"/></td>
									 <td>Giỏi</td>
						 	  </tr>
						 </xsl:when>

						 <xsl:when test="GPA[.&gt;=70]">
						 		<tr class="green">
									 <td><xsl:value-of select="studentID"/></td>
									 <td><xsl:value-of select="fullname"/></td>
									 <td><xsl:value-of select="GPA"/></td>
									 <td>Khá</td>
						 	  </tr>
						 </xsl:when>

						 <xsl:when test="GPA[.&gt;=50]">
						 		<tr class="yellow">
									 <td><xsl:value-of select="studentID"/></td>
									 <td><xsl:value-of select="fullname"/></td>
									 <td><xsl:value-of select="GPA"/></td>
									 <td>Trung bình</td>
						 	  </tr>
						 </xsl:when>

						 <xsl:otherwise>
						 		<tr>
									 <td><xsl:value-of select="studentID"/></td>
									 <td><xsl:value-of select="fullname"/></td>
									 <td><xsl:value-of select="GPA"/></td>
									 <td>Yếu</td>
						 	  </tr>
						 </xsl:otherwise>
						</xsl:choose>
		 		</xsl:for-each>
		 </table>
		<!-- end câu 4 -->

	</body>
	</html>
</xsl:template>
</xsl:stylesheet>