<?xml version="1.0" encoding="UTF-8"?>
<!--  -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:output method="xml" indent="yes" encoding="ISO-8859-2"/>
	<!-- <xsl:key name="sifra-analize" match="NazivAnalize" use="@Sifra" /> -->

	<xsl:attribute-set name="tablica">
		<xsl:attribute name="border">
			<xsl:text>0.2pt solid black</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="padding">
			<xsl:text>1mm</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-family">
			<xsl:text>Arial</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>10pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="obicno">
		<xsl:attribute name="font-family">
			<xsl:text>Arial</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>11pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="obicno10">
		<xsl:attribute name="font-family">
			<xsl:text>Arial</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>10pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="fiksno09">
		<xsl:attribute name="font-family">
			<xsl:text>LucidaConsole</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>9pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="fiksno08">
		<xsl:attribute name="font-family">
			<xsl:text>LucidaConsole</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>8pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="fiksno05">
		<xsl:attribute name="font-family">
			<xsl:text>LucidaConsole</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>5pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="obicno9">
		<xsl:attribute name="font-family">
			<xsl:text>Arial</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>9pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="obicno8">
		<xsl:attribute name="font-family">
			<xsl:text>Arial</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>8pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="obicno7">
		<xsl:attribute name="font-family">
			<xsl:text>Arial</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>7pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="boldano">
		<xsl:attribute name="font-family">
			<xsl:text>ArialBold</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>11pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="boldano9">
		<xsl:attribute name="font-family">
			<xsl:text>ArialBold</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>9pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="boldano10">
		<xsl:attribute name="font-family">
			<xsl:text>ArialBold</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:text>10pt</xsl:text>
		</xsl:attribute>
	</xsl:attribute-set>
	<xsl:decimal-format decimal-separator="," grouping-separator="."/>
	<xsl:variable name="format">
		<xsl:text>#.##0,00#</xsl:text>
	</xsl:variable>
	<xsl:variable name="prored3">
		<xsl:text>3mm</xsl:text>
	</xsl:variable>
		<xsl:variable name="prored1">
		<xsl:text>1mm</xsl:text>
	</xsl:variable>
	<xsl:template match="/LIMS">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Glavna" margin-right="20mm" margin-left="20mm" margin-bottom="12mm" margin-top="10mm" page-width="21cm" page-height="29.7cm">
					<fo:region-body margin-top="0cm" margin-bottom="6.5cm"/>
					<fo:region-before extent="0cm"/>
					<fo:region-after region-name="footer-first" extent="6.5cm"/>					
				</fo:simple-page-master>
				<fo:simple-page-master master-name="OstaleGlavna" margin-right="20mm" margin-left="20mm" margin-bottom="12mm" margin-top="15mm" page-width="21cm" page-height="29.7cm">
					<fo:region-body margin-top="1cm" margin-bottom="4cm"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after region-name="footer-rest" extent="2.5cm"/>					
				</fo:simple-page-master>
				<fo:simple-page-master master-name="Ostale" margin-right="20mm" margin-left="20mm" margin-bottom="12mm" margin-top="15mm" page-width="21cm" page-height="29.7cm">
					<fo:region-body margin-top="1cm" margin-bottom="2cm"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after extent="0.5cm"/>					
				</fo:simple-page-master>
				<fo:simple-page-master master-name="Laboratorij" margin-right="20mm" margin-left="20mm" margin-bottom="12mm" margin-top="15mm" page-width="21cm" page-height="29.7cm">
					<fo:region-body margin-top="1cm" margin-bottom="2cm"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after extent="1.5cm"/>					
				</fo:simple-page-master>
				<fo:simple-page-master master-name="LabosiPosebTab" margin-right="20mm" margin-left="20mm" margin-bottom="12mm" margin-top="15mm" page-width="21cm" page-height="29.7cm">
					<fo:region-body margin-top="1cm" margin-bottom="2cm"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after extent="1.5cm"/>					
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="Izvjesce">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="Glavna" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="OstaleGlavna" page-position="rest"/>
						<fo:conditional-page-master-reference master-reference="OstaleGlavna"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="Zakljucci">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="OstaleGlavna" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="OstaleGlavna" page-position="rest"/>
						<fo:conditional-page-master-reference master-reference="OstaleGlavna"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="Prilog">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="Ostale" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="Ostale" page-position="rest"/>
						<fo:conditional-page-master-reference master-reference="Ostale"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="Labosi">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="Laboratorij" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="Laboratorij" page-position="rest"/>
						<fo:conditional-page-master-reference master-reference="Laboratorij"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="LaboratorijPosebnaTablica">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="LabosiPosebTab" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="LabosiPosebTab" page-position="rest"/>
						<fo:conditional-page-master-reference master-reference="LabosiPosebTab"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
			</fo:layout-master-set>
			<xsl:for-each select="Zahtjev">
				<xsl:variable name="fiksniStil" select="@FiksniFont='true'"/>
				<xsl:variable name="uneseno" select="VrijemeUnosa"/>
				<xsl:variable name="godina" select="substring($uneseno, 7, 4)"/>
				<xsl:variable name="kompozit" select="Kompozitnost"/>
				<!-- na temelju varijable "odgovarajuciRazlogZahtjeva" se kasnije određuje ispisuje li se "Konačna ocjena" i kolone "Ocjena ispravnosti"
					 i "Usklađenost u tablicama sa rezultatima analiza-->
				<xsl:variable name="odgovarajuciRazlogZahtjeva">
					<xsl:choose>
						<xsl:when test="RazlogZahtjeva[@ID='1' or @ID='2' or @ID='5']">true</xsl:when>
						<xsl:otherwise>false</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				
				<!-- flag koji označava da trenutan zahtjev ima minimalno 1 GAZ sa akreditiranim I neakreditiranim metodama 
						- uvjetuje ispis konačne ocjene -->
				<xsl:variable name="zahtjevImaMjesovitoAkreditiraneMetode">
					<xsl:choose>
						<xsl:when test="count(./ListaGrupaAPUZahtjeva
												/GrupaAPUZahtjeva
												/ListaDjelovaUzorka
												/DioUzorka
												/ListaAPUZahtjevaDijelaUzorka
												/APUZahtjevaDijelaUzorka
												/Akreditiranost[text()='true'])>0 and 
										count(./ListaGrupaAPUZahtjeva
												/GrupaAPUZahtjeva
												/ListaDjelovaUzorka
												/DioUzorka
												/ListaAPUZahtjevaDijelaUzorka
												/APUZahtjevaDijelaUzorka
												/Akreditiranost[text()='false'])>0">true</xsl:when>
						<xsl:otherwise>false</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<fo:page-sequence master-reference="Izvjesce" initial-page-number="1" force-page-count="no-force">
					<fo:static-content flow-name="footer-first">
						<fo:table table-layout="fixed" keep-together="always">
							<fo:table-column column-width="170mm"/>
							<fo:table-body>
								<xsl:if test="ListaDostaveIzvjesca[DostavaPartner]">
									<fo:table-row keep-with-next="always">
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno10">Dostaviti:</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:for-each select="ListaDostaveIzvjesca/DostavaPartner">
										<fo:table-row keep-with-next="always">
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="boldano10">
													<xsl:number value="position()" format="1. "/>
													<xsl:value-of select="./Ime"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-previous="always">
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="obicno10" font-size="9pt">
													<xsl:value-of select="./Adresa"/>,
													<xsl:value-of select="./PostanskiBroj"/>
													<xsl:text> </xsl:text>
													<xsl:value-of select="./Mjesto"/>
													<xsl:if test="./Drzava != 'Hrvatska'">,
														<xsl:value-of select="./Drzava"/>
													</xsl:if>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
								</xsl:if>
								<fo:table-row keep-with-next="always">
									<fo:table-cell display-align="after">
										<fo:block font-family="ArialBold" font-size="7pt" padding-top="5mm">Napomena:</fo:block>
										<fo:block font-family="Arial" font-size="7pt">1) Zabranjuje se isticanje imena Zavoda u tekstu deklaracije proizvoda osim ako nije ugovoreno posebnim ugovorom.</fo:block>
										<fo:block font-family="Arial" font-size="7pt">2) Ispitni izvještaj rezultat je elektroničke obrade podataka te je punovažeći bez žiga i potpisa.</fo:block>
										<fo:block font-family="Arial" font-size="7pt">3) Rezultati ispitivanja odnose se isključivo na ispitivani uzorak. Ne smiju se umnožavati bez odobrenja Zavoda.</fo:block>
										<fo:block font-family="Arial" font-size="7pt">4) Akreditirane metode označene su u Ispitnom izvještaju<!--  fo:external-graphic padding="2px" width="8px" height="8px" src="http://localhost/lims/media/akred2.gif"/-->
										</fo:block>
										
										<xsl:if test="Revizija">									
											<fo:block font-family="Arial" font-size="7pt">5) Izdavanjem izmijenjenog izdanja prestaje važiti prijašnji ispitni izvještaj. Molimo, prijašnji ispitni izvještaj uništiti ili vratiti u Zavod.</fo:block>
											<xsl:if test="AkredAtrKat[text()='true']">
												<fo:block font-family="Arial" font-size="7pt">6) Hrvatski zavod za javno zdravstvo akreditiran je za uzorkovanje vode za piće za odabrane fizikalno-kemijske, kemijske i mikrobiološke pokazatelje.</fo:block>
											</xsl:if>
										</xsl:if>									
										<xsl:if test="AkredAtrKat[text()='true'] and not(Revizija)">
											<fo:block font-family="Arial" font-size="7pt">5) Hrvatski zavod za javno zdravstvo akreditiran je za uzorkovanje vode za piće za odabrane fizikalno-kemijske, kemijske i mikrobiološke pokazatelje.</fo:block>
										</xsl:if>
										<fo:table keep-with-previous="always">
											<fo:table-column column-width="25mm"/>
											<fo:table-column column-width="35mm"/>
											<fo:table-column column-width="50mm"/>
											<fo:table-column column-width="60mm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell border-top="0.5pt solid black">
														<fo:block text-align="left" xsl:use-attribute-sets="obicno9">O-SZE-28</fo:block>
													</fo:table-cell>
													<fo:table-cell border-top="0.5pt solid black">
														<fo:block text-align="left" xsl:use-attribute-sets="obicno9">Izdanje/preradba: 1/1</fo:block>
													</fo:table-cell>
													<fo:table-cell border-top="0.5pt solid black">
														<fo:block text-align="center" xsl:use-attribute-sets="obicno9">Stranica: <fo:page-number/>
												/ <fo:page-number-citation>
																<xsl:attribute name="ref-id">Z<xsl:value-of select="count(preceding::Zahtjev) + 1"/>
																</xsl:attribute>
															</fo:page-number-citation>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border-top="0.5pt solid black">
														<fo:block text-align="end" xsl:use-attribute-sets="obicno9">
															<xsl:if test="@ID">
																<xsl:value-of select="@ID"/>/<xsl:value-of select="$godina"/>
															</xsl:if>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:static-content>
					<fo:static-content flow-name="footer-rest">
						<fo:block font-family="ArialBold" font-size="7pt">Napomena:</fo:block>
						<fo:block font-family="Arial" font-size="7pt">1) Zabranjuje se isticanje imena Zavoda u tekstu deklaracije proizvoda osim ako nije ugovoreno posebnim ugovorom.</fo:block>
						<fo:block font-family="Arial" font-size="7pt">2) Ispitni izvještaj rezultat je elektroničke obrade podataka te je punovažeći bez žiga i potpisa.</fo:block>
						<fo:block font-family="Arial" font-size="7pt">3) Rezultati ispitivanja odnose se isključivo na ispitivani uzorak. Ne smiju se umnožavati bez odobrenja Zavoda.</fo:block>
						<fo:block font-family="Arial" font-size="7pt">4) Akreditirane metode označene su u Ispitnom izvještaju<!-- fo:external-graphic padding="2px" width="8px" height="8px" src="http://localhost/lims/media/akred2.gif"/-->
						</fo:block>
						<xsl:if test="AkredAtrKat[text()='true']">
							<fo:block font-family="Arial" font-size="7pt">5) Hrvatski zavod za javno zdravstvo akreditiran je za uzorkovanje vode za piće za odabrane fizikalno-kemijske, kemijske i mikrobiološke pokazatelje.</fo:block>
						</xsl:if>
						<fo:table>
							<fo:table-column column-width="25mm"/>
							<fo:table-column column-width="35mm"/>
							<fo:table-column column-width="50mm"/>
							<fo:table-column column-width="60mm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-top="0.5pt solid black">
										<fo:block text-align="left" xsl:use-attribute-sets="obicno9">O-SZE-28</fo:block>
									</fo:table-cell>
									<fo:table-cell border-top="0.5pt solid black">
										<fo:block text-align="left" xsl:use-attribute-sets="obicno9">Izdanje/preradba: 1/1</fo:block>
									</fo:table-cell>
									<fo:table-cell border-top="0.5pt solid black">
										<fo:block text-align="center" xsl:use-attribute-sets="obicno9">Stranica: <fo:page-number/>
											/ <fo:page-number-citation>
												<xsl:attribute name="ref-id">Z<xsl:value-of select="count(preceding::Zahtjev) + 1"/>
												</xsl:attribute>
											</fo:page-number-citation>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-top="0.5pt solid black">
										<fo:block text-align="end" xsl:use-attribute-sets="obicno9">
											<xsl:if test="@ID">
												<xsl:value-of select="@ID"/>/<xsl:value-of select="$godina"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:static-content>
					<fo:flow flow-name="xsl-region-body">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="35mm"/>
							<fo:table-column column-width="123mm"/>
							<fo:table-column column-width="22mm"/>
							<fo:table-body>
								<fo:table-row>
								<!--  
									<fo:table-cell>
										<fo:external-graphic width="35mm" src="http://localhost/lims/media/logo_hzjz2.gif"/>
									</fo:table-cell>-->
									<fo:table-cell>
										<fo:block text-align="center" xsl:use-attribute-sets="boldano9">Republika Hrvatska</fo:block>
										<fo:block text-align="center" xsl:use-attribute-sets="boldano9">
											<xsl:value-of select="Zaglavlje/NazivZavoda"/>
										</fo:block>
										<fo:block text-align="center" xsl:use-attribute-sets="boldano9">
											<xsl:value-of select="Zaglavlje/NazivSluzbe"/>
										</fo:block>
										<xsl:if test="substring-before(VrstaUzorka/@BrojVrsteUzorka, '.') &lt; 22 or VrstaUzorka/@BrojVrsteUzorka &lt; 22">
											<xsl:choose>
												<xsl:when test="contains(PozicijaPotpisnika, 'aktivne')">
													<fo:block text-align="center" xsl:use-attribute-sets="boldano9">
														Odjel za dodatke prehrani i biološki aktivne tvari
													</fo:block>
												</xsl:when>
												<xsl:otherwise>
													<fo:block text-align="center" xsl:use-attribute-sets="boldano9">
														Odjel za ispitivanje zdravstvene ispravnosti hrane
													</fo:block>
												</xsl:otherwise>
											</xsl:choose>
											<fo:block text-align="center" xsl:use-attribute-sets="obicno9">
												Zagreb, Rockefellerova 7
											</fo:block>
											<fo:block text-align="center" xsl:use-attribute-sets="obicno9">
												Tel: (01) 46 83 007, Fax: (01) 48 63 365, <xsl:value-of select="Zaglavlje/WebAdresa"/>
											</fo:block>
										</xsl:if>
										<xsl:if test="(substring-before(VrstaUzorka/@BrojVrsteUzorka, '.') &gt; 22 and substring-before(VrstaUzorka/@BrojVrsteUzorka, '.') &lt; 31)              or (VrstaUzorka/@BrojVrsteUzorka &gt; 22 and VrstaUzorka/@BrojVrsteUzorka &lt; 31)">
											<fo:block text-align="center" xsl:use-attribute-sets="boldano9">
												Odjel za kontrolu zdravstvene ispravnosti voda i vodoopskrbu
											</fo:block>
											<fo:block text-align="center" xsl:use-attribute-sets="obicno9">
												Zagreb, Rockefellerova 7
											</fo:block>
											<fo:block text-align="center" xsl:use-attribute-sets="obicno9">
												Tel: (01) 46 83 009, Fax: (01) 46 83 009
											</fo:block>
										</xsl:if>
										<xsl:if test="substring-before(VrstaUzorka/@BrojVrsteUzorka, '.') &gt; 31 or VrstaUzorka/@BrojVrsteUzorka &gt; 31">
											<fo:block text-align="center" xsl:use-attribute-sets="boldano9">
												Odjel za predmete opće uporabe
											</fo:block>
											<fo:block text-align="center" xsl:use-attribute-sets="obicno9">
												Zagreb, Rockefellerova 7
											</fo:block>
											<fo:block text-align="center" xsl:use-attribute-sets="obicno9">
												Tel: (01) 46 83 007, Fax: (01) 48 63 365, <xsl:value-of select="Zaglavlje/WebAdresa"/>												
											</fo:block>
										</xsl:if>
									</fo:table-cell>
									<fo:table-cell padding-top="2mm">
										<xsl:if test="count(//LIMS/Zahtjev/Atribut[@Akreditiran='true'])&gt;0 or count(//LIMS/Zahtjev/ListaGrupaAPUZahtjeva/GrupaAPUZahtjeva/ListaDjelovaUzorka/DioUzorka/ListaAPUZahtjevaDijelaUzorka/APUZahtjevaDijelaUzorka/Akreditiranost[text()='true'])&gt;0">
											<!--  <fo:external-graphic width="15mm" src="http://localhost/lims/media/logo_haa_hzjz.gif"/>-->
										</xsl:if>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table table-layout="fixed" padding-top="{$prored3}">
							<fo:table-column column-width="85mm"/>
							<fo:table-column column-width="85mm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
									</fo:table-cell>
									<fo:table-cell>
										<xsl:if test="@DatumIzvjesca">
											<fo:block xsl:use-attribute-sets="obicno9" text-align="right">Datum:
												<xsl:value-of select="substring(@DatumIzvjesca, 0, 12)"/>
											</fo:block>
										</xsl:if>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block> </fo:block>
						<fo:block padding-top="2*{$prored3}" font-family="ArialBold" font-size="15pt" text-align="center">ISPITNI IZVJEŠTAJ</fo:block>
						<xsl:if test="@Draft='true'">
							<fo:block font-family="ArialBold" font-size="12pt" text-align="center">DRAFT</fo:block>
						</xsl:if>
						<xsl:if test="Superanaliza">
							<fo:block font-family="ArialBold" font-size="12pt" text-align="center">SUPERANALIZA</fo:block>
						</xsl:if>
						<fo:block> </fo:block>
						<fo:block> </fo:block>
						<fo:table table-layout="fixed">
							<fo:table-column column-width="50mm"/>
							<fo:table-column column-width="120mm"/>
							<fo:table-body>
								<xsl:if test="@ID">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano">Broj ispitnog izvještaja:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:table table-layout="fixed">
												<fo:table-column column-width="40mm"/>
												<fo:table-column column-width="30mm"/>
												<fo:table-column column-width="30mm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell>
															<fo:block xsl:use-attribute-sets="boldano">
																<xsl:value-of select="@ID"/>
																<xsl:if test="Revizija">
									 (<xsl:value-of select="StariID"/>)<fo:inline xsl:use-attribute-sets="obicno" font-size=".75em" vertical-align="super">5</fo:inline>
																</xsl:if>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell>
															<xsl:if test="AlternativniBroj">
																<fo:block xsl:use-attribute-sets="boldano" text-align="right">Oznaka uzorka: </fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell>
															<xsl:if test="AlternativniBroj">
																<fo:block xsl:use-attribute-sets="boldano" white-space-collapse="false">
																	<xsl:value-of select="AlternativniBroj"/>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="NazivUzorka[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">
												Naziv i identifikacija uzorka:
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" white-space-collapse="false">
												<xsl:value-of select="NazivUzorka"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Atribut">
									<xsl:for-each select="Atribut">
										<xsl:if test="@AtributNaziv = 'Opis' and @AtributVrijednost and not(@AtributVrijednost='')">
											<fo:table-row>
												<fo:table-cell>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block xsl:use-attribute-sets="boldano9" white-space-collapse="false">
														<xsl:value-of select="@AtributVrijednost"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:if>
									</xsl:for-each>
								</xsl:if>
								<xsl:if test="VrstaUzorka[@BrojVrsteUzorka]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Vrsta uzorka:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
												<xsl:value-of select="VrstaUzorka"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Zahtjevatelj[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Naručitelj:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" white-space-collapse="false">
												<xsl:value-of select="Zahtjevatelj"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Zahtjevatelj/@Adresa) or (Zahtjevatelj/@Mjesto) or (Zahtjevatelj/@Drzava)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
												<xsl:if test="Zahtjevatelj/@Adresa">
													<xsl:value-of select="Zahtjevatelj/@Adresa"/>, </xsl:if>
												<xsl:if test="Zahtjevatelj/@PostanskiBroj">
													<xsl:value-of select="Zahtjevatelj/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Zahtjevatelj/@Mjesto">
													<xsl:value-of select="Zahtjevatelj/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Zahtjevatelj/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Zahtjevatelj/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="TipZahtjeva[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Tip zahtjeva:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
												<xsl:value-of select="TipZahtjeva"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="OznakaDokumentaZahtjevatelja[text()] | KlasaDokumentaZahtjevatelja[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:if test="OznakaDokumentaZahtjevatelja[text()]">
												<fo:block xsl:use-attribute-sets="obicno9">
													Ur.br.:	<xsl:value-of select="OznakaDokumentaZahtjevatelja"/>
												</fo:block>
											</xsl:if>
											<xsl:if test="KlasaDokumentaZahtjevatelja[text()]">
												<fo:block xsl:use-attribute-sets="obicno9">
													Klasa: <xsl:value-of select="KlasaDokumentaZahtjevatelja"/>
												</fo:block>
											</xsl:if>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>

								<xsl:if test="Vlasnik[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" font-size="9pt">Vlasnik:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:value-of select="Vlasnik"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Vlasnik/@Adresa) or (Vlasnik/@Mjesto)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:if test="Vlasnik/@Adresa">
													<xsl:value-of select="Vlasnik/@Adresa"/>, </xsl:if>
												<xsl:if test="Vlasnik/@PostanskiBroj">
													<xsl:value-of select="Vlasnik/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Vlasnik/@Mjesto">
													<xsl:value-of select="Vlasnik/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Vlasnik/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Vlasnik/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Proizvodjac[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" font-size="9pt">Proizvođač:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:value-of select="Proizvodjac"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Proizvodjac/@Adresa) or (Proizvodjac/@Mjesto)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:if test="Proizvodjac/@Adresa">
													<xsl:value-of select="Proizvodjac/@Adresa"/>, </xsl:if>
												<xsl:if test="Proizvodjac/@PostanskiBroj">
													<xsl:value-of select="Proizvodjac/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Proizvodjac/@Mjesto">
													<xsl:value-of select="Proizvodjac/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Proizvodjac/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Proizvodjac/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Korisnik[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" font-size="9pt">Korisnik:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:value-of select="Korisnik"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Korisnik/@Adresa) or (Korisnik/@Mjesto)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:if test="Korisnik/@Adresa">
													<xsl:value-of select="Korisnik/@Adresa"/>, </xsl:if>
												<xsl:if test="Korisnik/@PostanskiBroj">
													<xsl:value-of select="Korisnik/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Korisnik/@Mjesto">
													<xsl:value-of select="Korisnik/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Korisnik/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Korisnik/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Uvoznik[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" font-size="9pt">Uvoznik:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:value-of select="Uvoznik"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Uvoznik/@Adresa) or (Uvoznik/@Mjesto)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:if test="Uvoznik/@Adresa">
													<xsl:value-of select="Uvoznik/@Adresa"/>, </xsl:if>
												<xsl:if test="Uvoznik/@PostanskiBroj">
													<xsl:value-of select="Uvoznik/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Uvoznik/@Mjesto">
													<xsl:value-of select="Uvoznik/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Uvoznik/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Uvoznik/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Spediter[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" font-size="9pt">Špediter:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:value-of select="Spediter"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Spediter/@Adresa) or (Spediter/@Mjesto)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt" white-space-collapse="false">
												<xsl:if test="Spediter/@Adresa">
													<xsl:value-of select="Spediter/@Adresa"/>, </xsl:if>
												<xsl:if test="Spediter/@PostanskiBroj">
													<xsl:value-of select="Spediter/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Spediter/@Mjesto">
													<xsl:value-of select="Spediter/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Spediter/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Spediter/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Isporucitelj[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Isporučitelj:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
												<xsl:value-of select="Isporucitelj"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="(Isporucitelj/@Adresa) or (Isporucitelj/@Mjesto)">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9"> </fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
												<xsl:if test="Isporucitelj/@Adresa">
													<xsl:value-of select="Isporucitelj/@Adresa"/>, </xsl:if>
												<xsl:if test="Isporucitelj/@PostanskiBroj">
													<xsl:value-of select="Isporucitelj/@PostanskiBroj"/> </xsl:if>
												<xsl:if test="Isporucitelj/@Mjesto">
													<xsl:value-of select="Isporucitelj/@Mjesto"/>
												</xsl:if>
												<xsl:if test="Isporucitelj/@Drzava != 'Hrvatska'">,
													<xsl:value-of select="Isporucitelj/@Drzava"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="UvozniZakljucak[text()]  | UvoznaPozicija[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9" font-size="9pt">
												<xsl:if test="UvozniZakljucak[text()]">Uv. zaključak:</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:table table-layout="fixed">
												<fo:table-column column-width="50mm"/>
												<fo:table-column column-width="30mm"/>
												<fo:table-column column-width="30mm"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell>
															<xsl:if test="UvozniZakljucak[text()]">
																<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt">
																	<xsl:value-of select="UvozniZakljucak"/>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell>
															<xsl:if test="UvoznaPozicija[text()]">
																<fo:block xsl:use-attribute-sets="boldano9" text-align="right">
																	Pozicija:
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell>
															<xsl:if test="UvoznaPozicija[text()]">
																<fo:block xsl:use-attribute-sets="obicno9" font-size="9pt">
																	<xsl:value-of select="UvoznaPozicija"/>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>

								<xsl:if test="Atribut[@AtributNaziv='Uzorkovatelj']">
									<fo:table-row padding-top="{$prored3}">
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Uzorkovao/la:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9">
												<xsl:value-of select="Atribut[@AtributNaziv='Uzorkovatelj']/@AtributVrijednost"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Atribut">
									<xsl:for-each select="Atribut">
										<xsl:if test="not(@Preskoci)">
											<xsl:if test="@AtributVrijednost and not(@AtributVrijednost = '') and not(@AtributNaziv = 'Opis') and not(@AtributNaziv='Uzorkovatelj') and not(@AtributNaziv='Dostavio')  and not(@AtributNaziv='Vrsta ispitivanja')">
												<fo:table-row>
													<fo:table-cell>
														<fo:block xsl:use-attribute-sets="boldano9">
															<xsl:value-of select="@AtributNaziv"/>
															<xsl:if test="@Akreditiran='true'">  <!-- fo:external-graphic padding="2px" width="8px" height="8px" src="http://localhost/lims/media/akred2.gif"/-->
															</xsl:if>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell>
														<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
															<xsl:value-of select="@AtributVrijednost"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</xsl:if>
										</xsl:if>
									</xsl:for-each>
								</xsl:if>
								<xsl:if test="Lokacija[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Lokacija uzorkovanja:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9">
												<xsl:value-of select="Lokacija"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="VrijemeUzorkovanja[text()]">
									<fo:table-row>
										<fo:table-cell>
											<xsl:if test="VrijemeUzorkovanja[text()]">
												<fo:block xsl:use-attribute-sets="boldano9">Vrijeme uzorkovanja:</fo:block>
											</xsl:if>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9">
												<xsl:if test="VrijemeUzorkovanja[text()]">
													<xsl:call-template name="formatVrijeme">
														<xsl:with-param name="vrijeme" select="VrijemeUzorkovanja"/>
													</xsl:call-template>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="Atribut[@AtributNaziv='Dostavio']">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">Dostavio:</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9">
												<xsl:value-of select="Atribut[@AtributNaziv='Dostavio']/@AtributVrijednost"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="VrijemeDostave[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">
							Vrijeme dostave:
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-height = "fixed">
											<fo:block xsl:use-attribute-sets="obicno9">
												<xsl:call-template name="formatVrijeme">
													<xsl:with-param name="vrijeme" select="VrijemeDostave"/>
												</xsl:call-template>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:if test="UrudzbeniBroj[text()]">
									<fo:table-row>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="boldano9">
						Vrsta ispitivanja:
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9" white-space-collapse="false">
												<xsl:value-of select="UrudzbeniBroj"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>

								<xsl:if test="VrijemePocetkaPrveAnalize | VrijemeZavrsetkaZadnjeAnalize">
									<fo:table-row>
										<fo:table-cell>											
											<fo:block xsl:use-attribute-sets="boldano9">Početak/kraj ispitivanja:</fo:block>											
										</fo:table-cell>
										<fo:table-cell>
											<fo:block xsl:use-attribute-sets="obicno9">
												<xsl:if test="VrijemePocetkaPrveAnalize[text()]">
													<xsl:call-template name="formatVrijeme">
														<xsl:with-param name="vrijeme" select="VrijemePocetkaPrveAnalize" />
													</xsl:call-template>										
												</xsl:if>
												<xsl:if test="VrijemePocetkaPrveAnalize[text()] or VrijemeZavrsetkaZadnjeAnalize[text()]">
													/
												</xsl:if>
												<xsl:if test="VrijemeZavrsetkaZadnjeAnalize[text()]">
													<xsl:call-template name="formatVrijeme">
														<xsl:with-param name="vrijeme" select="VrijemeZavrsetkaZadnjeAnalize" />
													</xsl:call-template>										
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<!-- Konačna ocjena se ispisuje na prvoj stranici samo kada:
										1. sve metode su akreditirane ili niti jedna metoda nije akreditirana (na razini cijelog zahtjeva)
										2. ako ID rzloga zahtjevanja nije ID = 1 ili 2 ili 5-->

								<xsl:if test="Ispravnost[@ID] and RazlogZahtjeva[@ID='1' or @ID='2' or @ID='5']">									
										<fo:table-row padding-top="{$prored3}">
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="obicno">&#xA0;</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>												
												<fo:block xsl:use-attribute-sets="boldano">Konačna ocjena:</fo:block>												
											</fo:table-cell>
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="obicno">
													<fo:inline xsl:use-attribute-sets="boldano">																												
														<xsl:choose>
															<xsl:when test= "$zahtjevImaMjesovitoAkreditiraneMetode = 'true'">Zaključak je naveden na kraju ispitnog izvještaja</xsl:when>
															<xsl:otherwise>																	
																<xsl:if test="Ispravnost/@ID='1'">NE ODGOVARA</xsl:if>
																<xsl:if test="Ispravnost/@ID='2'">ODGOVARA</xsl:if>																	
															</xsl:otherwise>
														</xsl:choose>															
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
							</fo:table-body>
						</fo:table>
						<fo:block> </fo:block>
						<fo:table table-layout="fixed">
							<fo:table-column column-width="170mm"/>
							<fo:table-body>
							</fo:table-body>
						</fo:table>
						<fo:block> </fo:block>
						<fo:block padding-top="7mm"/>
						<fo:block>
							<xsl:if test="Potpisnik[text()]">
								<!-- TODO dodati dijeljenje pozicije u dva reda  problem pozicioniranja-->
								<fo:block xsl:use-attribute-sets="obicno" text-align="right">
									<xsl:value-of select="PozicijaPotpisnika"/>
								</fo:block>
								<fo:block xsl:use-attribute-sets="obicno" text-align="right">
									<xsl:value-of select="Potpisnik"/>
								</fo:block>
							</xsl:if>
						</fo:block>
					</fo:flow>
				</fo:page-sequence>

