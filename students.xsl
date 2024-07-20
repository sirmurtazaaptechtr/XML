<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/students">
      <html lang="en">
         <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Document</title>
            <!-- Latest compiled and minified CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
            <style>
                table tbody {
                    counter-reset: cnt;
                }
                table tbody tr td:first-child::before {
                    counter-increment: cnt;
                    content: counter(cnt);
                }
            </style>
         </head>
         <body class="container">
            <h1>All Students Data</h1>
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th>Sr.no.</th>
                     <th>Name</th>
                     <th>Email</th>
                     <th>Gender</th>
                  </tr>
               </thead>
               <tbody>
                  <xsl:for-each select="student">
                     <tr>
                        <td>.</td>
                        <td>
                           <xsl:value-of select="name" />
                        </td>
                        <td>
                           <xsl:value-of select="email" />
                        </td>
                        <td>
                           <xsl:value-of select="gender" />
                        </td>
                     </tr>
                  </xsl:for-each>
               </tbody>
            </table>
            <!-- Latest compiled JavaScript -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" />
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>