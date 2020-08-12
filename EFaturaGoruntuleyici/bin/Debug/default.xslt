<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
  <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
  <xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
  <xsl:param name="SV_OutputFormat" select="'HTML'"/>
  <xsl:variable name="XML" select="/"/>
  <xsl:template match="/">
    <html>
      <head>
        <title/>
        <style type="text/css">
          body {
          background-color: #FFFFFF;
          font-family: 'Tahoma', "Times New Roman", Times, serif;
          font-size: 10px;
          color: #666666;
          }
          #staticFooter
          {
          display:block;
          border:0;
          padding:0;
          margin:0;
          width:850px;
          position:relative;
          top:0;
          left:0;
          }
          h1, h2 {
          padding-bottom: 3px;
          padding-top: 3px;
          margin-bottom: 5px;
          text-transform: uppercase;
          font-family: Arial, Helvetica, sans-serif;
          }
          h1 {
          font-size: 1.4em;
          text-transform:none;
          }
          h2 {
          font-size: 1em;
          color: brown;
          }
          h3 {
          font-size: 1em;
          color: #333333;
          text-align: justify;
          margin: 0;
          padding: 0;
          }
          h4 {
          font-size: 1.1em;
          font-style: bold;
          font-family: Arial, Helvetica, sans-serif;
          color: #000000;
          margin: 0;
          padding: 0;
          }
          hr {
          height:2px;
          color: #000000;
          background-color: #000000;
          border-bottom: 1px solid #000000;
          }
          p, ul, ol {
          margin-top: 1.5em;
          }
          ul, ol {
          margin-left: 3em;
          }
          blockquote {
          margin-left: 3em;
          margin-right: 3em;
          font-style: italic;
          }
          a {
          text-decoration: none;
          color: #70A300;
          }
          a:hover {
          border: none;
          color: #70A300;
          }
          #despatchTable {
          border-collapse:collapse;
          font-size:11px;
          float:right;
          border-color:gray;
          }
          #ettnTable {
          border-collapse:collapse;
          font-size:11px;
          border-color:gray;
          }
          #customerPartyTable {
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #customerIDTable {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #customerIDTableTd {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #lineTable {
          border-width:2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:;
          }
          #lineTableTd {
          border-width: 1px;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          }
          #lineTableTr {
          border-width: 1px;
          padding: 0px;
          border-style: inset;
          border-color: black;
          background-color: white;
          -moz-border-radius:;
          }
          #lineTableDummyTd {
          border-width: 1px;
          border-color:white;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          }
          #lineTableBudgetTd {
          border-width: 2px;
          border-spacing:0px;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          -moz-border-radius:;
          }
          #notesTable {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          #notesTableTd {
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          table {
          border-spacing:0px;
          }
          #budgetContainerTable {
          border-width: 0px;
          border-spacing: 0px;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:;
          }
          td {
          border-color:gray;
          }
        </style>
        <title>e-Fatura</title>
      </head>
      <body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
        <xsl:for-each select="$XML">
          <table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
            <tbody>
              <tr valign="top">
                <td width="40%">
                  <br/>
                  <table align="center" border="0" width="100%">
                    <tbody>
                      <hr/>
                      <tr align="left">
                        <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                          <td align="left">
                            <xsl:if test="cac:PartyName">
                              <xsl:value-of select="cac:PartyName/cbc:Name"/>
                              <br/>
                            </xsl:if>
                            <xsl:for-each select="cac:Person">
                              <xsl:for-each select="cbc:Title">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:FirstName">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:MiddleName">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:FamilyName">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:NameSuffix">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr align="left">
                        <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                          <td align="left">
                            <xsl:for-each select="cac:PostalAddress">
                              <xsl:for-each select="cbc:StreetName">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:BuildingName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <xsl:if test="cbc:BuildingNumber='0'">
                                <xsl:text> No:</xsl:text>
                                <xsl:for-each select="cbc:BuildingNumber">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                                <xsl:text> </xsl:text>
                              </xsl:if>
                              <br/>
                              <xsl:for-each select="cbc:PostalZone">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:CitySubdivisionName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <xsl:text>/ </xsl:text>
                              <xsl:for-each select="cbc:CityName">
                                <xsl:apply-templates/>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <xsl:if test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
                        <tr align="left">
                          <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                            <td align="left">
                              <xsl:for-each select="cac:Contact">
                                <xsl:if test="cbc:Telephone">
                                  <xsl:text>Tel: </xsl:text>
                                  <xsl:for-each select="cbc:Telephone">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:if>
                                <xsl:if test="cbc:Telefax">
                                  <xsl:text> Fax: </xsl:text>
                                  <xsl:for-each select="cbc:Telefax">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:if>
                                <xsl:text> </xsl:text>
                              </xsl:for-each>
                            </td>
                          </xsl:for-each>
                        </tr>
                      </xsl:if>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
                        <tr align="left">
                          <td>
                            <xsl:text>Web Sitesi: </xsl:text>
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                        <tr align="left">
                          <td>
                            <xsl:text>E-Posta: </xsl:text>
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <tr align="left">
                        <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                          <td align="left">
                            <xsl:text>Vergi Dairesi: </xsl:text>
                            <xsl:for-each select="cac:PartyTaxScheme">
                              <xsl:for-each select="cac:TaxScheme">
                                <xsl:for-each select="cbc:Name">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                              </xsl:for-each>
                              <xsl:text>  </xsl:text>
                            </xsl:for-each>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
                        <tr align="left">
                          <td>
                            <xsl:value-of select="cbc:ID/@schemeID"/>
                            <xsl:text>: </xsl:text>
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <hr/>
                </td>
                <td valign="middle" align="center" width="30%">

                  <img src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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" alt="e-Arsiv Fatura Logo" align="middle" style="width: 91px;" />
                  <h1 align="center">
                    <span style="font-weight: bold;">e-Arşiv Fatura</span>
                  </h1>
                  <!--                  <img src="data:image/gif;base64,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" alt=""></img>
