accessing
cachedImageAt: aKey ifAbsentPut: aBlock

	CachedImages ifNil: [CachedImages := Dictionary new].
	^CachedImages at: aKey ifAbsentPut: aBlock