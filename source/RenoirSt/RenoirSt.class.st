"
I'm a pool dictionary providing access to the library namespaces
"
Class {
	#name : #RenoirSt,
	#superclass : #SharedPool,
	#classVars : [
		'CssConstants',
		'CssMediaQueryConstants'
	],
	#category : #'RenoirSt-Common'
}

{ #category : #accessing }
RenoirSt class >> constants [

	^ CssConstants
]

{ #category : #initialization }
RenoirSt class >> initialize [

	<ignoreForCoverage>
	self
		initializeCssConstants;
		initializeMediaQueryConstants;
		initializeUnits
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeAttachmentConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #fixed to: 'fixed';
		bind: #scroll to: 'scroll'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeBackgroundConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #borderBox to: 'border-box';
		bind: #closestCorner to: 'closest-corner';
		bind: #closestSide to: 'closest-side';
		bind: #contentBox to: 'content-box';
		bind: #farthestCorner to: 'farthest-corner';
		bind: #farthestSide to: 'farthest-side';
		bind: #local to: 'local';
		bind: #paddingBox to: 'padding-box';
		bind: #round to: 'round';
		bind: #space to: 'space'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeBasicConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #auto to: 'auto';
		bind: #even to: 'even';
		bind: #hide to: 'hide';
		bind: #inherit to: 'inherit';
		bind: #initial to: 'initial';
		bind: #invert to: 'invert';
		bind: #none to: 'none';
		bind: #odd to: 'odd';
		bind: #show to: 'show';
		bind: #vertical to: 'vertical'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeBorderConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #collapse to: 'collapse';
		bind: #dashed to: 'dashed';
		bind: #dotted to: 'dotted';
		bind: #double to: 'double';
		bind: #fill to: 'fill';
		bind: #groove to: 'groove';
		bind: #inset to: 'inset';
		bind: #medium to: 'medium';
		bind: #outset to: 'outset';
		bind: #ridge to: 'ridge';
		bind: #separate to: 'separate';
		bind: #solid to: 'solid';
		bind: #stretch to: 'stretch';
		bind: #thick to: 'thick';
		bind: #thin to: 'thin'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeCssConstants [

	<ignoreForCoverage>
	CssConstants := Namespace new.
	self
		initializeAttachmentConstants;
		initializeBackgroundConstants;
		initializeBasicConstants;
		initializeBorderConstants;
		initializeCursorConstants;
		initializeDisplayConstants;
		initializeFontConstants;
		initializeFontFormatConstants;
		initializeFontSizeConstants;
		initializeFontStretchingConstants;
		initializeFontSynthesisConstants;
		initializeFontVariantConstants;
		initializeGenericFontFamilyConstants;
		initializeListConstants;
		initializePositioningConstants;
		initializeRepeatConstants;
		initializeSizeConstants;
		initializeSVGColors;
		initializeTextConstants
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeCursorConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #crosshair to: 'crosshair';
		bind: #default to: 'default';
		bind: #help to: 'help';
		bind: #move to: 'move';
		bind: #notAllowed to: 'not-allowed';
		bind: #pointer to: 'pointer';
		bind: #progress to: 'progress';
		bind: #text to: 'text';
		bind: #wait to: 'wait'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeDisplayConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #block to: 'block';
		bind: #inline to: 'inline';
		bind: #inlineBlock to: 'inline-block';
		bind: #inlineTable to: 'inline-table';
		bind: #listItem to: 'list-item';
		bind: #table to: 'table';
		bind: #tableCaption to: 'table-caption';
		bind: #tableCell to: 'table-cell';
		bind: #tableColumn to: 'table-column';
		bind: #tableColumnGroup to: 'table-column-group';
		bind: #tableFooterGroup to: 'table-footer-group';
		bind: #tableHeaderGroup to: 'table-header-group';
		bind: #tableRow to: 'table-row';
		bind: #tableRowGroup to: 'table-row-group'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #bold to: 'bold';
		bind: #bolder to: 'bolder';
		bind: #caption to: 'caption';
		bind: #icon to: 'icon';
		bind: #italic to: 'italic';
		bind: #lighter to: 'lighter';
		bind: #menu to: 'menu';
		bind: #messageBox to: 'message-box';
		bind: #normal to: 'normal';
		bind: #oblique to: 'oblique';
		bind: #smallCaps to: 'small-caps';
		bind: #smallCaption to: 'small-caption';
		bind: #statusBar to: 'status-bar'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontFormatConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #svg to: 'svg';
		bind: #truetype to: 'truetype';
		bind: #opentype to: 'opentype';
		bind: #embeddedOpentype to: 'embedded-opentype';
		bind: #woff to: 'woff'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontSizeConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #smaller to: 'smaller';
		bind: #xxSmall to: 'xx-small';
		bind: #xSmall to: 'x-small';
		bind: #larger to: 'larger';
		bind: #xLarge to: 'x-large';
		bind: #xxLarge to: 'xx-large';
		bind: #small to: 'small';
		bind: #large to: 'large'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontStretchingConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #extraCondensed to: 'extra-condensed';
		bind: #ultraExpanded to: 'ultra-expanded';
		bind: #extraExpanded to: 'extra-expanded';
		bind: #semiExpanded to: 'semi-expanded';
		bind: #condensed to: 'condensed';
		bind: #ultraCondensed to: 'ultra-condensed';
		bind: #expanded to: 'expanded';
		bind: #semiCondensed to: 'semi-condensed'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontSynthesisConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #style to: 'style';
		bind: #weight to: 'weight'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontVariantConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #noContextual to: 'no-contextual';
		bind: #noCommonLigatures to: 'no-common-ligatures';
		bind: #diagonalFractions to: 'diagonal-fractions';
		bind: #commonLigatures to: 'common-ligatures';
		bind: #ordinal to: 'ordinal';
		bind: #noHistoricalLigatures to: 'no-historical-ligatures';
		bind: #proportionalNums to: 'proportional-nums';
		bind: #oldstyleNums to: 'oldstyle-nums';
		bind: #stackedFractions to: 'stacked-fractions';
		bind: #discretionaryLigatures to: 'discretionary-ligatures';
		bind: #titlingCaps to: 'titling-caps';
		bind: #slashedZero to: 'slashed-zero';
		bind: #sub to: 'sub';
		bind: #tabularNums to: 'tabular-nums';
		bind: #allPetiteCaps to: 'all-petite-caps';
		bind: #petiteCaps to: 'petite-caps';
		bind: #historicalLigatures to: 'historical-ligatures';
		bind: #super to: 'super';
		bind: #allSmallCaps to: 'all-small-caps';
		bind: #unicase to: 'unicase';
		bind: #noDiscretionaryLigatures to: 'no-discretionary-ligatures';
		bind: #liningNums to: 'lining-nums';
		bind: #contextual to: 'contextual'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeGenericFontFamilyConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #fantasy to: 'fantasy';
		bind: #monospace to: 'monospace';
		bind: #serif to: 'serif';
		bind: #cursive to: 'cursive';
		bind: #sansSerif to: 'sans-serif'
]

{ #category : #initialization }
RenoirSt class >> initializeLengthUnits [

	<ignoreForCoverage>
	"Absolute Units"
	(CssConstants >> #units)
		bind: #centimeter to: (CssUnit identifiedBy: 'cm');
		bind: #inch to: (CssUnit identifiedBy: 'in');
		bind: #millimeter to: (CssUnit identifiedBy: 'mm');
		bind: #pica to: (CssUnit identifiedBy: 'pc');
		bind: #pixel to: (CssUnit identifiedBy: 'px');
		bind: #point to: (CssUnit identifiedBy: 'pt').
	"Relative Units"
	(CssConstants >> #units)
		bind: #fontSize to: (CssUnit identifiedBy: 'em');
		bind: #xHeight to: (CssUnit identifiedBy: 'ex');
		bind: #zeroWidth to: (CssUnit identifiedBy: 'ch');
		bind: #fontSizeOfRootElement to: (CssUnit identifiedBy: 'rem');
		bind: #onePercentOfViewportHeight to: (CssUnit identifiedBy: 'vh');
		bind: #onePercentOfViewportWidth to: (CssUnit identifiedBy: 'vw');
		bind: #onePercentOfViewportSmallerDimension to: (CssUnit identifiedBy: 'vmin');
		bind: #onePercentOfViewportLargerDimension to: (CssUnit identifiedBy: 'vmax')
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeListConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #armenian to: 'armenian';
		bind: #circle to: 'circle';
		bind: #decimal to: 'decimal';
		bind: #decimalLeadingZero to: 'decimal-leading-zero';
		bind: #disc to: 'disc';
		bind: #georgian to: 'georgian';
		bind: #inside to: 'inside';
		bind: #lowerAlpha to: 'lower-alpha';
		bind: #lowerGreek to: 'lower-greek';
		bind: #lowerLatin to: 'lower-latin';
		bind: #lowerRoman to: 'lower-roman';
		bind: #outside to: 'outside';
		bind: #square to: 'square';
		bind: #upperAlpha to: 'upper-alpha';
		bind: #upperLatin to: 'upper-latin';
		bind: #upperRoman to: 'upper-roman'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeMediaQueryConstants [

	<ignoreForCoverage>
	CssMediaQueryConstants := Namespace new.
	"Media Types"
	CssMediaQueryConstants
		bind: #braille to: 'braille';
		bind: #embossed to: 'embossed';
		bind: #handheld to: 'handheld';
		bind: #print to: 'print';
		bind: #projection to: 'projection';
		bind: #screen to: 'screen';
		bind: #speech to: 'speech';
		bind: #tty to: 'tty';
		bind: #tv to: 'tv'.
	"Orientation"
	CssMediaQueryConstants
		bind: #landscape to: 'landscape';
		bind: #portrait to: 'portrait'.
	"Scan"
	CssMediaQueryConstants
		bind: #interlace to: 'interlace';
		bind: #progressive to: 'progressive'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializePositioningConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #absolute to: 'absolute';
		bind: #always to: 'always';
		bind: #avoid to: 'avoid';
		bind: #baseline to: 'baseline';
		bind: #both to: 'both';
		bind: #bottom to: 'bottom';
		bind: #center to: 'center';
		bind: #hidden to: 'hidden';
		bind: #justify to: 'justify';
		bind: #left to: 'left';
		bind: #middle to: 'middle';
		bind: #relative to: 'relative';
		bind: #right to: 'right';
		bind: #static to: 'static';
		bind: #textBottom to: 'text-bottom';
		bind: #textTop to: 'text-top';
		bind: #top to: 'top';
		bind: #visible to: 'visible'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeRepeatConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #noRepeat to: 'no-repeat';
		bind: #repeat to: 'repeat';
		bind: #repeatX to: 'repeat-x';
		bind: #repeatY to: 'repeat-y'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeSVGColors [

	<ignoreForCoverage>
	CssConstants bind: #colors to: Namespace new.
	CssConstants >> #colors bind: #transparent to: 'transparent'.
	self
		initializeSVGColors1;
		initializeSVGColors2;
		initializeSVGColors3
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeSVGColors1 [

	<ignoreForCoverage>
	(CssConstants >> #colors)
		bind: #aliceBlue to: ((CssRGBColor red: 240 green: 248 blue: 255) identifiedBy: 'aliceblue');
		bind: #antiqueWhite to: ((CssRGBColor red: 250 green: 235 blue: 215) identifiedBy: 'antiquewhite');
		bind: #aqua to: ((CssRGBColor red: 0 green: 255 blue: 255) identifiedBy: 'aqua');
		bind: #aquamarine to: ((CssRGBColor red: 127 green: 255 blue: 212) identifiedBy: 'aquamarine');
		bind: #azure to: ((CssRGBColor red: 240 green: 255 blue: 255) identifiedBy: 'azure');
		bind: #beige to: ((CssRGBColor red: 245 green: 245 blue: 220) identifiedBy: 'beige');
		bind: #bisque to: ((CssRGBColor red: 255 green: 228 blue: 196) identifiedBy: 'bisque');
		bind: #black to: ((CssRGBColor red: 0 green: 0 blue: 0) identifiedBy: 'black');
		bind: #blanchedAlmond to: ((CssRGBColor red: 255 green: 235 blue: 205) identifiedBy: 'blanchedalmond');
		bind: #blue to: ((CssRGBColor red: 0 green: 0 blue: 255) identifiedBy: 'blue');
		bind: #blueviolet to: ((CssRGBColor red: 138 green: 43 blue: 226) identifiedBy: 'blueviolet');
		bind: #brown to: ((CssRGBColor red: 165 green: 42 blue: 42) identifiedBy: 'brown');
		bind: #burlywood to: ((CssRGBColor red: 222 green: 184 blue: 135) identifiedBy: 'burlywood');
		bind: #cadetBlue to: ((CssRGBColor red: 95 green: 158 blue: 160) identifiedBy: 'cadetblue');
		bind: #chartreuse to: ((CssRGBColor red: 127 green: 255 blue: 0) identifiedBy: 'chartreuse');
		bind: #chocolate to: ((CssRGBColor red: 210 green: 105 blue: 30) identifiedBy: 'chocolate');
		bind: #coral to: ((CssRGBColor red: 255 green: 127 blue: 80) identifiedBy: 'coral');
		bind: #cornflowerBlue to: ((CssRGBColor red: 100 green: 149 blue: 237) identifiedBy: 'cornflowerblue');
		bind: #cornsilk to: ((CssRGBColor red: 255 green: 248 blue: 220) identifiedBy: 'cornsilk');
		bind: #crimson to: ((CssRGBColor red: 220 green: 20 blue: 60) identifiedBy: 'crimson');
		bind: #cyan to: ((CssRGBColor red: 0 green: 255 blue: 255) identifiedBy: 'cyan');
		bind: #darkBlue to: ((CssRGBColor red: 0 green: 0 blue: 139) identifiedBy: 'darkblue');
		bind: #darkCyan to: ((CssRGBColor red: 0 green: 139 blue: 139) identifiedBy: 'darkcyan');
		bind: #darkGoldenrod to: ((CssRGBColor red: 184 green: 134 blue: 11) identifiedBy: 'darkgoldenrod');
		bind: #darkGray to: ((CssRGBColor red: 169 green: 169 blue: 169) identifiedBy: 'darkgray');
		bind: #darkGreen to: ((CssRGBColor red: 0 green: 100 blue: 0) identifiedBy: 'darkgreen');
		bind: #darkGrey to: ((CssRGBColor red: 169 green: 169 blue: 169) identifiedBy: 'darkgrey');
		bind: #darkKhaki to: ((CssRGBColor red: 189 green: 183 blue: 107) identifiedBy: 'darkkhaki');
		bind: #darkMagenta to: ((CssRGBColor red: 139 green: 0 blue: 139) identifiedBy: 'darkmagenta');
		bind: #darkOliveGreen to: ((CssRGBColor red: 85 green: 107 blue: 47) identifiedBy: 'darkolivegreen');
		bind: #darkOrange to: ((CssRGBColor red: 255 green: 140 blue: 0) identifiedBy: 'darkorange');
		bind: #darkOrchid to: ((CssRGBColor red: 153 green: 50 blue: 204) identifiedBy: 'darkorchid');
		bind: #darkRed to: ((CssRGBColor red: 139 green: 0 blue: 0) identifiedBy: 'darkred');
		bind: #darkSalmon to: ((CssRGBColor red: 233 green: 150 blue: 122) identifiedBy: 'darksalmon');
		bind: #darkSeaGreen to: ((CssRGBColor red: 143 green: 188 blue: 143) identifiedBy: 'darkseagreen');
		bind: #darkSlateBlue to: ((CssRGBColor red: 72 green: 61 blue: 139) identifiedBy: 'darkslateblue');
		bind: #darkSlateGray to: ((CssRGBColor red: 47 green: 79 blue: 79) identifiedBy: 'darkslategray');
		bind: #darkSlateGrey to: ((CssRGBColor red: 47 green: 79 blue: 79) identifiedBy: 'darkslategrey');
		bind: #darkTurquoise to: ((CssRGBColor red: 0 green: 206 blue: 209) identifiedBy: 'darkturquoise');
		bind: #darkViolet to: ((CssRGBColor red: 148 green: 0 blue: 211) identifiedBy: 'darkviolet');
		bind: #deepPink to: ((CssRGBColor red: 255 green: 20 blue: 147) identifiedBy: 'deeppink');
		bind: #deepSkyBlue to: ((CssRGBColor red: 0 green: 191 blue: 255) identifiedBy: 'deepskyblue');
		bind: #dimGray to: ((CssRGBColor red: 105 green: 105 blue: 105) identifiedBy: 'dimgray');
		bind: #dimGrey to: ((CssRGBColor red: 105 green: 105 blue: 105) identifiedBy: 'dimgrey');
		bind: #dodgerBlue to: ((CssRGBColor red: 30 green: 144 blue: 255) identifiedBy: 'dodgerblue');
		bind: #firebrick to: ((CssRGBColor red: 178 green: 34 blue: 34) identifiedBy: 'firebrick');
		bind: #floralWhite to: ((CssRGBColor red: 255 green: 250 blue: 240) identifiedBy: 'floralwhite');
		bind: #forestGreen to: ((CssRGBColor red: 34 green: 139 blue: 34) identifiedBy: 'forestgreen');
		bind: #fuchsia to: ((CssRGBColor red: 255 green: 0 blue: 255) identifiedBy: 'fuchsia')
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeSVGColors2 [

	<ignoreForCoverage>
	(CssConstants >> #colors)
		bind: #gainsboro to: ((CssRGBColor red: 220 green: 220 blue: 220) identifiedBy: 'gainsboro');
		bind: #ghostWhite to: ((CssRGBColor red: 248 green: 248 blue: 255) identifiedBy: 'ghostwhite');
		bind: #gold to: ((CssRGBColor red: 255 green: 215 blue: 0) identifiedBy: 'gold');
		bind: #goldenrod to: ((CssRGBColor red: 218 green: 165 blue: 32) identifiedBy: 'goldenrod');
		bind: #gray to: ((CssRGBColor red: 128 green: 128 blue: 128) identifiedBy: 'gray');
		bind: #green to: ((CssRGBColor red: 0 green: 128 blue: 0) identifiedBy: 'green');
		bind: #greenYellow to: ((CssRGBColor red: 173 green: 255 blue: 47) identifiedBy: 'greenyellow');
		bind: #grey to: ((CssRGBColor red: 128 green: 128 blue: 128) identifiedBy: 'grey');
		bind: #honeydew to: ((CssRGBColor red: 240 green: 255 blue: 240) identifiedBy: 'honeydew');
		bind: #hotPink to: ((CssRGBColor red: 255 green: 105 blue: 180) identifiedBy: 'hotpink');
		bind: #indianRed to: ((CssRGBColor red: 205 green: 92 blue: 92) identifiedBy: 'indianred');
		bind: #indigo to: ((CssRGBColor red: 75 green: 0 blue: 130) identifiedBy: 'indigo');
		bind: #ivory to: ((CssRGBColor red: 255 green: 255 blue: 240) identifiedBy: 'ivory');
		bind: #khaki to: ((CssRGBColor red: 240 green: 230 blue: 140) identifiedBy: 'khaki');
		bind: #lavender to: ((CssRGBColor red: 230 green: 230 blue: 250) identifiedBy: 'lavender');
		bind: #lavenderBlush to: ((CssRGBColor red: 255 green: 240 blue: 245) identifiedBy: 'lavenderblush');
		bind: #lawnGreen to: ((CssRGBColor red: 124 green: 252 blue: 0) identifiedBy: 'lawngreen');
		bind: #lemonChiffon to: ((CssRGBColor red: 255 green: 250 blue: 205) identifiedBy: 'lemonchiffon');
		bind: #lightBlue to: ((CssRGBColor red: 173 green: 216 blue: 230) identifiedBy: 'lightblue');
		bind: #lightCoral to: ((CssRGBColor red: 240 green: 128 blue: 128) identifiedBy: 'lightcoral');
		bind: #lightCyan to: ((CssRGBColor red: 224 green: 255 blue: 255) identifiedBy: 'lightcyan');
		bind: #lightGoldenrodYellow to: ((CssRGBColor red: 250 green: 250 blue: 210) identifiedBy: 'lightgoldenrodyellow');
		bind: #lightGray to: ((CssRGBColor red: 211 green: 211 blue: 211) identifiedBy: 'lightgray');
		bind: #lightGreen to: ((CssRGBColor red: 144 green: 238 blue: 144) identifiedBy: 'lightgreen');
		bind: #lightGrey to: ((CssRGBColor red: 211 green: 211 blue: 211) identifiedBy: 'lightgrey');
		bind: #lightPink to: ((CssRGBColor red: 255 green: 182 blue: 193) identifiedBy: 'lightpink');
		bind: #lightSalmon to: ((CssRGBColor red: 255 green: 160 blue: 122) identifiedBy: 'lightsalmon');
		bind: #lightSeaGreen to: ((CssRGBColor red: 32 green: 178 blue: 170) identifiedBy: 'lightseagreen');
		bind: #lightSkyBlue to: ((CssRGBColor red: 135 green: 206 blue: 250) identifiedBy: 'lightskyblue');
		bind: #lightSlateGray to: ((CssRGBColor red: 119 green: 136 blue: 153) identifiedBy: 'lightslategray');
		bind: #lightSlateGrey to: ((CssRGBColor red: 119 green: 136 blue: 153) identifiedBy: 'lightslategrey');
		bind: #lightSteelBlue to: ((CssRGBColor red: 176 green: 196 blue: 222) identifiedBy: 'lightsteelblue');
		bind: #lightYellow to: ((CssRGBColor red: 255 green: 255 blue: 224) identifiedBy: 'lightyellow');
		bind: #lime to: ((CssRGBColor red: 0 green: 255 blue: 0) identifiedBy: 'lime');
		bind: #limeGreen to: ((CssRGBColor red: 50 green: 205 blue: 50) identifiedBy: 'limegreen');
		bind: #linen to: ((CssRGBColor red: 250 green: 240 blue: 230) identifiedBy: 'linen')
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeSVGColors3 [

	<ignoreForCoverage>
	(CssConstants >> #colors)
		bind: #magenta to: ((CssRGBColor red: 255 green: 0 blue: 255) identifiedBy: 'magenta');
		bind: #maroon to: ((CssRGBColor red: 128 green: 0 blue: 0) identifiedBy: 'maroon');
		bind: #mediumAquamarine to: ((CssRGBColor red: 102 green: 205 blue: 170) identifiedBy: 'mediumaquamarine');
		bind: #mediumBlue to: ((CssRGBColor red: 0 green: 0 blue: 205) identifiedBy: 'mediumblue');
		bind: #mediumOrchid to: ((CssRGBColor red: 186 green: 85 blue: 211) identifiedBy: 'mediumorchid');
		bind: #mediumPurple to: ((CssRGBColor red: 147 green: 112 blue: 219) identifiedBy: 'mediumpurple');
		bind: #mediumSeaGreen to: ((CssRGBColor red: 60 green: 179 blue: 113) identifiedBy: 'mediumseagreen');
		bind: #mediumSlateBlue to: ((CssRGBColor red: 123 green: 104 blue: 238) identifiedBy: 'mediumslateblue');
		bind: #mediumSpringGreen to: ((CssRGBColor red: 0 green: 250 blue: 154) identifiedBy: 'mediumspringgreen');
		bind: #mediumTurquoise to: ((CssRGBColor red: 72 green: 209 blue: 204) identifiedBy: 'mediumturquoise');
		bind: #mediumVioletRed to: ((CssRGBColor red: 199 green: 21 blue: 133) identifiedBy: 'mediumvioletred');
		bind: #midnightBlue to: ((CssRGBColor red: 25 green: 25 blue: 112) identifiedBy: 'midnightblue');
		bind: #mintCream to: ((CssRGBColor red: 245 green: 255 blue: 250) identifiedBy: 'mintcream');
		bind: #mistyRose to: ((CssRGBColor red: 255 green: 228 blue: 225) identifiedBy: 'mistyrose');
		bind: #moccasin to: ((CssRGBColor red: 255 green: 228 blue: 181) identifiedBy: 'moccasin');
		bind: #navajoWhite to: ((CssRGBColor red: 255 green: 222 blue: 173) identifiedBy: 'navajowhite');
		bind: #navy to: ((CssRGBColor red: 0 green: 0 blue: 128) identifiedBy: 'navy');
		bind: #oldlace to: ((CssRGBColor red: 253 green: 245 blue: 230) identifiedBy: 'oldlace');
		bind: #olive to: ((CssRGBColor red: 128 green: 128 blue: 0) identifiedBy: 'olive');
		bind: #olivedrab to: ((CssRGBColor red: 107 green: 142 blue: 35) identifiedBy: 'olivedrab');
		bind: #orange to: ((CssRGBColor red: 255 green: 165 blue: 0) identifiedBy: 'orange');
		bind: #orangeRed to: ((CssRGBColor red: 255 green: 69 blue: 0) identifiedBy: 'orangered');
		bind: #orchid to: ((CssRGBColor red: 218 green: 112 blue: 214) identifiedBy: 'orchid');
		bind: #paleGoldenrod to: ((CssRGBColor red: 238 green: 232 blue: 170) identifiedBy: 'palegoldenrod');
		bind: #paleGreen to: ((CssRGBColor red: 152 green: 251 blue: 152) identifiedBy: 'palegreen');
		bind: #paleTurquoise to: ((CssRGBColor red: 175 green: 238 blue: 238) identifiedBy: 'paleturquoise');
		bind: #paleVioletRed to: ((CssRGBColor red: 219 green: 112 blue: 147) identifiedBy: 'palevioletred');
		bind: #papayaWhip to: ((CssRGBColor red: 255 green: 239 blue: 213) identifiedBy: 'papayawhip');
		bind: #peachpuff to: ((CssRGBColor red: 255 green: 218 blue: 185) identifiedBy: 'peachpuff');
		bind: #peru to: ((CssRGBColor red: 205 green: 133 blue: 63) identifiedBy: 'peru');
		bind: #pink to: ((CssRGBColor red: 255 green: 192 blue: 203) identifiedBy: 'pink');
		bind: #plum to: ((CssRGBColor red: 221 green: 160 blue: 221) identifiedBy: 'plum');
		bind: #powderBlue to: ((CssRGBColor red: 176 green: 224 blue: 230) identifiedBy: 'powderblue');
		bind: #purple to: ((CssRGBColor red: 128 green: 0 blue: 128) identifiedBy: 'purple');
		bind: #red to: ((CssRGBColor red: 255 green: 0 blue: 0) identifiedBy: 'red');
		bind: #rosyBrown to: ((CssRGBColor red: 188 green: 143 blue: 143) identifiedBy: 'rosybrown');
		bind: #royalBlue to: ((CssRGBColor red: 65 green: 105 blue: 225) identifiedBy: 'royalblue');
		bind: #saddleBrown to: ((CssRGBColor red: 139 green: 69 blue: 19) identifiedBy: 'saddlebrown');
		bind: #salmon to: ((CssRGBColor red: 250 green: 128 blue: 114) identifiedBy: 'salmon');
		bind: #sandyBrown to: ((CssRGBColor red: 244 green: 164 blue: 96) identifiedBy: 'sandybrown');
		bind: #seaGreen to: ((CssRGBColor red: 46 green: 139 blue: 87) identifiedBy: 'seagreen');
		bind: #seaShell to: ((CssRGBColor red: 255 green: 245 blue: 238) identifiedBy: 'seashell');
		bind: #sienna to: ((CssRGBColor red: 160 green: 82 blue: 45) identifiedBy: 'sienna');
		bind: #silver to: ((CssRGBColor red: 192 green: 192 blue: 192) identifiedBy: 'silver');
		bind: #skyBlue to: ((CssRGBColor red: 135 green: 206 blue: 235) identifiedBy: 'skyblue');
		bind: #slateBlue to: ((CssRGBColor red: 106 green: 90 blue: 205) identifiedBy: 'slateblue');
		bind: #slateGray to: ((CssRGBColor red: 112 green: 128 blue: 144) identifiedBy: 'slategray');
		bind: #slateGrey to: ((CssRGBColor red: 112 green: 128 blue: 144) identifiedBy: 'slategrey');
		bind: #snow to: ((CssRGBColor red: 255 green: 250 blue: 250) identifiedBy: 'snow');
		bind: #springGreen to: ((CssRGBColor red: 0 green: 255 blue: 127) identifiedBy: 'springgreen');
		bind: #steelBlue to: ((CssRGBColor red: 70 green: 130 blue: 180) identifiedBy: 'steelblue');
		bind: #tan to: ((CssRGBColor red: 210 green: 180 blue: 140) identifiedBy: 'tan');
		bind: #teal to: ((CssRGBColor red: 0 green: 128 blue: 128) identifiedBy: 'teal');
		bind: #thistle to: ((CssRGBColor red: 216 green: 191 blue: 216) identifiedBy: 'thistle');
		bind: #tomato to: ((CssRGBColor red: 255 green: 99 blue: 71) identifiedBy: 'tomato');
		bind: #turquoise to: ((CssRGBColor red: 64 green: 224 blue: 208) identifiedBy: 'turquoise');
		bind: #violet to: ((CssRGBColor red: 238 green: 130 blue: 238) identifiedBy: 'violet');
		bind: #wheat to: ((CssRGBColor red: 245 green: 222 blue: 179) identifiedBy: 'wheat');
		bind: #white to: ((CssRGBColor red: 255 green: 255 blue: 255) identifiedBy: 'white');
		bind: #whiteSmoke to: ((CssRGBColor red: 245 green: 245 blue: 245) identifiedBy: 'whitesmoke');
		bind: #yellow to: ((CssRGBColor red: 255 green: 255 blue: 0) identifiedBy: 'yellow');
		bind: #yellowGreen to: ((CssRGBColor red: 154 green: 205 blue: 50) identifiedBy: 'yellowgreen')
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeSizeConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #contain to: 'contain';
		bind: #cover to: 'cover'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeTextConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #blink to: 'blink';
		bind: #breakWord to: 'break-word';
		bind: #capitalize to: 'capitalize';
		bind: #dot to: 'dot';
		bind: #doubleCircle to: 'double-circle';
		bind: #ellipsis to: 'ellipsis';
		bind: #filled to: 'filled';
		bind: #lineThrough to: 'line-through';
		bind: #lowercase to: 'lowercase';
		bind: #nowrap to: 'nowrap';
		bind: #open to: 'open';
		bind: #over to: 'over';
		bind: #overline to: 'overline';
		bind: #pre to: 'pre';
		bind: #preLine to: 'pre-line';
		bind: #preWrap to: 'pre-wrap';
		bind: #sesame to: 'sesame';
		bind: #triangle to: 'triangle';
		bind: #under to: 'under';
		bind: #underline to: 'underline';
		bind: #uppercase to: 'uppercase'
]

{ #category : #initialization }
RenoirSt class >> initializeUnits [

	<ignoreForCoverage>
	CssConstants bind: #units to: Namespace new.
	self initializeLengthUnits.
	"Angle"
	(CssConstants >> #units)
		bind: #degree to: (CssUnit identifiedBy: 'deg');
		bind: #radian to: (CssUnit identifiedBy: 'rad');
		bind: #gradian to: (CssUnit identifiedBy: 'grad');
		bind: #turn to: (CssUnit identifiedBy: 'turn').
	"Frequency"
	(CssConstants >> #units)
		bind: #hertz to: (CssUnit identifiedBy: 'Hz');
		bind: #kiloHertz to: (CssUnit identifiedBy: 'kHz').
	"Resolution"
	(CssConstants >> #units)
		bind: #dotsPerCentimeter to: (CssUnit identifiedBy: 'dpcm');
		bind: #dotsPerInch to: (CssUnit identifiedBy: 'dpi');
		bind: #dotsPerPixelUnit to: (CssUnit identifiedBy: 'dppx').
	"Time"
	(CssConstants >> #units)
		bind: #second to: (CssUnit identifiedBy: 's');
		bind: #millisecond to: (CssUnit identifiedBy: 'ms')
]

{ #category : #accessing }
RenoirSt class >> units [

	^ self constants >> #units
]