<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->				
		<!-- REZULTATI LABORATORIJSKIH ISPITIVANJA -->
			<!-- ovdje se ispisuju sve analize koje se ne ispisuju u prilogu 1 -->
				<xsl:for-each select="./ListaGrupaAPUZahtjeva/GrupaAPUZahtjeva">
					<xsl:if test="count(./ListaDjelovaUzorka
										/DioUzorka
										/ListaAPUZahtjevaDijelaUzorka
										/APUZahtjevaDijelaUzorka[AnalizaSeIspisujeUPrilogu[text()= 'false'] and AnalizaSeIspisujeUPriloguUTablici[text()= 'false']])>0">
						<xsl:variable name="vode" select="@ID='1'"/>
						<xsl:variable name="mbhrane" select="@ID='2'"/>
						
						<!-- flag GAZImaMjesovitoAkreditiraneMetode definira ispisuje li se ili ne kolona Ocjena ispravnosti za svaki odsjek pojedinačno-->
						<xsl:variable name="GAZImaMjesovitoAkreditiraneMetode">
							<xsl:choose>
								<xsl:when test="count(./ListaDjelovaUzorka
														/DioUzorka
														/ListaAPUZahtjevaDijelaUzorka
														/APUZahtjevaDijelaUzorka
														/Akreditiranost[text()='true'])>0 and 
												count(./ListaDjelovaUzorka
														/DioUzorka
														/ListaAPUZahtjevaDijelaUzorka
														/APUZahtjevaDijelaUzorka
														/Akreditiranost[text()='false'])>0">true</xsl:when>
								<xsl:otherwise>false</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						
						<!-- kad je flag true, zaključak se za POU odjel ispisuje u prilogu 2 -->
						<xsl:variable name="POUZakljucakUPrilogu">
							<xsl:choose>
								<xsl:when test="(count(./ListaDjelovaUzorka
													/DioUzorka
													/ListaAPUZahtjevaDijelaUzorka
													/APUZahtjevaDijelaUzorka
													/AnalizaSeIspisujeUPrilogu[text()= 'true'])>0 or 
												count(./ListaDjelovaUzorka
													/DioUzorka
													/ListaAPUZahtjevaDijelaUzorka
													/APUZahtjevaDijelaUzorka
													/AnalizaSeIspisujeUPriloguUTablici[text()= 'true'])>0) and
												./GrupaKorisnikaID=4">true</xsl:when>
								<xsl:otherwise>false</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>

						<xsl:variable name="granica">
							<xsl:choose>
								<xsl:when test="GrupaKorisnikaID='8' or 
												GrupaKorisnikaID='5' or 
												GrupaKorisnikaID='7' or 
												GrupaKorisnikaID='308' or 
												GrupaKorisnikaID='309' or 
												GrupaKorisnikaID='306' or 
												GrupaKorisnikaID='307' or 
												GrupaKorisnikaID='3'">
								NDK*
								</xsl:when>
								<xsl:when test="GrupaKorisnikaID='6'">
								LOQ*
								</xsl:when>
								<xsl:when test="GrupaKorisnikaID='1' or GrupaKorisnikaID='301'">
								MDK*
								</xsl:when>
								<xsl:otherwise>
								Granična vrijednost*
								</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						
						<xsl:variable name="granicaOpis">
							<xsl:choose>
								<xsl:when test="GrupaKorisnikaID='8' or 
												GrupaKorisnikaID='5' or 
												GrupaKorisnikaID='7' or 
												GrupaKorisnikaID='308' or 
												GrupaKorisnikaID='309' or 
												GrupaKorisnikaID='306' or 
												GrupaKorisnikaID='307' or 
												GrupaKorisnikaID='3'">
								* najveća dopuštena količina prema zakonskim propisima navedenim u zaključku
								</xsl:when>
								<xsl:when test="GrupaKorisnikaID='6'">
								* Rezultati ispitivanja odnose se isključivo na ispitivani uzorak. Rezultati izraženi kao manje od (&lt;) odnose se na granicu kvantifikacije pojedine metode. n.d. - nije detektirano.
								</xsl:when>
								<xsl:when test="GrupaKorisnikaID='1' or GrupaKorisnikaID='301'">
								* Maksimalno dozvoljena koncentracija prema Pravilniku o parametrima sukladnosti i metodama analize vode za ljudsku potrošnju (NN br. 125/13, 141/13 i 128/15)
								</xsl:when>
								<xsl:otherwise>* Granična vrijednost:</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						
						<fo:page-sequence master-reference="Labosi" force-page-count="no-force">
							<fo:static-content flow-name="xsl-region-before">
								<fo:table table-layout="fixed" padding-top="{$prored3}">
									<fo:table-column column-width="170mm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-bottom="1pt solid black">
												<fo:block xsl:use-attribute-sets="boldano" text-align="left">Broj ispitnog izvještaja/Oznaka uzorka:
													<xsl:if test="../../@ID">
														<xsl:value-of select="../../@ID"/>
													</xsl:if>
								/
													<xsl:if test="../../AlternativniBroj">
														<xsl:value-of select="../../AlternativniBroj"/>
													</xsl:if>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:static-content>
							<fo:static-content flow-name="xsl-region-after">
								<fo:block xsl:use-attribute-sets="obicno8">
								Napomena : Rezultati ispitivanja odnose se isključivo na ispitivani uzorak.
								Rezultati izraženi kao manje od (&lt;) odnose se na granicu kvantifikacije pojedine metode.		
								n.d. - nije detektirano.
								</fo:block>
								<fo:table>
									<fo:table-column column-width="25mm"/>
									<fo:table-column column-width="35mm"/>
									<fo:table-column column-width="50mm"/>
									<fo:table-column column-width="60mm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-top="0.5pt solid black">
												<fo:block text-align="left" xsl:use-attribute-sets="obicno9">O-SZE-28</fo:block>
											</fo:table-cell>
											<fo:table-cell border-top="0.5pt solid black">
												<fo:block text-align="left" xsl:use-attribute-sets="obicno9">Izdanje/preradba: 1/1</fo:block>
											</fo:table-cell>
											<fo:table-cell border-top="0.5pt solid black">
												<fo:block text-align="center" xsl:use-attribute-sets="obicno9">Stranica: <fo:page-number/>
													/ <fo:page-number-citation>
														<xsl:attribute name="ref-id">Z<xsl:value-of select="count(preceding::Zahtjev) + 1"/>
														</xsl:attribute>
													</fo:page-number-citation>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border-top="0.5pt solid black">
												<fo:block text-align="end" xsl:use-attribute-sets="boldano9">
													<xsl:if test="../../@ID">
														<xsl:value-of select="../../@ID"/>/<xsl:value-of select="$godina"/>
													</xsl:if>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:static-content>
							<fo:flow flow-name="xsl-region-body">
								<xsl:if test="position()=1">
									<fo:block xsl:use-attribute-sets="boldano10" text-align = "center" padding-top="{$prored3}">REZULTATI LABORATORIJSKIH ISPITIVANJA</fo:block>            	
								</xsl:if>

								<fo:table table-layout="fixed" padding-top="{$prored3}">
									<fo:table-column column-width="22mm"/>
									<fo:table-column column-width="125mm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell display-align="center" padding="1px"/>	
											<fo:table-cell display-align="center">
												<fo:block xsl:use-attribute-sets="boldano9" text-align="center">
													<xsl:apply-templates select="./ImeGrupe"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								<fo:table table-layout="fixed" padding-top="{$prored3}">
									<fo:table-column column-width="50mm"/>
									<fo:table-column column-width="120mm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>												
												<fo:block xsl:use-attribute-sets="boldano10">Početak/kraj ispitivanja:</fo:block>												
											</fo:table-cell>

											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="obicno10">
													<xsl:if test="VrijemePocetkaAnalize[text()]">
														<xsl:call-template name="formatVrijeme">
															<xsl:with-param name="vrijeme" select="VrijemePocetkaAnalize"/>
														</xsl:call-template>
													</xsl:if>
													<xsl:if test="VrijemePocetkaAnalize[text()] or VrijemeZavrsetkaAnalize[text()]">
													/
													</xsl:if>
													<xsl:if test="VrijemeZavrsetkaAnalize[text()]">
														<xsl:call-template name="formatVrijeme">
															<xsl:with-param name="vrijeme" select="VrijemeZavrsetkaAnalize"/>
														</xsl:call-template>
													</xsl:if>

													<xsl:if test="not(VrijemeZavrsetkaAnalize[text()])">
														<xsl:call-template name="formatVrijeme">
															<xsl:with-param name="vrijeme" select="Potpisnik/@VrijemePotpisivanja"/>
														</xsl:call-template>
													</xsl:if>																			 
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>

								<xsl:if test="../../NazivUzorka[text()]">
									<fo:block xsl:use-attribute-sets="obicno10" padding-top="{$prored3}">Naziv uzorka:
										<fo:inline xsl:use-attribute-sets="boldano10" white-space-collapse="false">
											<xsl:value-of select="../../NazivUzorka"/>
										</fo:inline>
									</fo:block>
								</xsl:if>

								<fo:block>							 
								</fo:block>
								
								<fo:table table-layout="fixed">
									<xsl:if test="($odgovarajuciRazlogZahtjeva = 'true') and ($GAZImaMjesovitoAkreditiraneMetode = 'false')">
										<fo:table-column column-width="40mm"/>
										<fo:table-column column-width="35mm"/>
										<fo:table-column column-width="25mm"/>
										<fo:table-column column-width="25mm"/>
										<fo:table-column column-width="25mm"/>
										<fo:table-column column-width="20mm"/>
									</xsl:if>
									<xsl:if test="($odgovarajuciRazlogZahtjeva = 'false') or ($GAZImaMjesovitoAkreditiraneMetode = 'true')">
										<fo:table-column column-width="45mm"/>
										<fo:table-column column-width="40mm"/>
										<fo:table-column column-width="25mm"/>
										<fo:table-column column-width="30mm"/>
										<fo:table-column column-width="30mm"/>
									</xsl:if>
									<fo:table-header>
										<fo:table-row>
											<fo:table-cell xsl:use-attribute-sets="tablica">
												<fo:block text-align="center">Naziv parametra</fo:block>
											</fo:table-cell>
											<fo:table-cell xsl:use-attribute-sets="tablica">
												<fo:block text-align="center">Metoda</fo:block>
											</fo:table-cell>
											<fo:table-cell xsl:use-attribute-sets="tablica">
												<fo:block text-align="center">Mjerna jedinica</fo:block>
											</fo:table-cell>
											<fo:table-cell xsl:use-attribute-sets="tablica">
												<fo:block text-align="center">Rezultat</fo:block>
											</fo:table-cell>
											<fo:table-cell xsl:use-attribute-sets="tablica">
												<fo:block text-align="center">
													<xsl:value-of select="$granica"/>
												</fo:block>
											</fo:table-cell>
											<xsl:if test="(../../RazlogZahtjeva[@ID='1' or @ID='2' or @ID='5']) and 
														  ($GAZImaMjesovitoAkreditiraneMetode = 'false')">
												<fo:table-cell xsl:use-attribute-sets="tablica">
													<!-- TODO smanjiti font -->
													<fo:block text-align="center">Ocjena ispravnosti</fo:block>
												</fo:table-cell>
											</xsl:if>
										</fo:table-row>
									</fo:table-header>

									<fo:table-body>
										<xsl:for-each select="./ListaDjelovaUzorka/DioUzorka">
											<xsl:if test="last() &gt; 1">
												<fo:table-row>
													<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="6">
														<fo:block>
															<xsl:value-of select="./ImeDijelaUzorka"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</xsl:if>
											
											<xsl:for-each select="./ListaAPUZahtjevaDijelaUzorka/APUZahtjevaDijelaUzorka">
											<!-- ispis analiza u standardnu tablicu -->
												<xsl:if test="./AnalizaSeIspisujeUPrilogu[text()= 'false'] and ./AnalizaSeIspisujeUPriloguUTablici[text()= 'false']">	                    
													<xsl:if test="not(@Naslov='true')">
														<fo:table-row keep-together="always">
															<fo:table-cell xsl:use-attribute-sets="tablica">
																<fo:block>
																	<xsl:apply-templates select="./NazivAnalize"/>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell xsl:use-attribute-sets="tablica">
																<fo:block>
																	<xsl:apply-templates select="./Metoda"/>
																		<xsl:if test="./Akreditiranost[text()='true']">  
																		<!-- fo:external-graphic padding="2px" width="8px" height="8px" src="http://localhost/lims/media/akred2.gif"/-->
																	</xsl:if>
																</fo:block>
															</fo:table-cell>
															
															<xsl:choose>
																<xsl:when test="Mjerljivost='true'">
																	<xsl:if test="./Opisnost[text()='false']">
																		<fo:table-cell xsl:use-attribute-sets="tablica">
																			<fo:block>
																				<xsl:apply-templates select="./MjernaJedinica"/>
																			</fo:block>
																		</fo:table-cell>
																		
																		<fo:table-cell xsl:use-attribute-sets="tablica">
																			<fo:block text-align="right">
																				<xsl:if test="./OperatorRezultata[text()!='=']">
																					<xsl:value-of select="./OperatorRezultata"/>
																				</xsl:if>
																				<xsl:value-of select="./NumerickiRezultat"/>
																				<xsl:if test="./MjernaNesigurnost">
																					<xsl:value-of select="./MjernaNesigurnost"/>
																				</xsl:if>
																			</fo:block>
																		</fo:table-cell>
																		
																		<fo:table-cell xsl:use-attribute-sets="tablica">
																			<fo:block text-align="center">
																				<xsl:if test="./DonjaGranica[text()] and ./GornjaGranica[text()]">
																					<xsl:if test="./DonjaGranica[text()='0'] and ./GornjaGranica[text()='0']">
																						<xsl:apply-templates select="./GornjaGranica"/>
																					</xsl:if>
																					<xsl:if test="not(./DonjaGranica[text()='0'] and ./GornjaGranica[text()='0'])">
																						<xsl:apply-templates select="./DonjaGranica"/> - <xsl:apply-templates select="./GornjaGranica"/>
																					</xsl:if>
																				</xsl:if>

																				<xsl:if test="./DonjaGranica[text()] and not(./GornjaGranica[text()])">&gt;
																					<xsl:apply-templates select="./DonjaGranica"/>
																				</xsl:if>

																				<xsl:if test="not(./DonjaGranica[text()]) and ./GornjaGranica[text()]">
																					<xsl:if test="./GornjaGranica[text()!='0']">&lt;</xsl:if>
																					<xsl:apply-templates select="./GornjaGranica"/>
																				</xsl:if>
																			</fo:block>
																		</fo:table-cell>
																		
																	</xsl:if>
																	<xsl:if test="./Opisnost[text()='true']">
																		<xsl:if test="$mbhrane">
																			<fo:table-cell xsl:use-attribute-sets="tablica">
																				<fo:block>
																					<xsl:apply-templates select="./MjernaJedinica"/>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell xsl:use-attribute-sets="tablica">
																				<fo:block text-align="right">
																					<xsl:if test="./OperatorRezultata[text()!='=']">
																						<xsl:value-of select="./OperatorRezultata"/>
																					</xsl:if>
																					<xsl:value-of select="./OpisniRezultat"/>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell xsl:use-attribute-sets="tablica">
																				<fo:block text-align="center">
																					<xsl:if test="./OpisnaDonjaGranica[text()] and ./OpisnaGornjaGranica[text()]">
																						<xsl:if test="./OpisnaDonjaGranica[text()] = ./OpisnaGornjaGranica[text()]">
																							<xsl:value-of select="./OpisnaGornjaGranica"/>
																						</xsl:if>
																						<xsl:if test="not(./OpisnaDonjaGranica[text()] = ./OpisnaGornjaGranica[text()])">
																							<xsl:value-of select="./OpisnaDonjaGranica"/>- <xsl:value-of select="./OpisnaGornjaGranica"/>
																						</xsl:if>
																					</xsl:if>
																					<xsl:if test="./OpisnaDonjaGranica[text()] and not(./OpisnaGornjaGranica[text()])">
																						<xsl:value-of select="./OpisnaDonjaGranica"/>
																					</xsl:if>
																					<xsl:if test="not(./OpisnaDonjaGranica[text()]) and ./OpisnaGornjaGranica[text()]">
																						<xsl:value-of select="./OpisnaGornjaGranica"/>
																					</xsl:if>
																				</fo:block>
																			</fo:table-cell>
																		</xsl:if>
																		
																		<xsl:if test="not($mbhrane)">
																			<fo:table-cell xsl:use-attribute-sets="tablica">
																				<fo:block>
																					<xsl:apply-templates select="./MjernaJedinica"/>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell xsl:use-attribute-sets="tablica">
																				<fo:block text-align="left">
																					<xsl:apply-templates select="./OpisniRezultat"/>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell xsl:use-attribute-sets="tablica">
																				<fo:block text-align="left">
																					<xsl:value-of select="./OpisnaGornjaGranica"/>
																					<xsl:value-of select="./OpisnaDonjaGranica"/>
																				</fo:block>
																			</fo:table-cell>
																		</xsl:if>
																	</xsl:if>
																</xsl:when>
																<xsl:otherwise>
																	<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="6">
																		<xsl:choose>
																			<xsl:when test="$fiksniStil">
																				<fo:block text-align="center" xsl:use-attribute-sets="fiksno09">
																					<xsl:if test="Komentar[text()]">
																						<xsl:apply-templates select="Komentar"/>
																					</xsl:if>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:block text-align="center">
																					<xsl:if test="Komentar[text()]">
																						<xsl:apply-templates select="Komentar"/>
																					</xsl:if>
																				</fo:block>
																			</xsl:otherwise>
																		</xsl:choose>
																	</fo:table-cell>
																</xsl:otherwise>
															</xsl:choose>
															<!-- Ocjena ispravnosti se ispisuje SAMO kada:
																	1. razlog zahtjeva 1 ili 2 ili 5 
																	2. sve metode akreditirane ili neakreditirane unutar pojedinog labosa-->
															<xsl:if test="(./Ispravnost[@ID]) and 
																			(($odgovarajuciRazlogZahtjeva = 'true') and ($GAZImaMjesovitoAkreditiraneMetode = 'false'))">
																<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="2">
																	<fo:block text-align="center">
																		<xsl:choose>
																			<xsl:when test="./Ispravnost/@ID='1'">NE</xsl:when>
																			<xsl:when test="./Ispravnost/@ID='2'">DA</xsl:when>
																			<xsl:otherwise>-</xsl:otherwise>
																		</xsl:choose>
																	</fo:block>
																</fo:table-cell>
															</xsl:if>
														</fo:table-row>
													</xsl:if>

													<xsl:if test="Komentar[text()] and Mjerljivost='true'">
														<fo:table-row>
															<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="6">
																<xsl:choose>
																	<xsl:when test="$fiksniStil">
																		<fo:block xsl:use-attribute-sets="fiksno09" white-space-collapse="false">
																			<xsl:if test="Komentar[text()]">
																				<xsl:apply-templates select="Komentar"/>
																			</xsl:if>
																		</fo:block>
																	</xsl:when>
																	<xsl:otherwise>
																		<fo:block white-space-collapse="false">
																			<xsl:if test="Komentar[text()]">
																				<xsl:apply-templates select="Komentar"/>
																			</xsl:if>
																		</fo:block>
																	</xsl:otherwise>
																</xsl:choose>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
												</xsl:if>
											</xsl:for-each>
										</xsl:for-each>	             
									</fo:table-body>
								</fo:table>
																
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="5mm"/>
									<fo:table-column column-width="165mm"/>
									<fo:table-body>		
										<xsl:if test="count(./ListaDjelovaUzorka
															/DioUzorka
															/ListaAPUZahtjevaDijelaUzorka
															/APUZahtjevaDijelaUzorka[Akreditiranost[text()='true']])>0">
											<fo:table-row keep-with-previous="always">
												<fo:table-cell number-columns-spanned="2">
													<fo:block xsl:use-attribute-sets="obicno9">
														<!-- fo:external-graphic padding="2px" width="8px" height="8px" src="http://localhost/lims/media/akred2.gif"/--> 
														- Metode za koje je Odjel akreditiran prema HRN EN ISO/IEC 17025:2007
													</fo:block>												
												</fo:table-cell>
											</fo:table-row>
										</xsl:if>
										
										<fo:table-row keep-with-previous="always">
											<fo:table-cell number-columns-spanned = "2">
												<fo:block text-align="left" xsl:use-attribute-sets="obicno8">
													<fo:leader />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										
										<fo:table-row keep-with-previous="always">
											<fo:table-cell number-columns-spanned = "2">
												<fo:block text-align="left" xsl:use-attribute-sets="obicno9" padding-bottom="{$prored3}">
													<xsl:choose>
														<xsl:when test="$granicaOpis!='* Granična vrijednost:' or
																		count(./ListaDjelovaUzorka
																				/DioUzorka
																				/ListaAPUZahtjevaDijelaUzorka
																				/APUZahtjevaDijelaUzorka
																				/GornjaGranica)>0 or 
																		count(./ListaDjelovaUzorka
																				/DioUzorka
																				/ListaAPUZahtjevaDijelaUzorka
																				/APUZahtjevaDijelaUzorka
																				/DonjaGranica)>0">
															<xsl:value-of select="$granicaOpis"/>
														</xsl:when>
														<xsl:otherwise>
															*-
														</xsl:otherwise>
													</xsl:choose>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										
										<xsl:if test="count(./ListaDjelovaUzorka
															/DioUzorka
															/ListaAPUZahtjevaDijelaUzorka
															/APUZahtjevaDijelaUzorka
															/TekstPravilnika[text()]) > 0">
											<xsl:for-each select ="./ListaDjelovaUzorka
																	/DioUzorka
																	/ListaAPUZahtjevaDijelaUzorka
																	/APUZahtjevaDijelaUzorka">
												<xsl:if test="TekstPravilnika[text()]">
													<fo:table-row keep-with-previous="always">
														<fo:table-cell>
															<fo:block/>
														</fo:table-cell>
														<fo:table-cell>
															<fo:block text-align="left" padding-bottom="{$prored1}*2" xsl:use-attribute-sets="obicno8" white-space-collapse="false">
																<xsl:apply-templates select ="./TekstPravilnika"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:if>															
											</xsl:for-each>
										</xsl:if>
										
									<!-- Zaključak se ispisuje odmah iza tablice sa rezultatima analize ako:  sve metode akreditirane || nije niti jedna || (gru_id = 11 && ima analize u prilogu) -->
										<xsl:if test = "$zahtjevImaMjesovitoAkreditiraneMetode = 'false' and not($POUZakljucakUPrilogu)">
											<fo:table-row keep-with-next="always">
												<fo:table-cell number-columns-spanned = "2">
													<xsl:if test="./Misljenje[text()] and not(./Misljenje[text() = '' or text() = '-&#8203;'])">
														<fo:block xsl:use-attribute-sets="boldano10" padding-top="{$prored3}*2">ZAKLJUČAK:</fo:block>
													</xsl:if>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row keep-with-next="always">
												<fo:table-cell number-columns-spanned = "2">
													<xsl:if test="./Misljenje[text()] and not(./Misljenje[text() = '' or text() = '-&#8203;'])">
														<fo:block xsl:use-attribute-sets="obicno10" padding-top="{$prored3}" white-space-collapse="false">
															<xsl:apply-templates select="./Misljenje"/>																												
														</fo:block>
													</xsl:if>
												</fo:table-cell>
											</fo:table-row>
										</xsl:if>
									<!-- KRAJ ispisa zaključka -->
									
										<fo:table-row keep-with-previous="always">
											<fo:table-cell>
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell>
												<xsl:if test="./Potpisnik[text()]">													
													<fo:block xsl:use-attribute-sets="obicno10" padding-top="{$prored3}*3" text-align="right" white-space-collapse="false">
														<xsl:value-of select="./PozicijaPotpisnika"/>
													</fo:block>
													<fo:block xsl:use-attribute-sets="obicno10" text-align="right" white-space-collapse="false">
														<xsl:value-of select="./Potpisnik"/>
													</fo:block>
												</xsl:if>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								
								<xsl:if test="position()=last()">
									<fo:block> </fo:block>
									<fo:block> </fo:block>
									<fo:block xsl:use-attribute-sets="boldano10" font-style = "italic" text-align="center">Kraj ispitnog izvještaja</fo:block>
									<fo:block>
										<xsl:attribute name="id">Z<xsl:value-of select="count(preceding::Zahtjev) + 1"/>
										</xsl:attribute>
									</fo:block>
								</xsl:if>
							</fo:flow>
						</fo:page-sequence>
					</xsl:if>
				</xsl:for-each>
				
