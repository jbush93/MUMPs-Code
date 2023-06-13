testing
	w "Hello World",!
	s test=1+3
	s a(1,2,3)="test value"
	s str1="string one"
	s str2="string two"
	s combinedstr=str1_" "_str2 ; concat the two strings
	w test
	w a(1,2,3)
	w combinedstr
	s i=20
	s j=20
	s:i=j be=123
	w be
	s k=20
	s g=25
	s h=25
	if h=g d 
	. w "equal"
	else  d 
	. w "not equal"
	;
	;loop example
ForLoop
	s even=0
	s odd=0
	s arrlength=100
	w "Array Length: ",arrlength,!
	f i=1:1:arrlength d
	. s randint=$random(100)
	. if randint#2=0 d
	. . s even=even+1
	. else  d
	. . s odd=odd+1
	w "Even numbers: ",even,!
	w "Odd numbers: ",odd,!
	;
Lists
	s myList="apple, banana, peach, orange, strawberry"
	w $piece(myList,",",2);output "banana"
	s myList=myList_", grape"
	w myList
	s myList="blueberry, "_myList
	w myList
	s position=$find(myList,"peach")
	if position>0 d
	. w "Element found at position: ",position,!
	else  d
	. w "Element not found."
	s reversedList=$reverse(myList)
	w reversedList
	f i=$length(myList):-1:1 d
	. w $extract(myList,i)