-->
                  <td width="150%" align="center" valign="right">
                    <br/>



                    <h1 align="center">
                      <span style="font-weight:bold; "/>
                    </h1>
                  </td>

                </td>

                <td width="20%"/>
              </tr>
              <tr style="height:100px; " valign="top">
                <td width="40%" align="right" valign="bottom">
                  <table id="customerPartyTable" align="left" border="0" height="50%">
                    <tbody>
                      <tr style="height:71px; ">
                        <td>
                          <hr/>
                          <table align="center" border="0">
                            <tbody>
                              <tr>
                                <xsl:for-each select="n1:Invoice">
                                  <xsl:for-each select="cac:AccountingCustomerParty">
                                    <xsl:for-each select="cac:Party">
                                      <td style="width:350px; " align="left">
                                        <span style="font-weight:bold; ">
                                          <xsl:text>SAYIN</xsl:text>
                                        </span>
                                      </td>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </tr>
                              <tr>
                                <xsl:for-each select="n1:Invoice">
                                  <xsl:for-each select="cac:AccountingCustomerParty">
                                    <xsl:for-each select="cac:Party">
                                      <td style="width:469px; " align="left">
                                        <xsl:if test="(cac:PartyName)  and not(./cac:Person/cbc:FirstName)">
                                          <xsl:value-of select="cac:PartyName/cbc:Name"/>
                                          <br/>
                                        </xsl:if>


                                        <xsl:if test="not(n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name)">
                                          <xsl:for-each select="cac:Person">
                                            <xsl:for-each select="cbc:Title">
                                              <xsl:apply-templates/>
                                              <span>
                                                <xsl:text></xsl:text>
                                              </span>
                                            </xsl:for-each>

                                            <xsl:for-each select="cbc:FirstName">
                                              <xsl:apply-templates/>
                                              <span>
                                                <xsl:text>&#160;</xsl:text>
                                              </span>
                                            </xsl:for-each>
                                            <xsl:for-each select="cbc:MiddleName">
                                              <xsl:apply-templates/>
                                              <span>
                                                <xsl:text> </xsl:text>
                                              </span>
                                            </xsl:for-each>
                                            <xsl:for-each select="cbc:FamilyName">
                                              <xsl:apply-templates/>
                                              <span>
                                                <xsl:text></xsl:text>
                                              </span>
                                            </xsl:for-each>
                                            <xsl:for-each select="cbc:NameSuffix">
                                              <xsl:apply-templates/>
                                            </xsl:for-each>
                                          </xsl:for-each>
                                        </xsl:if>




                                      </td>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </tr>
                              <tr>
                                <xsl:for-each select="n1:Invoice">
                                  <xsl:for-each select="cac:AccountingCustomerParty">
                                    <xsl:for-each select="cac:Party">
                                      <td style="width:469px; " align="left">
                                        <xsl:for-each select="cac:PostalAddress">
                                          <xsl:for-each select="cbc:District">
                                            <xsl:apply-templates/>
                                          </xsl:for-each>

                                          <xsl:for-each select="cbc:StreetName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text></xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:BuildingName">
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:BuildingNumber">
                                            <span>
                                              <xsl:text> No:</xsl:text>
                                            </span>
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text></xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <br/>
                                          <xsl:for-each select="cbc:Room">
                                            <span>
                                              <xsl:text>Kapi No:</xsl:text>
                                            </span>
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text></xsl:text>
                                            </span>
                                          </xsl:for-each>

                                          <xsl:for-each select="cbc:PostalZone">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text></xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:CitySubdivisionName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>/ </xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:CityName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text></xsl:text>
                                            </span>
                                          </xsl:for-each>
                                        </xsl:for-each>
                                      </td>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </tr>
                              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cbc:WebsiteURI">
                                <tr align="left">
                                  <td>
                                    <xsl:text>Web Sitesi: </xsl:text>
                                    <xsl:value-of select="."/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                                <tr align="left">
                                  <td>
                                    <xsl:text>E-Posta: </xsl:text>
                                    <xsl:value-of select="."/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                              <xsl:for-each select="n1:Invoice">
                                <xsl:for-each select="cac:AccountingCustomerParty">
                                  <xsl:for-each select="cac:Party">

                                    <xsl:if test="cbc:Telephone or cbc:Telefax">
                                      <tr align="left">
                                        <td style="width:469px; " align="left">
                                          <xsl:for-each select="cbc:Telephone">
                                            <span>
                                              <xsl:text>Tel: </xsl:text>
                                            </span>
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:Telefax">
                                            <span>
                                              <xsl:text> Fax: </xsl:text>
                                            </span>
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                          <span>
                                            <xsl:text></xsl:text>
                                          </span>
                                        </td>
                                      </tr>
                                    </xsl:if>
                                    <xsl:if test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
                                      <tr align="left">
                                        <td>
                                          <span>
                                            <xsl:text>Vergi Dairesi: </xsl:text>
                                            <xsl:value-of select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>
                                          </span>
                                        </td>
                                      </tr>
                                    </xsl:if>

                                  </xsl:for-each>
                                </xsl:for-each>
                              </xsl:for-each>
                              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
                                <tr align="left">
                                  <td>
                                    <xsl:value-of select="cbc:ID/@schemeID"/>
                                    <xsl:text>: </xsl:text>
                                    <xsl:value-of select="cbc:ID"/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                            </tbody>
                          </table>
                          <hr/>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <br/>
                </td>

                <td width="60%" align="center" valign="bottom" colspan="2">
                  <table border="1" height="13" id="despatchTable">
                    <tbody>
                      <!--  <tr>
         -->
                      <!--   <td style="width:105px;" align="left">
             <span style="font-weight:bold; ">
              <xsl:text>Belge No:</xsl:text>
             </span>
            </td>-->
                      <!--
            <td style="width:110px;" align="left">
             <xsl:for-each select="//n1:Invoice">
              <xsl:for-each select="cbc:Note">
               <xsl:call-template name="parcala">
                <xsl:with-param name="ayrac" select="'#'"/>
                <xsl:with-param name="csv">
                 <xsl:value-of select="substring-after(.,'#')"/>
                </xsl:with-param>
                <xsl:with-param name="isaret" select="'BillingReference.InvoiceDocumentReference.ID'"/>
               </xsl:call-template>
              </xsl:for-each>
             </xsl:for-each>
            </td>
           </tr>-->

                      <tr>



                        <td style="width:105px;" align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Özellestirme No:</xsl:text>
                          </span>
                        </td>
                        <td style="width:110px;" align="left">
                          <xsl:for-each select="n1:Invoice">
                            <xsl:for-each select="cbc:CustomizationID">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Senaryo:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice">
                            <xsl:for-each select="cbc:ProfileID">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura Tipi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice">
                            <xsl:for-each select="cbc:InvoiceTypeCode">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura No:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice">
                            <xsl:for-each select="cbc:ID">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>

                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura Tarihi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice">
                            <xsl:for-each select="cbc:IssueDate">
                              <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <xsl:if test="contains(string(.),'#DUZTARIH') !=false()">
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Düzenleme Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td style="width:110px;" align="left">
                            <xsl:for-each select="//n1:Invoice">
                              <xsl:for-each select="cbc:Note">
                                <xsl:call-template name="parcala">
                                  <xsl:with-param name="ayrac" select="'#'"/>
                                  <xsl:with-param name="csv">
                                    <xsl:value-of select="substring-after(.,'#')"/>
                                  </xsl:with-param>
                                  <xsl:with-param name="isaret" select="'DUZTARIH'"/>
                                </xsl:call-template>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="contains(string(.),'#DUZZAMAN') !=false()">
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Düzenleme Zamanı:</xsl:text>
                            </span>
                          </td>
                          <td style="width:110px;" align="left">
                            <xsl:for-each select="n1:Invoice">
                              <xsl:for-each select="cbc:Note">
                                <span>
                                  <xsl:call-template name="parcala">
                                    <xsl:with-param name="csv">
                                      <xsl:value-of select="."/>
                                    </xsl:with-param>
                                    <xsl:with-param name="isaret" select="'DUZZAMAN'"/>
                                  </xsl:call-template>
                                </span>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:for-each select="n1:Invoice/cac:DespatchDocumentReference">
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>İrsaliye No:</xsl:text>
                            </span>
                            <span>
                              <xsl:text></xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>İrsaliye Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="cbc:IssueDate">
                              <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                            </xsl:for-each>
                          </td>
                        </tr>



                      </xsl:for-each>
                      <xsl:if test="//n1:Invoice/cac:OrderReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Sipariş No:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:OrderReference">
                              <xsl:for-each select="cbc:ID">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Sipariş Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:OrderReference">
                              <xsl:for-each select="cbc:IssueDate">
                                <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>


                      <xsl:if test="//n1:Invoice//cac:BillingReference/cac:AdditionalDocumentReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Fiş Numarası:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference">
                              <xsl:for-each select="cbc:ID">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>

                      <xsl:if test="//n1:Invoice//cac:BillingReference/cac:AdditionalDocumentReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Fiş Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference">
                              <xsl:for-each select="cbc:IssueDate">
                                <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>

                      <xsl:if test="//n1:Invoice//cac:BillingReference/cac:AdditionalDocumentReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Fiş Tipi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference">
                              <xsl:for-each select="cbc:DocumentDescription">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>



                      <xsl:if test="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Z Rapor No:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference">
                              <xsl:for-each select="cbc:URI">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>

                      <xsl:if test="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cac:IssuerParty">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>ÖKC Seri No:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cac:IssuerParty">
                              <xsl:for-each select="cbc:EndpointID">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>




                    </tbody>
                  </table>
                </td>
              </tr>


              <tr align="left">
                <table id="ettnTable">
                  <tr style="height:13px;">
                    <td align="left" valign="top">
                      <span style="font-weight:bold; ">
                        <xsl:text>ETTN:</xsl:text>
                      </span>
                    </td>
                    <td align="left" width="240px">
                      <xsl:for-each select="n1:Invoice">
                        <xsl:for-each select="cbc:UUID">
                          <xsl:apply-templates/>
                        </xsl:for-each>
                      </xsl:for-each>
                    </td>
                  </tr>
                </table>
              </tr>
            </tbody>
          </table>
          <div id="TableAligner">
            <span>
              <xsl:text></xsl:text>
            </span>
          </div>
          <table border="1" id="lineTable" width="800">
            <tbody>
              <tr id="lineTableTr">
                <td id="lineTableTd" style="width:3%">
                  <span style="font-weight:bold; " align="center">
                    <xsl:text>Sira No</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:20%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Mal Hizmet</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:7.4%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Miktar</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:9%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Birim Fiyat</xsl:text>
                  </span>
                </td>
                <!--td id="lineTableTd" style="width:7%" align="center">
         <span style="font-weight:bold; ">
          <xsl:text>Iskonto Orani</xsl:text>
         </span>
        </td-->
                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode!='IADE'">
                  <td id="lineTableTd" style="width:9%" align="center">
                    <span style="font-weight:bold; ">
                      <xsl:text>Iskonto Tutari</xsl:text>
                    </span>
                  </td>

                  <td id="lineTableTd" style="width:7%" align="center">
                    <span style="font-weight:bold; ">
                      <xsl:text>KDV Orani</xsl:text>
                    </span>
                  </td>
                  <td id="lineTableTd" style="width:10%" align="center">
                    <span style="font-weight:bold; ">
                      <xsl:text>KDV Tutari</xsl:text>
                    </span>
                  </td>
                </xsl:if>
                <!--td id="lineTableTd" style="width:17%; " align="center">
         <span style="font-weight:bold; ">
          <xsl:text>Diger Vergiler</xsl:text>
         </span>
        </td-->
                <td id="lineTableTd" style="width:10.6%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Mal Hizmet Tutari</xsl:text>
                  </span>
                </td>
              </tr>
              <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine"/>
            </tbody>
          </table>
        </xsl:for-each>
        <br/>
        <table id="budgetContainerTable" width="800px">
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="200px">
              <span style="font-weight:bold; ">
                <xsl:text>Mal Hizmet Toplam Tutari</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:81px; " align="right">
              <span>
                <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
                <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
                  <xsl:text/>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRL'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL'">
                    <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"/>
                  </xsl:if>
                </xsl:if>
              </span>
            </td>
          </tr>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="200px">
              <span style="font-weight:bold; ">
                <xsl:text>Toplam İskonto</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:81px; " align="right">
              <span>
                <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')"/>
                <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID">
                  <xsl:text/>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID = 'TRL'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID != 'TRL'">
                    <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"/>
                  </xsl:if>
                </xsl:if>
              </span>
            </td>
          </tr>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="200px">
              <span style="font-weight:bold; ">
                <xsl:text>Matrah</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:81px; " align="right">
              <span>
                <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount, '###.##0,00', 'european')"/>
                <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID">
                  <xsl:text/>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID = 'TRL'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID != 'TRL'">
                    <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID"/>
                  </xsl:if>
                </xsl:if>
              </span>
            </td>
          </tr>

          <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="211px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Hesaplanan  </xsl:text>
                  <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                  <xsl:text>(%</xsl:text>
                  <xsl:value-of select="cbc:Percent"/>
                  <xsl:text>)</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:82px; " align="right">
                <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                  <xsl:text/>
                  <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID">
                    <xsl:text/>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL'">
                      <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                    </xsl:if>
                  </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>

          <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='TEVKIFAT'">
            <xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" width="211px" align="right">
                  <span style="font-weight:bold; ">
                    <xsl:text>Hesaplanan KDV Tevkifat </xsl:text>

                    <xsl:text>(%</xsl:text>
                    <xsl:value-of select="cbc:Percent"/>
                    <xsl:text>)</xsl:text>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:82px; " align="right">
                  <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                    <xsl:text/>
                    <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID">
                      <xsl:text/>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL'">
                        <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                      </xsl:if>
                    </xsl:if>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:for-each>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" align="right" width="200px">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata tabi işlem tutarı</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:81px; " align="right">
                <span>
                  <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
                    <xsl:text/>
                    <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRL'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL'">
                      <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"/>
                    </xsl:if>
                  </xsl:if>
                </span>
              </td>
            </tr>


            <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" width="211px" align="right">
                  <span style="font-weight:bold; ">
                    <xsl:text>Tevkifata tabi işlem üzerinden Hes.KDV  </xsl:text>
                    <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                    <xsl:text>(%</xsl:text>
                    <xsl:value-of select="cbc:Percent"/>
                    <xsl:text>)</xsl:text>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:82px; " align="right">
                  <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                    <xsl:text/>
                    <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID">
                      <xsl:text/>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL'">
                        <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                      </xsl:if>
                    </xsl:if>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:for-each>


          </xsl:if>

          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" width="200px" align="right">
              <span style="font-weight:bold; ">
                <xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:82px; " align="right">
              <xsl:for-each select="n1:Invoice">
                <xsl:for-each select="cac:LegalMonetaryTotal">
                  <xsl:for-each select="cbc:TaxInclusiveAmount">
                    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
                    <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
                      <xsl:text/>
                      <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRL'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRL'">
                        <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"/>
                      </xsl:if>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </td>
          </tr>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" width="200px" align="right">
              <span style="font-weight:bold; ">
                <xsl:text>Ödenecek Tutar</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:82px; " align="right">
              <xsl:for-each select="n1:Invoice">
                <xsl:for-each select="cac:LegalMonetaryTotal">
                  <xsl:for-each select="cbc:PayableAmount">
                    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
                    <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID">
                      <xsl:text/>
                      <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID = 'TRL'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID != 'TRL'">
                        <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"/>
                      </xsl:if>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </td>
          </tr>
          <!--xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
      <xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
       <tr align="right">
        <td/>
        <td id="lineTableBudgetTd" align="right" width="200px">
         <span style="font-weight:bold; ">
          <xsl:text>Hesaplanan </xsl:text>
          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
          <xsl:text>(%</xsl:text>
          <xsl:value-of select="cbc:Percent"/>
          <xsl:text>) (TL)</xsl:text>
         </span>
        </td>
        <td id="lineTableBudgetTd" style="width:81px; " align="right">
         <span>
          <xsl:value-of select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
          <xsl:text> TL</xsl:text>
         </span>
        </td>
       </tr>
      </xsl:if>
     </xsl:for-each>
     <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL'">
      <tr align="right">
       <td/>
       <td id="lineTableBudgetTd" align="right" width="200px">
        <span style="font-weight:bold; ">
         <xsl:text>Mal Hizmet Toplam Tutari(TL)</xsl:text>
        </span>
       </td>
       <td id="lineTableBudgetTd" style="width:81px; " align="right">
        <span>
         <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
         <xsl:text> TL</xsl:text>
        </span>
       </td>
      </tr>
      <tr id="budgetContainerTr" align="right">
       <td/>
       <td id="lineTableBudgetTd" width="200px" align="right">
        <span style="font-weight:bold; ">
         <xsl:text>Vergiler Dahil Toplam Tutar(TL)</xsl:text>
        </span>
       </td>
       <td id="lineTableBudgetTd" style="width:82px; " align="right">
        <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
        <xsl:text> TL</xsl:text>
       </td>
      </tr>
      <tr align="right">
       <td/>
       <td id="lineTableBudgetTd" width="200px" align="right">
        <span style="font-weight:bold; ">
         <xsl:text>Ödenecek Tutar(TL)</xsl:text>
        </span>
       </td>
       <td id="lineTableBudgetTd" style="width:82px; " align="right">
        <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
        <xsl:text> TL</xsl:text>
       </td>
      </tr>
     </xsl:if-->
        </table>
        <br/>
        <table id="notesTable" width="800" align="left" height="100">
          <tbody>
            <tr align="left">
              <td id="notesTableTd">
                <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                  <xsl:if test="cbc:Percent=0 and cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015'">


                    <xsl:if test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason != ''">


                      <tr>
                        <td>
                          <b>Vergi İstisna Kodu: </b>
                          <xsl:value-of select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReasonCode" />

                        </td>

                      </tr>


                      <tr>
                        <td>
                          <b>Vergi İstisna Nedeni: </b>
                          <xsl:value-of select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason" />

                        </td>
                      </tr>
                    </xsl:if>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="//n1:Invoice/cac:PricingExchangeRate">

                  <text>1</text>&#160;
                  <xsl:value-of select="cbc:SourceCurrencyCode"/> =
                  <xsl:value-of select="cbc:CalculationRate"/>

                </xsl:for-each>


                <xsl:for-each select="//n1:Invoice/cac:PricingExchangeRate">
                  &#160;
                  <xsl:value-of select="cbc:TargetCurrencyCode"/>
                </xsl:for-each>
                <xsl:for-each select="//n1:Invoice">
                  <xsl:for-each select="cbc:Note">
                    <xsl:if test="contains(string(.),'#') !=true()">
                      <span>
                        <tr>
                          <td>
                            <xsl:value-of select="string(.)"/>
                          </td>
                        </tr>
                      </span>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:for-each>

              </td>

            </tr>
          </tbody>

        </table>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <!--div id="staticFooter">
     <xsl:if test="//n1:Invoice/cac:PaymentMeans">
      <span style="padding-bottom:5px;">
       <b>IBAN NUMARALARIMIZ</b>
      </span>
      <table id="hesapBilgileriTable" style="border-collapse: collapse;font-size: 10px;font-weight: normal;">
       <tr id="IBANHesapBaslik">
        <td id="lineTableTd">BANKA SUBESI</td>
        <td id="lineTableTd">HESAP NO</td>
        <td id="lineTableTd" style="padding:3px;">PARA BIRIMI</td>
        <td id="lineTableTd" style="padding:3px;">IBAN</td>
        <td/>
       </tr>
       <xsl:for-each select="//n1:Invoice/cac:PaymentMeans">
        <tr>
         <td id="lineTableTd">
          <xsl:value-of select="cbc:InstructionNote"/>
         </td>
         <td id="lineTableTd">
          <xsl:value-of select="cbc:PaymentChannelCode"/>
         </td>
         <td id="lineTableTd">
          <xsl:value-of select="cac:PayeeFinancialAccount/cbc:CurrencyCode"/>
         </td>
         <td id="lineTableTd">
          <xsl:value-of select="cac:PayeeFinancialAccount/cbc:ID"/>
         </td>
         <td>
          <xsl:value-of select="cac:PayeeFinancialAccount/cbc:PaymentNote"/>
         </td>
        </tr>
       </xsl:for-each>
      </table>
     </xsl:if>
    </div>-->
        <xsl:if test="(//n1:Invoice/cbc:Note='Bu satis internet üzerinden yapilmistir.') or (//n1:Invoice/cbc:Note='Bu satış internet üzerinden yapılmıştır.')">
          <div style="width:800px; margin-top:170px">
            <tr>
              <td>
                <h3 style="text-align: center;">İADE NOTU</h3>
              </td>
            </tr>
            <td>
              <h3 style="text-align: center;">Sayın Müşterimiz,</h3>
            </td>
            <td>
              <h3 style="text-align: center;">Ürün iade işlemlerinde ürünün iadesi anında, düzenlenen e-arşiv/e-faturasının kağıt</h3>
            </td>
            <td>
              <h3 style="text-align: center;">çıktısının ibrazı gerekmektedir.</h3>
            </td>
            <br></br>
            <h3 style="text-align: center;">İade Edilen Mal Bilgileri</h3>
            <table style="width: 800px; margin-top: 10px; border-style: inset; border-width:2px; border-color: black;">
              <tbody>
                <tr>
                  <th style="width: 550px; padding: 10px; border-right-color: black; border-right-style: inset; border-width:1px; color:gray;">Cinsi</th>
                  <th style="width: 50px; padding: 10px; border-right-color: black; border-right-style: inset; border-width:1px; color:gray;">Miktar</th>
                  <th style="width: 100px; padding: 10px; border-right-color: black; border-right-style: inset; border-width:1px; color:gray;">Birim Fiyat</th>
                  <th style="width: 100px; padding: 10px; color:gray;">Tutar</th>
                </tr>
                <tr>
                  <td style="width: 550px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 50px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black; border-width:1px;">
                    &#160;
                  </td>
                </tr>
                <tr>
                  <td style="width: 550px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 50px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black; border-width:1px;">
                    &#160;
                  </td>
                </tr>
                <tr>
                  <td style="width: 550px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 50px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color:black;  border-width:1px;">
                    &#160;
                  </td>
                </tr>
                <tr>
                  <td style="width: 550px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 50px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color:black;  border-width:1px;">
                    &#160;
                  </td>
                </tr>
                <tr>
                  <td style="width: 550px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 50px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black;border-right-color: black;  border-width:1px; border-right-style: inset;">
                    &#160;
                  </td>
                  <td style="width: 100px; padding: 5px;  border-top-style: inset;border-top-color: black; border-width:1px;">
                    &#160;
                  </td>
                </tr>
              </tbody>
            </table>
            <b>
              <table style="width: 800px; margin-top: 10px;">
                <tbody>
                  <tr>
                    <td style="width: 300px; padding: 5px; text-align:center;">Malı İade Edenin Adı Soyadı</td>
                    <td style="width:300px; padding: 5px; text-align:center;">Adresi</td>
                    <td style="width: 200px; padding: 5px; text-align:center;">İmzası</td>
                  </tr>
                </tbody>
              </table>
            </b>
          </div>
        </xsl:if>
      </body>
    </html>
  </xsl:template>


  <xsl:template match="dateFormatter">
    <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
  </xsl:template>
  <xsl:template match="//n1:Invoice/cac:InvoiceLine">
    <tr id="lineTableTr">
      <td id="lineTableTd">
        <span>
          <xsl:text></xsl:text>
          <xsl:value-of select="./cbc:ID"/>
        </span>
      </td>
      <td id="lineTableTd">
        <span>
          <xsl:text></xsl:text>
          <xsl:value-of select="./cac:Item/cbc:Name"/>
          <!-- <xsl:text>&#160;</xsl:text>
     <xsl:value-of select="./cac:Item/cbc:BrandName"/>
     <xsl:text>&#160;</xsl:text>
     <xsl:value-of select="./cac:Item/cbc:ModelName"/>
     <xsl:text>&#160;</xsl:text>
     <xsl:value-of select="./cac:Item/cbc:Description"/>-->
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
          <xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.###,####', 'european')"/>
          <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
            <xsl:for-each select="./cbc:InvoicedQuantity">
              <xsl:text/>
              <xsl:choose>
                <xsl:when test="@unitCode  = '26'">
                  <span>
                    <xsl:text>Ton</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'BX'">
                  <span>
                    <xsl:text>Kutu</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'LTR'">
                  <span>
                    <xsl:text>LT</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'NIU'">
                  <span>
                    <xsl:text>Adet</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'KGM'">
                  <span>
                    <xsl:text>KG</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'KJO'">
                  <span>
                    <xsl:text>kJ</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'GRM'">
                  <span>
                    <xsl:text>G</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MGM'">
                  <span>
                    <xsl:text>MG</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'NT'">
                  <span>
                    <xsl:text>Net Ton</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'GT'">
                  <span>
                    <xsl:text>GT</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MTR'">
                  <span>
                    <xsl:text>M</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MMT'">
                  <span>
                    <xsl:text>MM</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'KTM'">
                  <span>
                    <xsl:text>KM</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MLT'">
                  <span>
                    <xsl:text>ML</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MMQ'">
                  <span>
                    <xsl:text>MM3</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'CLT'">
                  <span>
                    <xsl:text>CL</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'CMK'">
                  <span>
                    <xsl:text>CM2</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'CMQ'">
                  <span>
                    <xsl:text>CM3</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'CMT'">
                  <span>
                    <xsl:text>CM</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MTK'">
                  <span>
                    <xsl:text>M2</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MTQ'">
                  <span>
                    <xsl:text>M3</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'DAY'">
                  <span>
                    <xsl:text> Gün</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MIN'">
                  <span>
                    <xsl:text> Dakika</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'SEC'">
                  <span>
                    <xsl:text> Saniye</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'HUR'">
                  <span>
                    <xsl:text> Saat</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'ANN'">
                  <span>
                    <xsl:text> Yil</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'MON'">
                  <span>
                    <xsl:text> Ay</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'PA'">
                  <span>
                    <xsl:text> Paket</xsl:text>
                  </span>
                </xsl:when>
                <xsl:when test="@unitCode  = 'KWH'">
                  <span>
                    <xsl:text> KWH</xsl:text>
                  </span>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>
          </xsl:if>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
          <xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>
          <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
            <xsl:text/>
            <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; ">
              <xsl:text>TL</xsl:text>
            </xsl:if>
            <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot;">
              <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
            </xsl:if>
          </xsl:if>
        </span>
      </td>
      <!--td id="lineTableTd" align="right">
    <span>
     <xsl:text></xsl:text>
     <xsl:if test="./cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
      <xsl:text> %</xsl:text>
      <xsl:value-of select="format-number(./cac:AllowanceCharge/cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"/>
     </xsl:if>
    </span>
   </td-->

      <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode!='IADE'">
        <td id="lineTableTd" align="right">
          <span>
            <xsl:text></xsl:text>
            <xsl:if test="./cac:AllowanceCharge">
              <!--<xsl:if test="./cac:AllowanceCharge/cbc:ChargeIndicator = true() ">+
          </xsl:if>
      <xsl:if test="./cac:AllowanceCharge/cbc:ChargeIndicator = false() ">-
          </xsl:if>-->
              <xsl:value-of select="format-number(./cac:AllowanceCharge/cbc:Amount, '###.##0,00', 'european')"/>
            </xsl:if>
            <xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID">
              <xsl:text/>
              <xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID = 'TRL'">
                <xsl:text>TL</xsl:text>
              </xsl:if>
              <xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID != 'TRL'">
                <xsl:value-of select="./cac:AllowanceCharge/cbc:Amount/@currencyID"/>
              </xsl:if>
            </xsl:if>
          </span>
        </td>
        <td id="lineTableTd" align="right">
          <span>
            <xsl:text></xsl:text>
            <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
              <xsl:if test="cbc:TaxTypeCode='0015' ">
                <xsl:text/>
                <xsl:if test="../../cbc:Percent">
                  <xsl:text> %</xsl:text>
                  <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                </xsl:if>
              </xsl:if>
            </xsl:for-each>
          </span>
        </td>
        <td id="lineTableTd" align="right">
          <span>
            <xsl:text></xsl:text>
            <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
              <xsl:if test="cbc:TaxTypeCode='0015' ">
                <xsl:text/>
                <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                <xsl:if test="../../cbc:TaxAmount/@currencyID">
                  <xsl:text/>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL'">
                    <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                  </xsl:if>
                </xsl:if>
              </xsl:if>
            </xsl:for-each>
          </span>
        </td>
      </xsl:if>
      <!--td id="lineTableTd" style="font-size: xx-small" align="right">
    <span>
     <xsl:text></xsl:text>
     <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
      <xsl:if test="cbc:TaxTypeCode!='0015' ">
       <xsl:text/>
       <xsl:value-of select="cbc:Name"/>
       <xsl:if test="../../cbc:Percent">
        <xsl:text> (%</xsl:text>
        <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
        <xsl:text>)=</xsl:text>
       </xsl:if>
       <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
       <xsl:if test="../../cbc:TaxAmount/@currencyID">
        <xsl:text/>
        <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL'">
         <xsl:text>TL</xsl:text>
        </xsl:if>
        <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL'">
         <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
        </xsl:if>
       </xsl:if>
      </xsl:if>
     </xsl:for-each>
    </span>
   </td-->
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
          <xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
          <xsl:if test="./cbc:LineExtensionAmount/@currencyID">
            <xsl:text/>
            <xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRL' ">
              <xsl:text>TL</xsl:text>
            </xsl:if>
            <xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRL' ">
              <xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
            </xsl:if>
          </xsl:if>
        </span>
      </td>
    </tr>
  </xsl:template>
  <xsl:template name="parcala">
    <xsl:param name="csv"/>
    <xsl:param name="ayrac"/>
    <xsl:param name="isaret"/>
    <xsl:variable name="first-item" select="normalize-space( substring-before( concat( $csv, '|'), '|'))"/>
    <xsl:if test="$first-item">
      <xsl:if test="normalize-space(substring-after(concat($first-item, ''), $isaret))">
        <xsl:value-of select="normalize-space(substring-after(concat($first-item, ''), $isaret))"/>
      </xsl:if>
      <xsl:call-template name="parcala">
        <xsl:with-param name="csv" select="substring-after($csv,'|')"/>
        <xsl:with-param name="isaret" select="$isaret"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="//n1:Invoice">
    <tr id="lineTableTr">
      <td id="lineTableTd">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
      <td id="lineTableTd" align="right">
        <span>
          <xsl:text></xsl:text>
        </span>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>