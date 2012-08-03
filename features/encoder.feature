Feature: Encoding

Scenario: 
	Given the number of blocks must be created is m
	Given the minimum number of blocks needed to recover the data is k
	When encoding k must be less than m
	Then there will be m blocks created
