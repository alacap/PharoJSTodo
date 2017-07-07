as yet unclassified
routeTo: aUrl
	| index hashSuffix |
	index := aUrl indexOf: $#.
	(index == 0 or: [ index = aUrl size ])
		ifTrue: [ hashSuffix := '/' ]
		ifFalse: [ hashSuffix := aUrl copyFrom: index + 1 to: aUrl size ].
	routes
		detect: [ :route | route matches: hashSuffix ]
		ifFound: [ :route | route block value ]
		ifNone: []