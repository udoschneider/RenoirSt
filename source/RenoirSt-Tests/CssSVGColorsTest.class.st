"
A CssSVGColorsTest is a test class for testing the behavior of CssSVGColors
"
Class {
	#name : #CssSVGColorsTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Colors'
}

{ #category : #private }
CssSVGColorsTest >> colorSelectors [

	^ #(#aliceBlue #antiqueWhite #aqua #aquamarine #azure #beige #bisque #black #blanchedAlmond #blue #blueviolet #brown #burlywood #cadetBlue #chartreuse #chocolate #coral #cornflowerBlue #cornsilk #crimson #cyan #darkBlue #darkCyan #darkGoldenrod #darkGray #darkGreen #darkGrey #darkKhaki #darkMagenta #darkOliveGreen #darkOrange #darkOrchid #darkRed #darkSalmon #darkSeaGreen #darkSlateBlue #darkSlateGray #darkSlateGrey #darkTurquoise #darkViolet #deepPink #deepSkyBlue #dimGray #dimGrey #dodgerBlue #firebrick #floralWhite #forestGreen #fuchsia #gainsboro #ghostWhite #gold #goldenrod #gray #green #greenYellow #grey #honeydew #hotPink #indianRed #indigo #ivory #khaki #lavender #lavenderBlush #lawnGreen #lemonChiffon #lightBlue #lightCoral #lightCyan #lightGoldenrodYellow #lightGray #lightGreen #lightGrey #lightPink #lightSalmon #lightSeaGreen #lightSkyBlue #lightSlateGray #lightSlateGrey #lightSteelBlue #lightYellow #lime #limeGreen #linen #magenta #maroon #mediumAquamarine #mediumBlue #mediumOrchid #mediumPurple #mediumSeaGreen #mediumSlateBlue #mediumSpringGreen #mediumTurquoise #mediumVioletRed #midnightBlue #mintCream #mistyRose #moccasin #navajoWhite #navy #oldlace #olive #olivedrab #orange #orangeRed #orchid #paleGoldenrod #paleGreen #paleTurquoise #paleVioletRed #papayaWhip #peachpuff #peru #pink #plum #powderBlue #purple #red #rosyBrown #royalBlue #saddleBrown #salmon #sandyBrown #seaGreen #seaShell #sienna #silver #skyBlue #slateBlue #slateGray #slateGrey #snow #springGreen #steelBlue #tan #teal #thistle #tomato #transparent #turquoise #violet #wheat #white #whiteSmoke #yellow #yellowGreen)
]

{ #category : #private }
CssSVGColorsTest >> expectedColorNames [

	^ #('aliceblue' 'antiquewhite' 'aqua' 'aquamarine' 'azure' 'beige' 'bisque' 'black' 'blanchedalmond' 'blue' 'blueviolet' 'brown' 'burlywood' 'cadetblue' 'chartreuse' 'chocolate' 'coral' 'cornflowerblue' 'cornsilk' 'crimson' 'cyan' 'darkblue' 'darkcyan' 'darkgoldenrod' 'darkgray' 'darkgreen' 'darkgrey' 'darkkhaki' 'darkmagenta' 'darkolivegreen' 'darkorange' 'darkorchid' 'darkred' 'darksalmon' 'darkseagreen' 'darkslateblue' 'darkslategray' 'darkslategrey' 'darkturquoise' 'darkviolet' 'deeppink' 'deepskyblue' 'dimgray' 'dimgrey' 'dodgerblue' 'firebrick' 'floralwhite' 'forestgreen' 'fuchsia' 'gainsboro' 'ghostwhite' 'gold' 'goldenrod' 'gray' 'green' 'greenyellow' 'grey' 'honeydew' 'hotpink' 'indianred' 'indigo' 'ivory' 'khaki' 'lavender' 'lavenderblush' 'lawngreen' 'lemonchiffon' 'lightblue' 'lightcoral' 'lightcyan' 'lightgoldenrodyellow' 'lightgray' 'lightgreen' 'lightgrey' 'lightpink' 'lightsalmon' 'lightseagreen' 'lightskyblue' 'lightslategray' 'lightslategrey' 'lightsteelblue' 'lightyellow' 'lime' 'limegreen' 'linen' 'magenta' 'maroon' 'mediumaquamarine' 'mediumblue' 'mediumorchid' 'mediumpurple' 'mediumseagreen' 'mediumslateblue' 'mediumspringgreen' 'mediumturquoise' 'mediumvioletred' 'midnightblue' 'mintcream' 'mistyrose' 'moccasin' 'navajowhite' 'navy' 'oldlace' 'olive' 'olivedrab' 'orange' 'orangered' 'orchid' 'palegoldenrod' 'palegreen' 'paleturquoise' 'palevioletred' 'papayawhip' 'peachpuff' 'peru' 'pink' 'plum' 'powderblue' 'purple' 'red' 'rosybrown' 'royalblue' 'saddlebrown' 'salmon' 'sandybrown' 'seagreen' 'seashell' 'sienna' 'silver' 'skyblue' 'slateblue' 'slategray' 'slategrey' 'snow' 'springgreen' 'steelblue' 'tan' 'teal' 'thistle' 'tomato' '''transparent''' 'turquoise' 'violet' 'wheat' 'white' 'whitesmoke' 'yellow' 'yellowgreen')
]

{ #category : #tests }
CssSVGColorsTest >> testColors [

	self colorSelectors with: self expectedColorNames do: [ :colorSelector :colorName | self assert: (CssSVGColors perform: colorSelector) printString equals: colorName ]
]
