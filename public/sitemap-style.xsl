<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  
  <!-- Template for Sitemap Index -->
  <xsl:template match="/sitemap:sitemapindex">
    <html>
      <head>
        <title>Sitemap Index</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 40px; background: #f5f5f5; }
          .container { max-width: 1200px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; }
          h1 { color: #333; border-bottom: 3px solid #0066cc; padding-bottom: 10px; }
          ul { list-style: none; padding: 0; }
          li { margin: 10px 0; padding: 15px; background: #f5f5f5; border-radius: 4px; }
          a { color: #0066cc; text-decoration: none; font-weight: bold; }
          a:hover { text-decoration: underline; }
          .date { color: #666; font-size: 0.9em; margin-left: 10px; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>Sitemap Index</h1>
          <p>This sitemap index contains <xsl:value-of select="count(sitemap:sitemap)"/> sitemaps.</p>
          <ul>
            <xsl:for-each select="sitemap:sitemap">
              <li>
                <a href="{sitemap:loc}">
                  <xsl:value-of select="sitemap:loc"/>
                </a>
                <span class="date">(Last modified: <xsl:value-of select="sitemap:lastmod"/>)</span>
              </li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
  
  <!-- Template for URL Sitemap -->
  <xsl:template match="/sitemap:urlset">
    <html>
      <head>
        <title>XML Sitemap</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 40px; background: #f5f5f5; }
          .container { max-width: 1200px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; }
          h1 { color: #333; border-bottom: 3px solid #0066cc; padding-bottom: 10px; }
          table { width: 100%; border-collapse: collapse; margin-top: 20px; }
          th { background: #0066cc; color: white; padding: 12px; text-align: left; }
          td { padding: 12px; border-bottom: 1px solid #ddd; }
          tr:hover { background: #f5f5f5; }
          a { color: #0066cc; text-decoration: none; word-break: break-all; }
          a:hover { text-decoration: underline; }
          .date { color: #666; font-size: 0.9em; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>XML Sitemap</h1>
          <p>This sitemap contains <xsl:value-of select="count(sitemap:url)"/> URLs.</p>
          <table>
            <thead>
              <tr>
                <th style="width: 70%">URL</th>
                <th style="width: 30%">Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:url">
                <tr>
                  <td>
                    <a href="{sitemap:loc}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td class="date">
                    <xsl:value-of select="sitemap:lastmod"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>