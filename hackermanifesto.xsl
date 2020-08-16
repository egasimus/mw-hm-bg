<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/Book">
    <html>

      <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="noodel.css" />
        <link rel="stylesheet" href="hackermanifesto.css" />
      </head>

      <body>

        <div id="root">
          <div class="noode">

            <xsl:value-of select="@Author"/>
            <h1><xsl:value-of select="@Title"/></h1>

            <xsl:for-each select="Chapter">
              <div class="Chapter noode">
                <h2 class="Title"><xsl:value-of select="@Title"/></h2>

                <xsl:for-each select="Paragraph">
                  <div class="noode">
                    <p class="Paragraph">
                      <span class="Number"><xsl:value-of select="@Number" /></span>
                      <xsl:for-each select="Sentence">
                        <span class="Sentence">
                          <xsl:value-of select="." />
                          <xsl:text> </xsl:text>
                        </span>
                      </xsl:for-each>
                    </p>
                  </div>
                </xsl:for-each>

              </div>
            </xsl:for-each>

          </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/noodel@1.3.0/dist/noodel.umd.js"></script>
        <script>new Noodel("#root").mount("#root")</script>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
