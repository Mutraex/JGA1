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
        <h1>Favorite Movies</h1>
        <xsl:for-each select="movies/movie">
          <xsl:sort select="title"/>
          <xsl:value-of select="title"/>
          <p/>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