<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->
	<!-- PRILOG I -->
		<!-- tu idu samo analize koje pripadaju određenoj kategoriji, na temelju koje se u kodu postavljaju flagovi
		 AnalizaSeIspisujeUPrilogu i AnalizaSeIspisujeUPriloguUTablici u Javi (IzvjesceSessionBean.stvoriIzvjesce(...) - redci 3059-3084)-->
		
				<xsl:for-each select="ListaGrupaAPUZahtjeva/GrupaAPUZahtjeva">
					<xsl:if test = "count(./ListaDjelovaUzorka
											/DioUzorka
											/ListaAPUZahtjevaDijelaUzorka
											/APUZahtjevaDijelaUzorka
											/AnalizaSeIspisujeUPrilogu[text()='true'])>0 or 
									count(./ListaDjelovaUzorka
											/DioUzorka
											/ListaAPUZahtjevaDijelaUzorka
											/APUZahtjevaDijelaUzorka
											/AnalizaSeIspisujeUPriloguUTablici[text()='true'])>0">
					
					<!-- flag GAZImaMjesovitoAkreditiraneMetode definira ispisuje li se ili ne kolona Ocjena ispravnosti za svaki pojedinačni odsjek-->
						<xsl:variable name="GAZImaMjesovitoAkreditiraneMetode">
							<xsl:choose>
								<xsl:when test="count(./ListaDjelovaUzorka
														/DioUzorka
														/ListaAPUZahtjevaDijelaUzorka
														/APUZahtjevaDijelaUzorka
														/Akreditiranost[text()='true'])>0 and 
												count(./ListaDjelovaUzorka
														/DioUzorka
														/ListaAPUZahtjevaDijelaUzorka
														/APUZahtjevaDijelaUzorka
														/Akreditiranost[text()='false'])>0">true</xsl:when>
								<xsl:otherwise>false</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>

						<fo:page-sequence master-reference="LaboratorijPosebnaTablica" force-page-count="no-force">
							<fo:static-content flow-name="xsl-region-before">
								<fo:table table-layout="fixed" padding-top="{$prored3}">
									<fo:table-column column-width="85mm"/>
									<fo:table-column column-width="85mm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-bottom="1pt solid black">		
												<fo:block xsl:use-attribute-sets="boldano" text-align="left">ISPITNI IZVJEŠTAJ BR:
													<xsl:value-of select="../../AlternativniBroj"/>
													(<xsl:value-of select="ancestor::Zahtjev[1]/@ID"/>)																														
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border-bottom="1pt solid black" text-align="right">
												<fo:block xsl:use-attribute-sets="boldano">
													<xsl:value-of select="substring(./Potpisnik/@VrijemePotpisivanja, 0, 12)"/>
												</fo:block>
											</fo:table-cell>	                    	                    
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:static-content>

							<fo:flow flow-name="xsl-region-body">
								<fo:block/>	
								<fo:block xsl:use-attribute-sets="boldano" padding-top="{$prored3}" text-align="left">PRILOG I</fo:block>															 
								<fo:table table-layout="fixed">
									<fo:table-column column-width="35mm"/>
									<fo:table-column column-width="125mm"/>
									<fo:table-body>
										<fo:table-row>	
											<fo:table-cell number-columns-spanned="2" display-align="center">
												<fo:block xsl:use-attribute-sets="boldano9" text-align="center" padding-top="{$prored3}">
													<xsl:apply-templates select="./ImeGrupe"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										
										<fo:table-row>
											<fo:table-cell>
												<xsl:if test="../../NazivUzorka[text()]">
													<fo:block xsl:use-attribute-sets="obicno10" padding-top="5mm">
														Naziv uzorka:																												
													</fo:block>													
												</xsl:if>
											</fo:table-cell>
											<fo:table-cell>
												<xsl:if test="../../NazivUzorka[text()]">
													<fo:block xsl:use-attribute-sets="boldano10" padding-top="5mm" padding-bottom="5mm" white-space-collapse="false">
														<xsl:value-of select="../../NazivUzorka"/>
													</fo:block>
												</xsl:if>
											</fo:table-cell>
										</fo:table-row>	
																	
									<!-- ispis analiza koje pripadaju kategoriji "Analiza se ispisuje u prilogu izvještaja (iznad tablice)" -->
										<xsl:for-each select="./ListaDjelovaUzorka/DioUzorka">
											<xsl:for-each select="./ListaAPUZahtjevaDijelaUzorka/APUZahtjevaDijelaUzorka">
												<xsl:if test="(./AnalizaSeIspisujeUPrilogu[text()='true'])">
												<!-- Stiliziranje ispisa podataka iznad tablice kod kompozitnih uzoraka -->											
													<xsl:if test = "$kompozit = 'true' and ../../ImeDijelaUzorka[text()]">
														<!-- ako je trenutni odjel radio ispitivanje na samo jednom djelu uzorka, ne ispisuje se ime tog djela uzorka -->
														<fo:table-row>
															<fo:table-cell>
																<fo:block xsl:use-attribute-sets="boldano9">
																	Naziv dijela uzorka:
																</fo:block>																
															</fo:table-cell>
															<fo:table-cell>
																<fo:block xsl:use-attribute-sets="obicno9">
																	<xsl:value-of select="../../ImeDijelaUzorka"/>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>																																																						
														<xsl:if test="./NazivAnalize[text()]">
															<fo:table-row>	
																<fo:table-cell number-columns-spanned="2">
																	<fo:block xsl:use-attribute-sets="boldano9">
																		<xsl:value-of select="./NazivAnalize"/>:
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>													
														<xsl:if test="./OpisniRezultat[text()]">
															<fo:table-row>
																<fo:table-cell number-columns-spanned="2">
																	<fo:block white-space-collapse="false" xsl:use-attribute-sets ="obicno9">
																		<xsl:choose>
																			<xsl:when test = "Komentar[text()]">
																				<xsl:apply-templates select="Komentar"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:if test="OpisniRezultat[text()]">
																					<xsl:apply-templates select="OpisniRezultat"/>
																				</xsl:if>
																			</xsl:otherwise>
																		</xsl:choose>
																	</fo:block>	
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>														
													</xsl:if>
													<!-- Kraj stiliziranja za kompozitne uzorke -->
													<xsl:if test="not($kompozit)">																																							
														<xsl:if test="./NazivAnalize[text()]">
															<fo:table-row>	
																<fo:table-cell number-columns-spanned="2">
																	<fo:block xsl:use-attribute-sets="boldano9">
																		<xsl:value-of select="./NazivAnalize"/>:
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>													
														<xsl:if test="./OpisniRezultat[text()]">
															<fo:table-row>
																<fo:table-cell number-columns-spanned="2">
																	<fo:block white-space-collapse="false" xsl:use-attribute-sets ="obicno9">
																		<xsl:choose>
																			<xsl:when test="Komentar[text()]">
																				<xsl:apply-templates select="Komentar"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:if test="OpisniRezultat[text()]">
																					<xsl:apply-templates select="OpisniRezultat"/>
																				</xsl:if>
																			</xsl:otherwise>
																		</xsl:choose>
																	</fo:block>																	
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>													
													</xsl:if>											
												</xsl:if>
											</xsl:for-each>									
										</xsl:for-each>
										<!-- KRAJ -->										
									</fo:table-body>
								</fo:table>
								
								<xsl:if test="(.//AnalizaSeIspisujeUPriloguUTablici[text()='true'])">															
									<fo:table table-layout="fixed" padding-top="{$prored3}">
										<xsl:if test="$odgovarajuciRazlogZahtjeva = 'true' and  $GAZImaMjesovitoAkreditiraneMetode = 'false'">
											<fo:table-column column-width="40mm"/>
											<fo:table-column column-width="100mm"/>
											<fo:table-column column-width="30mm"/>
										</xsl:if>
										<xsl:if test="$odgovarajuciRazlogZahtjeva = 'false' or  $GAZImaMjesovitoAkreditiraneMetode = 'true'">
											<fo:table-column column-width="40mm"/>
											<fo:table-column column-width="130mm"/>
										</xsl:if>
										<fo:table-header>
											<fo:table-row>
												<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="2">
													<fo:block text-align="center">OPĆI PODACI</fo:block>
												</fo:table-cell>
												<fo:table-cell xsl:use-attribute-sets="tablica">
													<fo:block text-align="center">USKLAĐENOST</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-header>
										<fo:table-body>
											<xsl:for-each select="./ListaDjelovaUzorka/DioUzorka">
												<xsl:if test="(.//AnalizaSeIspisujeUPriloguUTablici[text()='true'])">
													<xsl:if test="last() > 1">
														<fo:table-row>
															<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="3">
																<fo:block>
																	<xsl:value-of select="./ImeDijelaUzorka"/>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
												</xsl:if>
												<xsl:for-each select="./ListaAPUZahtjevaDijelaUzorka/APUZahtjevaDijelaUzorka">
													<xsl:if test="(./AnalizaSeIspisujeUPriloguUTablici[text()='true'])">
														<xsl:if test="not(@Naslov='true')">
															<fo:table-row keep-together="always">
																<fo:table-cell xsl:use-attribute-sets="tablica">
																	<fo:block>
																		<xsl:apply-templates select="./NazivAnalize"/>
																	</fo:block>
																</fo:table-cell>	
																<fo:table-cell xsl:use-attribute-sets="tablica">
																	<xsl:if test="./OpisniRezultat[text()] and not(./Komentar[text()])">
																		<fo:block>																						
																			<xsl:apply-templates select="./OpisniRezultat"/>
																		</fo:block>																						
																	</xsl:if>			
																</fo:table-cell>
																<xsl:if test="$odgovarajuciRazlogZahtjeva = 'true' and  $GAZImaMjesovitoAkreditiraneMetode = 'false'">																
																	<fo:table-cell xsl:use-attribute-sets="tablica">
																		<fo:block text-align="center">
																			<xsl:choose>
																				<xsl:when test="./Ispravnost/@ID='1'">NE</xsl:when>
																				<xsl:when test="./Ispravnost/@ID='2'">DA</xsl:when>
																				<xsl:otherwise>-</xsl:otherwise>
																			</xsl:choose>
																		</fo:block>
																	</fo:table-cell>																	
																</xsl:if>																																															
															</fo:table-row>
															<xsl:if test = "./Komentar[text()]">
																<fo:table-row>
																	<fo:table-cell xsl:use-attribute-sets="tablica" number-columns-spanned="3" >
																		<xsl:choose> 
																			<xsl:when test ="$fiksniStil = 'true'">
																				<fo:block xsl:use-attribute-sets="fiksno09" white-space-collapse="false">
																					<fo:inline>
																						<xsl:apply-templates select="./Komentar"/>
																					</fo:inline>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:block white-space-collapse="false">
																					<fo:inline>
																						<xsl:apply-templates select="./Komentar"/>
																					</fo:inline>
																				</fo:block>
																			</xsl:otherwise>											
																		</xsl:choose>
																	</fo:table-cell>												
																</fo:table-row>																
															</xsl:if>
														</xsl:if> 
													</xsl:if>
												</xsl:for-each>
											</xsl:for-each>						
										</fo:table-body>
									</fo:table>									
								</xsl:if>
								<xsl:if test="./Potpisnik[text()] and not(GrupaKorisnikaID='1' or GrupaKorisnikaID='301')">													
									<fo:block xsl:use-attribute-sets="obicno10" padding-top="{$prored3}*3" text-align="right" white-space-collapse="false">
										<xsl:value-of select="./PozicijaPotpisnika"/>
									</fo:block>
									<fo:block xsl:use-attribute-sets="obicno10" text-align="right" white-space-collapse="false">
										<xsl:value-of select="./Potpisnik"/>
									</fo:block>
								</xsl:if>								
							</fo:flow>
						</fo:page-sequence> 
					</xsl:if>       
				</xsl:for-each>
				<!-- KRAJ -->
