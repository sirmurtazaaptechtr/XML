<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/CATALOG">
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Plants - Welcome</title>
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
        <table class="table table-dark table-hover">
            <thead>
                <tr>
                    <th>Sr. #</th>
                    <th>Common Name</th>
                    <th>Botanical Name</th>
                    <th>Zone</th>
                    <th>Light</th>
                    <th>Price</th>
                    <th>Availability</th>
                </tr>
            </thead>
            <tbody>
            <xsl:for-each select="PLANT">
            <tr>
                <td>. </td>
                <td><xsl:value-of select="COMMON" /></td>
                <td><xsl:value-of select="BOTANICAL" /></td>
                <td><xsl:value-of select="ZONE" /></td>
                <td><xsl:value-of select="LIGHT" /></td>
                <td><xsl:value-of select="PRICE" /></td>
                <td><xsl:value-of select="AVAILABILITY" /></td>
            </tr>
            </xsl:for-each>
                
            </tbody>
        </table>

        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>