<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <style>
      .center{
        font-family: "Helvetica";
        text-align:center;
        margin-top: 50px;
      }
      table {
        width:100%;
        border-collapse: collapse;
      }

      table, th, td {
        border: 1px solid black;
      }
      .download{
        width: 450px;
        height: 50px
      }
    </style>
  <body>
    <script type="text/javascript">
      <xsl:text>
        function download(){
          swal({
              title: "Good job!",
              text: "You clicked the button!",
              icon: "success",
            });
          window.location.href = "http://localhost:80/?download=true";
        }
      </xsl:text>
    </script>
    <div class="center">
      <h2>Shipment information</h2>
      <table class="table">
        <tr bgcolor="#f2f2f2">
          <th>Shipment Number</th>
          <th>Shipment Type</th>
          <th>Shipment Status</th>
          <th>Tradelane Code</th>
          <th>Confirm IODT</th>
        </tr>
        <tr>
          <td><xsl:value-of select="shipmentInfo/shipmentNumber"/></td>
          <td><xsl:value-of select="shipmentInfo/shipmentType"/></td>
          <td><xsl:value-of select="shipmentInfo/shipmentStatus"/></td>
          <td><xsl:value-of select="shipmentInfo/tradeLaneCde"/></td>
          <td><xsl:value-of select="shipmentInfo/confirmIodt"/></td>
        </tr>
      </table>
      <br/>
      <br/>
      <br/>
      <button class="download" onclick="download()">Download excel</button>
    </div>
  </body>
  </html>
</xsl:template>>

</xsl:stylesheet>