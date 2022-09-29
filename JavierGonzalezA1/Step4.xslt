<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Favorite Movies</title>
      </head>
      <body>
        <h1>
          <font face="arial" color="#a21c1c">Favorite Movies</font>
        </h1>
        <table border="1" bordercolor="brown" cellpadding="3" cellspacing="1" style="background-color:#fff68f">
          <tr>
            <td>ID</td>
            <td>Title</td>
            <td>Director</td>
            <td>Year</td>
          </tr>
          <xsl:apply-templates select="movies/movie">
            <xsl:sort select="title"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="movie">
    <tr>
      <td>
        <xsl:value-of select="@id"/>
      </td>
      <td>
        <xsl:value-of select="title"/>
      </td>
      <td>
        <xsl:value-of select="director"/>
      </td>
      <td>
        <xsl:value-of select="year"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

