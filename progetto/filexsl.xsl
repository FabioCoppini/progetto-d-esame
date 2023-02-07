<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:tei="http://www.tei-c.org/ns/1.0" 
  xmlns="http://www.w3.org/1999/xhtml" >

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Trois premières conférences à l'Université | Progetto di Codifica di Testi </title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat" />
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
        <script src="script.js"></script>
      </head>
      <body>
        <header>

          <div class="boxHeader">
            <h1>"<xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='it']" />"</h1>
            <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:edition" /></p>
            <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:respStmt" /></p>
            <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:respStmt[2]" /></p>
          </div><br></br><br></br>
          <div class="boxHeader">
            <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:respStmt[3]" /></p>
            <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:respStmt[4]/tei:resp" /> <xsl:apply-templates select="//tei:fileDesc/tei:editionStmt/tei:respStmt[4]/tei:persName" /></p>
          </div><br></br><br></br>
          <div class="boxHeader">
            <p>Archivio distribuito dalla
            <xsl:apply-templates select="//tei:fileDesc/tei:publicationStmt/tei:publisher" /></p>
            <p>Licenza
            <xsl:apply-templates select="//tei:fileDesc/tei:publicationStmt/tei:availability/tei:licence" /></p> 
          </div><br></br><br></br>
          <div class="boxHeader">
            <h1>Descrizione del manoscritto</h1>
            <p>Inventario <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno" /></p>
            <p>Autore: <xsl:apply-templates select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author/tei:persName" /></p>
            <p>Titolo: <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:title" /></p>
          </div><br></br><br></br>
          <div class="boxHeader">
            <h1>Descrizione fisica del manoscritto</h1>
            <p><xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc" /></p>
          </div><br></br><br></br>
          <div class="boxHeader">
            <h1>Note storiche</h1>
            <p><xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history" /></p>
          </div><br></br><br></br>

        </header>

        <div class="boxProlusioni">
          <h1>Pag. 3, 4, 5 (fronte, retro) - Prolusioni 3</h1>
        </div>

        <section class="container">
          <div class="slider-wrapper">
            <div class="slider">
              <div id="slide-1">
                <div class="front">
                  <div class="rowSlider" id="frontepagina3">
                    <div class="columnSlider">
                      <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='3_fr']" />
                      <xsl:apply-templates select="//tei:facsimile/tei:surface[@n='1']" />
                    </div>
                    <div class="columnSlider">
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:div[@xml:id='translation_tr_3']" />
                        <br></br>
                      </div>
                      <button class="button-google" onclick="showRetro()">Mostra retro</button>
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:item[@n=1]" />
                      </div>
                      <br></br>
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:item[@n=2]" />
                      </div>
                    </div>
                  </div>
                </div>

                <div class="retro">
                  <div class="rowSlider" >
                    <div class="columnSlider" id="retropagina3">
                      <xsl:apply-templates select="//tei:facsimile/tei:surface[@n='2']" />
                      <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='3_rv']" />
                    </div>
                    <div class="columnSlider">
                      <br></br>
                      <button class="button-google" onclick="showFront()">Mostra Fronte</button>
                    </div>
                  </div>
                </div>
              </div>       

              <div id="slide-2">
                <div class="front">
                  <div class="rowSlider" id="frontepagina4">
                    <div class="columnSlider">
                      <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='4_rr']" />
                      <xsl:apply-templates select="//tei:facsimile/tei:surface[@n='3']" />
                    </div>
                    <div class="columnSlider">
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:div[@xml:id='translation_tr_4']" />
                        <br></br>
                      </div>
                      <button class="button-google" onclick="showRetro()">Mostra retro</button>
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:item[@n=3]" />
                      </div>
                      <br></br>
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:item[@n=4]" />
                      </div>
                    </div>
                  </div>
                </div>

                <div class="retro">
                  <div class="rowSlider" >
                    <div class="columnSlider" id="retropagina4">
                      <xsl:apply-templates select="//tei:facsimile/tei:surface[@n='4']" />
                      <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='4_fv']" />
                    </div>
                    <div class="columnSlider">
                      <br></br>
                      <button class="button-google" onclick="showFront()">Mostra Fronte</button>
                    </div>
                  </div>
                </div>
              </div>

              <div id="slide-3">
                <div class="front">
                  <div class="rowSlider" id="frontepagina5">
                    <div class="columnSlider">
                      <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='5_rv']" />
                      <xsl:apply-templates select="//tei:facsimile/tei:surface[@n='6']" />
                    </div>
                    <div class="columnSlider">
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:div[@xml:id='translation_tr_5']" />
                        <br></br>
                      </div>
                      <button class="button-google" onclick="showRetro()">Mostra retro</button>
                      <div class="columnTextContainer">
                        <xsl:apply-templates select="//tei:item[@n=5]" />
                      </div>
                    </div>
                  </div>
                </div>

                <div class="retro">
                  <div class="rowSlider" >
                    <div class="columnSlider" id="retropagina5">
                      <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='5_fr']" />
                      <xsl:apply-templates select="//tei:facsimile/tei:surface[@n='5']" />
                    </div>
                    <div class="columnSlider">
                      <xsl:apply-templates select="//tei:div[@xml:id='translation_tr_invito']" />
                        <br></br>
                      <button class="button-google" onclick="showFront()">Mostra Fronte</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="slider-nav">
              <a href="#slide-1">3</a>
              <a href="#slide-2">4</a>
              <a href="#slide-3">5</a>
            </div>
          </div>
        </section>

        <div class="boxProlusioni" style="margin-top:10px;">
          <h1>Footer content, Ferdinand De Saussure e Bibliografia</h1>
        </div>

        <section class="footer">
          <div class="boxFooter">
            <h1><xsl:value-of select="//tei:listPerson/tei:person/tei:persName/tei:forename" /> <xsl:value-of select="//tei:listPerson/tei:person/tei:persName/tei:surname" /></h1>
            <p><xsl:value-of select="//tei:listPerson/tei:person/tei:persName/tei:roleName" /></p>
            <p>Nato il <xsl:value-of select="//tei:listPerson/tei:person/tei:birth/tei:date" /> a <xsl:value-of select="//tei:listPerson/tei:person/tei:birth/tei:placeName/tei:settlement" /> in <xsl:value-of select="//tei:listPerson/tei:person/tei:birth/tei:placeName/tei:country" /></p>
            <p>Morto il <xsl:value-of select="//tei:listPerson/tei:person/tei:death/tei:date" /> a <xsl:value-of select="//tei:listPerson/tei:person/tei:death/tei:placeName/tei:settlement" /> in <xsl:value-of select="//tei:listPerson/tei:person/tei:death/tei:placeName/tei:country" /></p>
            <h1>Pagina Wikipedia:</h1> <p><a><xsl:value-of select="//tei:listPerson/tei:person/tei:persName/tei:ref/@target" /></a></p>
          </div>
          <br></br>
          <div class="boxFooter">
            <xsl:apply-templates select="//tei:listBibl" />
          </div>
          <br></br>
        </section>

        <div class="boxProlusioni" style="margin-top:10px;">
        </div>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="//tei:listBibl" >
    <xsl:for-each select="current()/tei:bibl">
      <xsl:for-each select="current()">
        <xsl:element name="span">
          <xsl:attribute name="class">author</xsl:attribute>
          <xsl:attribute name="id"><xsl:value-of select="current()/tei:author/@xml:id" /></xsl:attribute>
          <xsl:value-of select="current()/tei:author" />
        </xsl:element>
        <xsl:text>: </xsl:text>
        <xsl:for-each select="current()/tei:title">
          <xsl:element name="span">
            <xsl:attribute name="class">title</xsl:attribute>
            <xsl:value-of select="current()" /><xsl:text>. </xsl:text>
          </xsl:element>
        </xsl:for-each>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
 
  <xsl:template match="//tei:facsimile/tei:surface[@n]" >
    <xsl:if test="@n='1'">
      <xsl:apply-templates select="//tei:surface[@n='1']/tei:graphic" />
    </xsl:if>
    <xsl:if test="@n='2'">
      <xsl:apply-templates select="//tei:surface[@n='2']/tei:graphic" />
    </xsl:if>
    <xsl:if test="@n='3'">
      <xsl:apply-templates select="//tei:surface[@n='3']/tei:graphic" />
    </xsl:if>
    <xsl:if test="@n='4'">
      <xsl:apply-templates select="//tei:surface[@n='4']/tei:graphic" />
    </xsl:if>
    <xsl:if test="@n='5'">
      <xsl:apply-templates select="//tei:surface[@n='5']/tei:graphic" />
    </xsl:if>
    <xsl:if test="@n='6'">
      <xsl:apply-templates select="//tei:surface[@n='6']/tei:graphic" />
    </xsl:if>
  </xsl:template>

  <xsl:template match="//tei:graphic" >
    <!-- creo l'immagine -->
    <xsl:element name="img">
      <xsl:attribute name="src"><xsl:value-of select="current()/@url" /></xsl:attribute>
      <xsl:attribute name="usemap"><xsl:value-of select="concat('#map_',../@xml:id)" /></xsl:attribute>
      <xsl:attribute name="class">maparea</xsl:attribute>
    </xsl:element>
    <!-- creazione mappa --> 
    <xsl:element name="map">
      <xsl:attribute name="name"><xsl:value-of select="concat('map_',../@xml:id)" /></xsl:attribute>
      <xsl:attribute name="id"><xsl:value-of select="concat('map_',../@xml:id)" /></xsl:attribute>
      <xsl:apply-templates select="../tei:zone" />
    </xsl:element>
  </xsl:template>

  <!-- creazione coordinate -->
  <xsl:template match="//tei:zone" >
    <xsl:for-each select="current()">
      <xsl:element name="area">
        <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
        <xsl:attribute name="coords"><xsl:value-of select="@points" /></xsl:attribute>
        <xsl:attribute name="shape">poly</xsl:attribute>
        <xsl:attribute name="onclick">modals.openModal('<xsl:value-of select="@xml:id" />');</xsl:attribute> 
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="//tei:text/tei:body/tei:div[@n]">
    <xsl:if test="@n='3_fr'">
      <xsl:apply-templates select="//tei:div[@n='3_fr']/tei:ab[@type='pericope']" />
    </xsl:if>
    <xsl:if test="@n='4_rr'">
      <xsl:apply-templates select="//tei:div[@n='4_rr']/tei:ab[@type='pericope']" />
    </xsl:if>
    <xsl:if test="@n='5_rv'">
      <xsl:apply-templates select="//tei:div[@n='5_rv']/tei:ab[@type='pericope']" />
    </xsl:if>
    <xsl:if test="@n='5_fr'">
      <xsl:apply-templates select="//tei:div[@n='5_fr']/tei:ab[@type='pericope']" />
    </xsl:if>
  </xsl:template>
    
  <xsl:template match="//tei:ab[@type='pericope']" >
    <xsl:apply-templates select="current()//tei:l" />
  </xsl:template>

  <!-- per ogni linea creo un modale -->
  <xsl:template match="//tei:l" >
    <xsl:for-each select="current()">
      <xsl:element name="div">
        <xsl:variable name="rimozione_hashtag" select="current()/@facs"/>
        <xsl:variable name="sostituzione_hasthag_per_id" select="substring-after($rimozione_hashtag, '#')"/>
        <xsl:attribute name="id"><xsl:value-of select="$sostituzione_hasthag_per_id"/></xsl:attribute>
        <xsl:attribute name="class">modal</xsl:attribute>
        <xsl:element name="div">
          <xsl:attribute name="class">modal-content</xsl:attribute>
          <xsl:element name="span">
            <xsl:attribute name="class">close</xsl:attribute>
            <xsl:attribute name="onclick">modals.close();</xsl:attribute>
            <xsl:text>x</xsl:text>
          </xsl:element>
          <xsl:element name="div">
            <xsl:attribute name="class">lineContainer</xsl:attribute>
            <xsl:for-each select="node()">

              <xsl:if test="name()= 'gap' ">
                <xsl:call-template name="gap" >
                  <xsl:with-param name="gap" select = "node()" />
                  <xsl:with-param name="gap_quantity" select = "current()/@quantity"/>
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'term' ">
                <xsl:call-template name="term" >
                  <!-- Mi serve sia il contenuto del tag (il valore) ma soprattutto l'attributo ref per collegarlo al suo significato (la terminologia) -->
                  <xsl:with-param name="attributo_termine" select = "current()/@ref" />
                  <xsl:with-param name="valore_termine" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'add' ">
                <xsl:call-template name="add" >
                  <xsl:with-param name="add" select = "node()" />
                  <xsl:with-param name="add_place" select = "current()/@place"/>
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'subst' ">
                <xsl:value-of select="subst"/>
                <xsl:call-template name="subst" >
                  <xsl:with-param name="subst" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'w' ">
                <xsl:value-of select="w"/>
                <xsl:call-template name="w" >
                  <xsl:with-param name="w" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'pc' ">
                <xsl:element name="span">
                  <xsl:attribute name="class">punteggiatura</xsl:attribute>
                  <xsl:if test="current()/@type= 'comma' ">
                    <xsl:attribute name="type">virgola</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@type= 'apostrophe' ">
                    <xsl:attribute name="type">apostrofo</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@type= 'dot' ">
                    <xsl:attribute name="type">punto</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@type= 'interrogative' ">
                    <xsl:attribute name="type">punto_di_domanda</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@type= 'exclamative' ">
                    <xsl:attribute name="type">punto_esclamativo</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@type= 'bracket' ">
                    <xsl:attribute name="type">parentesi</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@type= 'semicolon' ">
                    <xsl:attribute name="type">punto_e_virgola</xsl:attribute>
                  </xsl:if>
                  <xsl:if test="current()/@force ='weak'">
                    <xsl:attribute name="type">separatore</xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="."/>
                </xsl:element>
              </xsl:if>

              <xsl:if test="name()= 'date' ">
                <xsl:call-template name="date" >
                  <xsl:with-param name="date" select = "node()" />
                  <xsl:with-param name="date_when" select = "current()/@when-iso"/>
                </xsl:call-template>
              </xsl:if>
              
              <xsl:if test="name()= 'num' ">
                <xsl:call-template name="num" >
                  <xsl:with-param name="num" select = "node()" />
                  <xsl:with-param name="num_type" select = "current()/@type"/>
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'emph' ">
                <xsl:call-template name="emph" >
                  <xsl:with-param name="emph" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'ident' ">
                <xsl:value-of select="ident"/>
                <xsl:call-template name="ident" >
                  <xsl:with-param name="ident" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'ptr' ">
                <xsl:value-of select="ptr"/>
                <xsl:call-template name="ptr" >
                  <xsl:with-param name="ptr" select = "name()" />
                  <xsl:with-param name="ptr_target" select = "current()/@target"/>
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'choice' ">
                <xsl:call-template name="choice" >
                  <xsl:with-param name="choice" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'name' ">
                <xsl:call-template name="name" >
                  <xsl:with-param name="name" select = "node()" />
                  <xsl:with-param name="name_place" select = "current()/@type"/>
                  <xsl:with-param name="name_place_ref" select = "current()/@ref"/>
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'persName' ">
                <xsl:call-template name="persName" >
                  <xsl:with-param name="persName" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= 'roleName' ">
                <xsl:call-template name="roleName" >
                  <xsl:with-param name="roleName" select = "node()" />
                </xsl:call-template>
              </xsl:if>

              <xsl:if test="name()= '' ">
                <xsl:value-of select="."/>
              </xsl:if>

            </xsl:for-each>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="persName">
    <xsl:param name="persName" />
    <xsl:element name="span">
      <xsl:attribute name="class">persName</xsl:attribute>
      <xsl:value-of select="$persName"/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="roleName">
    <xsl:param name="roleName" />
    <xsl:element name="span">
      <xsl:attribute name="class">roleName</xsl:attribute>
      <xsl:value-of select="$roleName"/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="name">
    <xsl:param name="name" />
    <xsl:param name="name_place" />
    <xsl:param name="name_place_ref" />
    <xsl:element name="a">
      <xsl:attribute name="class"><xsl:value-of select="$name_place"/></xsl:attribute>
      <xsl:attribute name="href"><xsl:value-of select="$name_place_ref"/></xsl:attribute>
      <xsl:value-of select="$name"/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="ptr">
    <xsl:param name="ptr" />
    <xsl:param name="ptr_target" />
    <xsl:variable name="ptr_target_substring" select="substring-after($ptr_target, '#')"/>
    <xsl:element name="ptr">
      <xsl:attribute name="class"><xsl:value-of select="$ptr"/></xsl:attribute>
      <xsl:attribute name="href"><xsl:text>#p</xsl:text><xsl:value-of select="$ptr_target_substring"/></xsl:attribute>
      <xsl:attribute name="onclick">modals.close();</xsl:attribute>
      <xsl:value-of select="substring($ptr_target, 12)" />
    </xsl:element>
  </xsl:template>

  <xsl:template name="ident">
    <xsl:param name="ident" />
    <xsl:element name="ident">
      <xsl:attribute name="class">ident</xsl:attribute>
      <xsl:attribute name="type">Simbolo matematico</xsl:attribute>
      <xsl:value-of select="$ident"/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="w">
    <xsl:param name="w" />
    <xsl:element name="span">
      <xsl:attribute name="class">w</xsl:attribute>
      <xsl:value-of select="$w"/>
      <!-- Se dentro il tag w c'è il tag pc -->
      <xsl:for-each select="node()">
        <xsl:if test="name()= 'pc' ">
            <xsl:element name="span">
              <xsl:attribute name="class">punteggiatura</xsl:attribute>
              <xsl:attribute name="type">separatore</xsl:attribute>
              <xsl:value-of select="node()"/>
            </xsl:element>
        </xsl:if>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template name="emph">
    <xsl:param name="emph" />
    <xsl:element name="span">
      <xsl:attribute name="class">emph</xsl:attribute>
      <!-- Se dentro il tag emph c'è il tag term -->
      <xsl:for-each select="node()">
        <xsl:choose>
          <xsl:when test="name()= 'term'">
            <xsl:call-template name="term" >
              <xsl:with-param name="attributo_termine" select = "current()/@ref" />
              <xsl:with-param name="valore_termine" select = "node()" />
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$emph"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template name="date">
    <xsl:param name="date" />
    <xsl:param name="date_when" />
    <xsl:element name="span">
      <xsl:attribute name="class">date</xsl:attribute>
      <xsl:attribute name="when"><xsl:value-of select="$date_when"/></xsl:attribute>
      <!-- Se dentro il tag date c'è il tag num -->
      <xsl:for-each select="node()">
        <xsl:choose>
          <xsl:when test="name()= 'num'">
            <xsl:call-template name="num" >
              <xsl:with-param name="num_type" select = "current()/@type" />
              <xsl:with-param name="num" select = "node()" />
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$date"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template name="num">
    <xsl:param name="num" />
    <xsl:param name="num_type" />
    <xsl:element name="span">
      <xsl:attribute name="class">num</xsl:attribute>
      <xsl:attribute name="type"><xsl:value-of select="$num_type"/></xsl:attribute>
      <xsl:value-of select="$num"/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="add">
    <xsl:param name="add" />
    <xsl:param name="add_place" />
    <xsl:element name="span">
      <xsl:attribute name="class">add</xsl:attribute>
      <xsl:attribute name="place"><xsl:value-of select="$add_place"/></xsl:attribute>
      <!-- Se dentro il tag add c'è il tag term -->
      <xsl:choose>
        <xsl:when test="name()= 'term'">
          <xsl:call-template name="term" >
            <xsl:with-param name="attributo_termine" select = "current()/@ref" />
            <xsl:with-param name="valore_termine" select = "node()" />
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$add"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>

  <xsl:template name="term">
    <xsl:param name="valore_termine" />
    <xsl:param name="attributo_termine" />
    <xsl:element name="span">
      <xsl:attribute name="class">term</xsl:attribute>
      <xsl:value-of select="$valore_termine"/>
      <!-- Per ogni termine creo un altro span che contiene il suo significato e lo recupero da list type terminology -->
      <xsl:element name="span">
        <xsl:attribute name="class">terminology</xsl:attribute>
          <xsl:call-template name="terminology" >
            <xsl:with-param name="terminology" select = "$attributo_termine" />
          </xsl:call-template>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template name="terminology">
    <xsl:param name="terminology" />
    <xsl:for-each select="//tei:text/tei:back/tei:div[@type='notes']/tei:list[@type='terminology']/tei:item/tei:gloss">
      <xsl:if test="current()/@target= $terminology ">
        <xsl:value-of select="current()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="subst">
    <xsl:param name="subst" />
    <xsl:element name="span">
      <xsl:attribute name="class">subst</xsl:attribute>
      <xsl:for-each select="node()">
        <xsl:if test="name()= 'del' ">
          <xsl:call-template name="del" >
            <xsl:with-param name="del" select = "node()" />
          </xsl:call-template>
        </xsl:if>
        <xsl:if test="name()= 'add' ">
          <xsl:call-template name="add" >
            <xsl:with-param name="add" select = "node()" />
            <xsl:with-param name="add_place" select = "current()/@place"/>
          </xsl:call-template>
        </xsl:if>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template name="del">
    <xsl:param name="del" />
    <xsl:element name="span">
      <xsl:attribute name="class">del</xsl:attribute>
      <xsl:text> { </xsl:text>
      <xsl:value-of select="$del"/>
      <xsl:text> - sostituito con --> } </xsl:text>
    </xsl:element>
  </xsl:template>

  <xsl:template name="gap">
    <xsl:param name="gap" />
    <xsl:param name="gap_quantity" />
    <xsl:element name="span">
      <xsl:attribute name="class">gap</xsl:attribute>
      <xsl:attribute name="quantity"><xsl:value-of select="$gap_quantity"/></xsl:attribute>
      <xsl:for-each select="node()">
        <xsl:if test="name()= 'desc' ">
          <xsl:call-template name="gap_desc" >
            <xsl:with-param name="gap_desc" select = "node()" />
          </xsl:call-template>
        </xsl:if>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template name="gap_desc">
    <xsl:param name="gap_desc" />
    <xsl:element name="span">
      <xsl:attribute name="class">gap_desc</xsl:attribute>
      <xsl:value-of select="$gap_desc"/>
      <xsl:for-each select="node()">
        <xsl:if test="name()= 'choice' ">
          <xsl:call-template name="choice" >
            <xsl:with-param name="choice" select = "node()" />
          </xsl:call-template>
        </xsl:if>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template name="choice">
    <xsl:param name="choice" />
    <xsl:element name="span">
      <xsl:attribute name="class">choice</xsl:attribute>
      <xsl:for-each select="node()">
          <xsl:if test="name()= 'abbr' ">
            <xsl:element name="span">
              <xsl:attribute name="class">choice_abbr</xsl:attribute>
              <xsl:value-of select="node()"/>
            </xsl:element>
          </xsl:if>
          <xsl:if test="name()= 'expan' ">
            <xsl:element name="span">
              <xsl:attribute name="class">choice_expan</xsl:attribute>
              <xsl:text> {</xsl:text>
              <xsl:value-of select="."/>
              <xsl:text>}</xsl:text>
            </xsl:element>
          </xsl:if>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <xsl:template match="//tei:div[@xml:id]">
      <xsl:for-each select="current()/tei:ab">
        <xsl:element name="p">
          <xsl:attribute name="class">traduzione</xsl:attribute>
          <xsl:attribute name="id">
            <xsl:value-of select="concat('tr_', substring(@corresp, 2))" />
          </xsl:attribute>
        </xsl:element>
        <xsl:for-each select="node()">
          <xsl:if test="name()= 'hi' ">
            <xsl:element name="i">
              <xsl:value-of select="node()"/>
            </xsl:element>
          </xsl:if>

          <xsl:if test="name()= 'term' ">
            <xsl:call-template name="term" >
              <xsl:with-param name="attributo_termine" select = "current()/@ref" />
              <xsl:with-param name="valore_termine" select = "node()" />
            </xsl:call-template>
          </xsl:if>

          <xsl:if test="name()= '' ">
            <xsl:value-of select="."/>
          </xsl:if>
        </xsl:for-each>
      </xsl:for-each>
   </xsl:template>

   <xsl:template match="//tei:item[@n]">
    <xsl:variable name="id_nota" select="current()/tei:note/@xml:id"/>
    <xsl:element name="div">
      <xsl:attribute name="class">note</xsl:attribute>
      <xsl:attribute name="id"><xsl:value-of select="current()/tei:note/@xml:id" /></xsl:attribute>
      <xsl:element name="a">
        <xsl:attribute name="href">#tdm</xsl:attribute>
        <xsl:text>Tullio De Mauro</xsl:text>
      </xsl:element>
      <xsl:text> </xsl:text>
      <xsl:value-of select="substring($id_nota, 12)" /><xsl:text> : </xsl:text>
      <xsl:value-of select="current()" />
    </xsl:element>
   </xsl:template>

   


</xsl:stylesheet>   