<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->
				<!-- SLIKE UZORKA -->								   
				<!-- njihova ideja je da slike idu u PRILOG I -> PRILOG I nije uvijek isti, 
					 radi jednostavnosti, slike premještene na posebnu stranicu-->				
				<xsl:if test="count(./Prilozi/Prilog/URL)>0">
					<fo:page-sequence master-reference="Zakljucci" initial-page-number="1" force-page-count="no-force">
						<fo:static-content flow-name="xsl-region-before">
							<fo:table table-layout="fixed" padding-top="{$prored3}">								
								<fo:table-column column-width="85mm"/>
								<fo:table-column column-width="85mm"/>								
								<fo:table-body>
									<fo:table-row>										
										<fo:table-cell border-bottom="1pt solid black">		
											<fo:block xsl:use-attribute-sets="boldano" text-align="left">ISPITNI IZVJEŠTAJ BR:
												<xsl:value-of select="AlternativniBroj"/>
												(<xsl:value-of select="@ID"/>)			
											</fo:block>
										</fo:table-cell>										
										<fo:table-cell border-bottom="1pt solid black" text-align="right">
											<fo:block xsl:use-attribute-sets="obicno">
												<xsl:choose>
													<xsl:when test ="ancestor::Zahtjev/@DatumIzmjene[text()]">
														<xsl:value-of select="substring(ancestor::Zahtjev[1]/@DatumIzmjene, 0, 12)"/>
													</xsl:when>					    		
													<xsl:otherwise>
														<xsl:value-of select="substring(./Potpisnik/@VrijemePotpisivanja, 0, 12)"/>
													</xsl:otherwise>
												</xsl:choose>
											</fo:block>
										</fo:table-cell>																					                    	                    
									</fo:table-row>
								</fo:table-body>
							</fo:table>							
						</fo:static-content>											
						<fo:flow flow-name="xsl-region-body">
							<fo:block xsl:use-attribute-sets="boldano"  padding-top="{$prored3}" text-align="center">SLIKE UZORKA</fo:block>

							<xsl:if test="count(./Prilozi/Prilog/URL)>1">
								<fo:block padding-top="{$prored3}">
									Slike uzorka LRN: <xsl:value-of select="@ID"/>									
								</fo:block>
							</xsl:if>							
							<xsl:if test="count(./Prilozi/Prilog/URL)=1">
								<fo:block padding-top="{$prored3}">
									Slika uzorka LRN: <xsl:value-of select="@ID"/>									
								</fo:block>
							</xsl:if>
							
							<!-- Dohvat slika iz privitaka zahtjeva na temelju izgeneriranog url-a u xsl-u -->
							<!-- Slike se dohvaćaju iz foldera C:/lims/temp/images/-->							
							<xsl:for-each select="Prilozi/Prilog">
								<fo:block padding-top="{$prored3}">
									<!-- Dohvat djela url-a slike iz xml-a (samo naziva slike)-->
									<xsl:variable name="slika" select= "./URL"/>
									<fo:external-graphic src= "{$slika}" height="250px" scaling="uniform"/>
								</fo:block>
							</xsl:for-each>
							
						</fo:flow>
					</fo:page-sequence>
				</xsl:if>
				<!-- KRAJ -->
