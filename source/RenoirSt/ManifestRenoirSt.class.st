"
I stores metadata on true and false positive critics. These meta data are used by the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestRenoirSt,
	#superclass : #Object,
	#category : 'RenoirSt'
}

{ #category : #'meta data' }
ManifestRenoirSt class >> rejectClasses [
^ #()
]

{ #category : #'meta data' }
ManifestRenoirSt class >> rejectRules [
^ #()
]

{ #category : #'meta data' }
ManifestRenoirSt class >> ruleExcessiveMethodsRuleV1FalsePositive [
^ #(#(#(#RGClassDefinition #(#CssSelector)) #'2014-04-12T16:11:22.751412-03:00') #(#(#RGClassDefinition #(#CssDeclarationBlock)) #'2014-04-12T16:11:22.750412-03:00') #(#(#RGClassDefinition #(#CssConstants)) #'2014-04-12T16:11:22.751412-03:00') #(#(#RGClassDefinition #(#CssSVGColors)) #'2014-04-12T16:11:22.750412-03:00') )
]

{ #category : #'meta data' }
ManifestRenoirSt class >> ruleExcessiveVariablesRuleV1FalsePositive [
^ #(#(#(#RGClassDefinition #(#CssMediaQueryConstants)) #'2014-04-12T16:11:22.034412-03:00') #(#(#RGClassDefinition #(#CssLengthUnits)) #'2014-04-12T16:11:22.037412-03:00') #(#(#RGClassDefinition #(#CssSVGColors)) #'2014-04-12T16:11:22.036412-03:00') )
]

{ #category : #'meta data' }
ManifestRenoirSt class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [
^ #(#(#(#RGMethodDefinition #(#'CssSVGColors class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#CssDeclarationBlock #initialize #false)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#'CssResolutionUnits class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#'CssFrequencyUnits class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#CssMediaQueryRuleBuilder #initialize #false)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#'CssTimeUnits class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#'CssAngleUnits class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#'CssMediaQueryConstants class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#'CssLengthUnits class' #initialize #true)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#CssAbstractDeclaration #value #false)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#CascadingStyleSheetBuilder #initialize #false)) #'2014-04-12T16:11:22.693412-03:00') #(#(#RGMethodDefinition #(#CssObject #printOn: #false)) #'2014-04-12T16:11:22.693412-03:00') )
]

{ #category : #'meta data' }
ManifestRenoirSt class >> ruleInstVarInSubclassesRuleV1FalsePositive [
^ #(#(#(#RGClassDefinition #(#CssHSLColor)) #'2014-04-12T16:11:22.395412-03:00') #(#(#RGClassDefinition #(#CssColor)) #'2014-04-12T16:11:22.396412-03:00') #(#(#RGClassDefinition #(#CssRGBColor)) #'2014-04-12T16:11:22.396412-03:00') )
]

{ #category : #'meta data' }
ManifestRenoirSt class >> ruleLongMethodsRuleV1FalsePositive [
^ #(#(#(#RGMethodDefinition #(#'CssSVGColors class' #initializeAtoF #true)) #'2014-04-12T16:11:21.986412-03:00') #(#(#RGMethodDefinition #(#'CssSVGColors class' #initializeMtoZ #true)) #'2014-04-12T16:11:21.985412-03:00') #(#(#RGMethodDefinition #(#'CssSVGColors class' #initializeGtoL #true)) #'2014-04-12T16:11:21.985412-03:00') )
]

{ #category : #'meta data' }
ManifestRenoirSt class >> ruleMissingSubclassResponsibilityRuleV1FalsePositive [
^ #(#(#(#RGMethodDefinition #(#CssAttributeReference #cssFunctionParametersContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssUniversalSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssMathExpression #functionName #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssRGBColor #functionName #false)) #'2014-04-12T16:11:22.343412-03:00') #(#(#RGMethodDefinition #(#CssClassSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssToggle #functionName #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssAttributeSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssIdSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssTypeSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssToggle #cssFunctionParametersContentOn: #false)) #'2014-04-12T16:11:22.343412-03:00') #(#(#RGMethodDefinition #(#CssHSLColor #componentsDo:separatedBy: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssDeclaration #value #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssRGBColor #componentsDo:separatedBy: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssGeneralSiblingCombinator #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssPseudoElementSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssChildCombinator #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssAlphaChannelProvided #componentsDo:separatedBy: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssAdjacentSiblingCombinator #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssDescendantCombinator #cssContentOn: #false)) #'2014-04-12T16:11:22.343412-03:00') #(#(#RGMethodDefinition #(#CssSelectorGroup #cssContentOn: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssNoAlphaChannelProvided #functionNameFor: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssImportantDeclaration #property #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssIdentifiedColor #identifiedBy: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssColor #identifiedBy: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssNormalRulePrecedencePolicy #applyTo: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssColor #cssContentOn: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssImportantRulePrecedencePoliciy #applyTo: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssHSLColor #functionName #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssImportantDeclaration #value #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssIdentifiedColor #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssPseudoClassSelector #cssContentOn: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssMathExpression #cssFunctionParametersContentOn: #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssDeclaration #property #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssAttributeReference #functionName #false)) #'2014-04-12T16:11:22.345412-03:00') #(#(#RGMethodDefinition #(#CssNoAlphaChannelProvided #componentsDo:separatedBy: #false)) #'2014-04-12T16:11:22.344412-03:00') #(#(#RGMethodDefinition #(#CssAlphaChannelProvided #functionNameFor: #false)) #'2014-04-12T16:11:22.345412-03:00') )
]
