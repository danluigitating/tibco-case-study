<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <script type="text/javascript">
      <xsl:text>
        function download(){
          window.location.href = "http://localhost:80/?download=true";
        }
      </xsl:text>
    </script>
    <h2>Shipment information</h2>
    <table>
      <tr bgcolor="#9acd32">
        <th>shipmentNumber</th>
        <th>shipmentType</th>
        <th>shipmentStatus</th>
        <th>tradeLaneCde</th>
        <th>confirmIodt</th>
      </tr>
      <tr>
        <td><xsl:value-of select="shipmentInfo/shipmentNumber"/></td>
        <td><xsl:value-of select="shipmentInfo/shipmentType"/></td>
        <td><xsl:value-of select="shipmentInfo/shipmentStatus"/></td>
        <td><xsl:value-of select="shipmentInfo/tradeLaneCde"/></td>
        <td><xsl:value-of select="shipmentInfo/confirmIodt"/></td>
      </tr>
    </table>

    <button onclick="download()">download excel</button>

  </body>
  </html>
</xsl:template>>

</xsl:stylesheet>