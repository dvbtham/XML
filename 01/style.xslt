<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Danh sách nhân viên</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Số ID</th>
        <th style="text-align:left">Họ Tên</th>
        <th style="text-align:left">Ngày sinh</th>
        <th style="text-align:left">Quê quán</th>
      </tr>
      <xsl:for-each select="danhsach/nhanvien/thongtincanhan">
      <tr>
        <td><xsl:value-of select="soid"/></td>
        <td><xsl:value-of select="ten"/></td>
        <td><xsl:value-of select="ngaysinh"/></td>
        <td><xsl:value-of select="quequan"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>