<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->
				<!-- PRILOG II -->
				<!-- ZAKLJUČAK -->
				<!-- Zaključak se ispisuje u prilogu SAMO kada u zahtjevu imamo akreditirane i neakreditirane metode, inače se ispisuje ispod tablice sa rezultatima -->
	

				<xsl:if test= "$zahtjevImaMjesovitoAkreditiraneMetode = 'true'">
					<fo:page-sequence master-reference="Zakljucci" initial-page-number="1" force-page-count="no-force">
						<fo:static-content flow-name="xsl-region-before">
							<fo:table table-layout="fixed" padding-top="{$prored3}">
								<fo:table-column column-width="85mm"/>
								<fo:table-column column-width="85mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-bottom="1pt solid black">		
											<fo:block xsl:use-attribute-sets="boldano" text-align="left">ISPITNI IZVJEŠTAJ BR:
												<xsl:value-of select="AlternativniBroj"/>
												(<xsl:value-of select="@ID"/>)			
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-bottom="1pt solid black" text-align="right">
											<fo:block xsl:use-attribute-sets="obicno">
												<xsl:choose>
													<xsl:when test ="ancestor::Zahtjev/@DatumIzmjene[text()]">
														<xsl:value-of select="substring(ancestor::Zahtjev[1]/@DatumIzmjene, 0, 12)"/>
													</xsl:when>					    		
													<xsl:otherwise>
														<xsl:value-of select="substring(./Potpisnik/@VrijemePotpisivanja, 0, 12)"/>
													</xsl:otherwise>
												</xsl:choose>
											</fo:block>
										</fo:table-cell>	                    	                    
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:static-content>
	
						<fo:flow flow-name="xsl-region-body">

							<!-- Ako se generira stranica sa posebnom tablicom, tada je ovo PRILOG II, inače je PRILOG I -->
							<xsl:choose> 
								<xsl:when test = "(count(.//AnalizaSeIspisujeUPrilogu[text()='true'])>0) or 
												  (count(.//AnalizaSeIspisujeUPriloguUTablici[text()='true'])>0)">
									<fo:block xsl:use-attribute-sets="boldano" padding-top="{$prored3}" text-align="left">PRILOG II</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block xsl:use-attribute-sets="boldano"  padding-top="{$prored3}" text-align="left">PRILOG I</fo:block>
								</xsl:otherwise>
							</xsl:choose>
							
							<fo:block xsl:use-attribute-sets="boldano"  padding-top="{$prored3}" text-align="center">ZAKLJUČAK</fo:block>
							<fo:block> </fo:block>
							<fo:block> </fo:block>
							
							<xsl:if test="Superanaliza">
								<fo:block font-family="ArialBold" font-size="12pt" text-align="center">SUPERANALIZA</fo:block>
							</xsl:if>
							<fo:block> </fo:block>
							<fo:table table-layout="fixed">
								<fo:table-column column-width="40mm"/>
								<fo:table-column column-width="130mm"/>
								<fo:table-body>									
									<xsl:if test="Ispravnost[@ID] and RazlogZahtjeva[@ID='1' or @ID='2' or @ID='5'] and $zahtjevImaMjesovitoAkreditiraneMetode = 'true'">									
										<fo:table-row padding-top="{$prored3}">
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="obicno">&#xA0;</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>												
												<fo:block xsl:use-attribute-sets="boldano">Konačna ocjena:</fo:block>												
											</fo:table-cell>
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="boldano">																			
													<xsl:if test="Ispravnost/@ID='1'">NE ODGOVARA</xsl:if>
													<xsl:if test="Ispravnost/@ID='2'">ODGOVARA</xsl:if>																
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>
									<xsl:if test="NazivUzorka[text()]">
										<fo:table-row>
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="obicno10">Naziv uzorka:</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block xsl:use-attribute-sets="boldano10">
													<xsl:value-of select="NazivUzorka"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:if>                
								</fo:table-body>			  
							</fo:table>
	
							<fo:block> </fo:block>
							
							<xsl:for-each select="ListaGrupaAPUZahtjeva/GrupaAPUZahtjeva">
								<xsl:if test="./Misljenje[text()] and not(./Misljenje[text() = '' or text() = '-&#8203;'])">
									<fo:block xsl:use-attribute-sets="boldano9">
										<xsl:value-of select="./ImeGrupe"/>
									</fo:block>			 
									<fo:block xsl:use-attribute-sets="obicno9" padding-top="{$prored1}*2" white-space-collapse="false">
										<xsl:text>&#x9;</xsl:text>
										<xsl:apply-templates select="./Misljenje"/>
									</fo:block>
								</xsl:if>
								<fo:block> </fo:block>
							</xsl:for-each>						
						</fo:flow>
					</fo:page-sequence>
				</xsl:if>
				<!-- KRAJ -->
<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->
				<!-- REKAPITULACIJA TROŠKOVA -->
				<fo:page-sequence master-reference="Prilog" initial-page-number="1" force-page-count="no-force">
					<fo:static-content flow-name="xsl-region-before">
						<fo:table table-layout="fixed" padding-top="{$prored3}">
							<fo:table-column column-width="125mm"/>
							<fo:table-column column-width="45mm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-bottom="1pt solid black">
										<fo:block xsl:use-attribute-sets="boldano" text-align="left">ISPITNI IZVJEŠTAJ BR:
											<xsl:if test="AlternativniBroj">
												<xsl:value-of select="AlternativniBroj"/>
											</xsl:if> 
											<xsl:if test="@ID">
												(<xsl:value-of select="@ID"/>)
											</xsl:if>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom="1pt solid black">
										<fo:block xsl:use-attribute-sets="obicno" text-align="right">
											<xsl:if test="@MjestoIzvjesca">
												<!-- 11.1.2012. trazili da se zamijeni datumom glavnog potpisa -->
												<!-- xsl:value-of select="@MjestoIzvjesca"/ -->
												<xsl:value-of select="substring(./Potpisnik/@VrijemePotpisivanja, 0, 12)"/>
											</xsl:if>
											<xsl:if test="@DatumIzmjene">,
												<xsl:value-of select="substring(@DatumIzmjene, 0, 12)"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:static-content>
					<fo:flow flow-name="xsl-region-body">
						<fo:block xsl:use-attribute-sets="boldano10" font-size="12pt" padding-top="{$prored3}" text-align="center">REKAPITULACIJA TROŠKOVA</fo:block>
						<fo:table table-layout="fixed" padding="{$prored3}*4">
							<fo:table-column column-width="145mm"/>
							<fo:table-column column-width="25mm"/>
							<fo:table-header>
								<fo:table-row>
								
									<fo:table-cell xsl:use-attribute-sets="tablica">
										<fo:block xsl:use-attribute-sets="boldano10" text-align="center">Odsjek</fo:block>
									</fo:table-cell>
									
									<fo:table-cell xsl:use-attribute-sets="tablica">
										<fo:block xsl:use-attribute-sets="boldano10" text-align="center">Cijena</fo:block>
									</fo:table-cell>
									
								</fo:table-row>
							</fo:table-header>
							
							<fo:table-body>								
								<xsl:for-each select="ListaGrupaAPUZahtjeva/GrupaAPUZahtjeva">								
									<fo:table-row>	
																	
										<fo:table-cell xsl:use-attribute-sets="tablica">
											<fo:block>
												<xsl:value-of select="./ImeGrupe"/>
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell xsl:use-attribute-sets="tablica">
											<fo:block text-align="right">
												<xsl:value-of select="format-number(./Cijena, '#.##0,00')"/>
											</fo:block>
										</fo:table-cell>
																				
									</fo:table-row>								
								</xsl:for-each>
								
								<fo:table-row>
								
									<fo:table-cell xsl:use-attribute-sets="tablica">
										<fo:block xsl:use-attribute-sets="boldano10" text-align="right">Ukupno:</fo:block>
									</fo:table-cell>
									
									<fo:table-cell xsl:use-attribute-sets="tablica">
										<fo:block xsl:use-attribute-sets="boldano10" text-align="right">
											<xsl:value-of select="format-number(sum(ListaGrupaAPUZahtjeva/GrupaAPUZahtjeva/Cijena), '#.##0,00')"/>
										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block xsl:use-attribute-sets="obicno" padding-top="{$prored3}*2">Račun ispostaviti:</fo:block>
						<xsl:if test="PlatiteljIspravneAnalize[text()] | PlatiteljNeispravneAnalize[text()]">
							<xsl:if test="Ispravnost [@ID]">
								<fo:block xsl:use-attribute-sets="boldano" padding-top="{$prored3}*2">
									<xsl:choose>
									
										<xsl:when test="Ispravnost/@ID='1'">
											<xsl:value-of select="PlatiteljNeispravneAnalize"/>
											<xsl:if test="(PlatiteljNeispravneAnalize/@Adresa) or (PlatiteljNeispravneAnalize/@Mjesto) or (PlatiteljNeispravneAnalize/@Drzava)">
												<fo:block xsl:use-attribute-sets="obicno9">
													<xsl:if test="PlatiteljNeispravneAnalize/@Adresa">
														<xsl:value-of select="PlatiteljNeispravneAnalize/@Adresa"/>, </xsl:if>
													<xsl:if test="PlatiteljNeispravneAnalize/@PostanskiBroj">
														<xsl:value-of select="PlatiteljNeispravneAnalize/@PostanskiBroj"/> </xsl:if>
													<xsl:if test="PlatiteljNeispravneAnalize/@Mjesto">
														<xsl:value-of select="PlatiteljNeispravneAnalize/@Mjesto"/>, </xsl:if>
													<xsl:if test="PlatiteljNeispravneAnalize/@Drzava">
														<xsl:value-of select="PlatiteljNeispravneAnalize/@Drzava"/>
													</xsl:if>
												</fo:block>
											</xsl:if>
										</xsl:when>
										
										<xsl:when test="Ispravnost/@ID='2'">
											<xsl:value-of select="PlatiteljIspravneAnalize"/>
											<xsl:if test="(PlatiteljIspravneAnalize/@Adresa) or (PlatiteljIspravneAnalize/@Mjesto) or (PlatiteljIspravneAnalize/@Drzava)">
												<fo:block xsl:use-attribute-sets="obicno9">
													<xsl:if test="PlatiteljIspravneAnalize/@Adresa">
														<xsl:value-of select="PlatiteljIspravneAnalize/@Adresa"/>, </xsl:if>
													<xsl:if test="PlatiteljIspravneAnalize/@PostanskiBroj">
														<xsl:value-of select="PlatiteljIspravneAnalize/@PostanskiBroj"/> </xsl:if>
													<xsl:if test="PlatiteljIspravneAnalize/@Mjesto">
														<xsl:value-of select="PlatiteljIspravneAnalize/@Mjesto"/>, </xsl:if>
													<xsl:if test="PlatiteljIspravneAnalize/@Drzava">
														<xsl:value-of select="PlatiteljIspravneAnalize/@Drzava"/>
													</xsl:if>
												</fo:block>
											</xsl:if>
										</xsl:when>
										
										<xsl:when test="Ispravnost/@ID='3'">
											<xsl:value-of select="PlatiteljIspravneAnalize"/>
											<xsl:if test="(PlatiteljIspravneAnalize/@Adresa) or (PlatiteljIspravneAnalize/@Mjesto) or (PlatiteljIspravneAnalize/@Drzava)">
												<fo:block xsl:use-attribute-sets="obicno9">
													<xsl:if test="PlatiteljIspravneAnalize/@Adresa">
														<xsl:value-of select="PlatiteljIspravneAnalize/@Adresa"/>, </xsl:if>
													<xsl:if test="PlatiteljIspravneAnalize/@PostanskiBroj">
														<xsl:value-of select="PlatiteljIspravneAnalize/@PostanskiBroj"/> </xsl:if>
													<xsl:if test="PlatiteljIspravneAnalize/@Mjesto">
														<xsl:value-of select="PlatiteljIspravneAnalize/@Mjesto"/>, </xsl:if>
													<xsl:if test="PlatiteljIspravneAnalize/@Drzava">
														<xsl:value-of select="PlatiteljIspravneAnalize/@Drzava"/>
													</xsl:if>
												</fo:block>
											</xsl:if>
										</xsl:when>
										
										<xsl:otherwise>-</xsl:otherwise>
										
									</xsl:choose>																		
								</fo:block>
							</xsl:if>
						</xsl:if>
					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
	
	<xsl:template match="sub">
		<fo:inline font-size=".75em" vertical-align="sub">
			<xsl:apply-templates/>
		</fo:inline>
	</xsl:template>
	
	<xsl:template match="sup">
		<fo:inline font-size=".75em" vertical-align="super">
			<xsl:apply-templates/>
		</fo:inline>
	</xsl:template>
	
	<xsl:template match="i">
		<fo:inline font-family="ArialItalic" font-style="italic" font-size="9pt">
			<xsl:apply-templates/>
		</fo:inline>
	</xsl:template>
	
	<xsl:template name="formatVrijeme">
		<xsl:param name="vrijeme">01.01.2008. 12:00</xsl:param>
		<!--xsl:if test="substring($vrijeme, 13, 5)='00:00'"-->
		<xsl:value-of select="substring($vrijeme, 0, 12)"/>
		<!--/xsl:if>
		<xsl:if test="not(substring($vrijeme, 13, 5)='00:00')">
			<xsl:value-of select="$vrijeme"/>
		</xsl:if-->
	</xsl:template>
	
</xsl:stylesheet>
