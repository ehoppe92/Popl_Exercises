MODULE BinaryTree;

FROM STextIO IMPORT WriteString, WriteLn, SkipLine, ReadString;
FROM SWholeIO IMPORT WriteInt, ReadInt;
FROM Storage IMPORT ALLOCATE, DEALLOCATE;
IMPORT ProgramArgs, IOResult, SeqFile, TextIO, ChanConsts;

(*FROM SYSTEM IMPORT SIZE; *)
(* IMPORT InOut;  *)


VAR zeichen: ARRAY[1..200] OF CHAR; (* to do: arbitrary number? *)
VAR counter: CARDINAL;
VAR fill, i: INTEGER;
VAR zahlen: ARRAY[1..1000] OF INTEGER;
(*TYPE INPUT = POINTER TO ARRAY OF INTEGER;*)
(* VAR inputArray: INPUT; *)

(*define the type of node in the tree*)



TYPE NodePointer = POINTER TO Node;
TYPE functionPointer = POINTER TO PROCEDURE(NodePointer);

TYPE Node = RECORD
			parent, left, right: NodePointer;
			id: INTEGER;
			visit: functionPointer;
END;

PROCEDURE print(node: NodePointer);
BEGIN
	(*print id on stdout*)
	WriteInt(node^.id, 10);
END print;

VAR root: NodePointer;
VAR fpointer: functionPointer;

PROCEDURE createNewNode(parent: NodePointer; id: INTEGER; visite: functionPointer): NodePointer;
VAR newNode: NodePointer;
BEGIN
	ALLOCATE(newNode, SIZE(NodePointer));
	newNode^.parent := parent;
	newNode^.left := NIL;
	newNode^.right := NIL;
	newNode^.id := id;
	newNode^.visit := visite;
	RETURN newNode;
END createNewNode;

PROCEDURE fromSortedArrayToBalancedTree(array: ARRAY OF INTEGER; start, end: INTEGER; parent: NodePointer): NodePointer;
VAR middle: INTEGER;

VAR root: NodePointer;

BEGIN
	IF(start>end)
	THEN RETURN NIL;
	END; (*IF*)
	
	(*get the middle of array and that is the root*)
	middle := (start+end)/2;
	fpointer^ := print;
	root := createNewNode(parent, array[middle], fpointer);
	root^.left := fromSortedArrayToBalancedTree(array, start, middle-1, root);
	root^.right := fromSortedArrayToBalancedTree(array, middle+1, end, root);
	
	RETURN root;
END fromSortedArrayToBalancedTree;


TYPE compareNumbers =PROCEDURE(INTEGER, INTEGER): INTEGER;

(*Parameter mit VAR sind mögliche Ausgabeparameter*)
PROCEDURE compare(a, b : INTEGER): INTEGER ;
BEGIN
	IF(a<b)
	THEN
	RETURN -1
	END;
	
	IF(a=b)
	THEN
	RETURN 0
	END;
	
	IF(a>b)
	THEN
	RETURN 1
	END;
END compare;


(*first und last sind indizes*)
(*PROCEDURE quicksort(VAR array: ARRAY OF INTEGER; first, last: INTEGER; f: compareNumbers);

VAR pivotElement, p, i, temp: INTEGER;
(* VAR p: INTEGER; *)
(*VAR i: INTEGER;   *)
(* VAR temp: INTEGER;   *)

BEGIN  	
	WriteString("first and last: "); WriteInt(first, 10); WriteInt(last, 10);WriteLn;
	WriteString("Ergebnis compare: "); WriteInt(f(first, last), 10); WriteLn;
	IF(f(first, last) > 0)
	THEN
		(*Pivot Element berechnen*)
		WriteString("Uebergebenes Array: ");
		FOR i:=0 TO n-1 DO
		WriteInt(array[i], 10); WriteLn;
		END; (*FOR*)
		WriteString("p:=first: ");
		p:=first;
		WriteInt(p, 10);
		WriteLn;
		WriteString("pivotElement:= array[first]: ");
		pivotElement:=array[last];
		WriteInt(pivotElement, 10);
		FOR i:=(first)+1 TO last DO
			IF(array[i] <= pivotElement)
			THEN
				
				p:= p+1;
				WriteString("Indizes im SWAP: p:"); WriteInt(p, 10); WriteString("i:"); WriteInt(i, 10); WriteLn;
				(*swap array[i], array[p]*)
				temp:=array[i];
				array[i]:=array[p];
				array[p]:=temp;
				(*swap ende*)
			END; (*if*)
		END; (*for*)
		(*swap array[p], array[first]*)
		WriteString("Indizes ausserhalb SWAP: p"); WriteInt(p, 10); WriteString("first: "); WriteInt(first, 10); WriteLn;
		temp:=array[p];
		array[p]:=array[first-1];
		array[first-1]:=temp;
		(*swap ende*)
		(* p = pivot element*)
	(*Quicksort von links und rechts aufrufen*)
	quicksort(array, first, p-1, f);
	quicksort(array, p+1, last, f);
	END; (*if*)

END quicksort;*)
(*QUICKSORT ENDE*)




PROCEDURE partition(VAR array: ARRAY OF INTEGER; left, right: INTEGER; f: compareNumbers) : INTEGER;
VAR pivot, rh, lh, temp: INTEGER;

BEGIN
IF(f(left, right) < 0)
THEN
	WriteString("im partition");
	pivot:=array[right];
	rh := right;
	lh := left;
	
	WriteString("Pivot:"); WriteInt(pivot, 10); WriteString("rh + lh :"); WriteInt(rh, 10); WriteInt(lh, 10); WriteLn;
	
	
	REPEAT
		
		WHILE ((f(lh, rh) < 0) AND (array[lh] <= pivot)) DO lh := lh+1;
			WriteString("1 while array[lh]: "); WriteInt(array[lh], 10); WriteLn;
		END;
		WHILE ((f(rh, lh) > 0) AND (array[rh] >= pivot)) DO rh := rh-1;
				WriteString("2 while array[rh]: "); WriteInt(array[rh], 10); WriteLn;
		END;
		
		IF(f(lh, rh) <0 )
		THEN
		   	temp := array[lh]; array[lh] := array[rh]; array[rh] := temp;
		
		END; (*IF THEN*)
	UNTIL (rh = lh); (*REPEAT*)	


	(*pivot element to the right position *)
	array[right] := array[lh]; array[lh] := pivot;
	RETURN lh;
ELSE	
RETURN right;
END; (*IF THEN ELSE*)
END partition;

(*new quicksort implementation*)
(* first und last sind indizes*)
PROCEDURE quicksort2(VAR array: ARRAY OF INTEGER; left, right: INTEGER; f:compareNumbers);

VAR pivotIndex: INTEGER;
BEGIN
	(*min 2 Elements?*)
	IF(f(left, right) < 0)
        THEN
		(*partition of the field*)
		
             	pivotIndex := partition( array, left, right, f);

                (*sort the left and right field*)
		quicksort2(array, left, pivotIndex-1, f);
		quicksort2(array, pivotIndex+1, right, f);
        END; (*IF THEN ELSE*)
END quicksort2;




(*TO DO: method: dft*)
PROCEDURE dft(parent: NodePointer);
BEGIN
	IF(parent = NIL) THEN RETURN;  END;
	
	(*visit the left tree*)
	dft(parent^.left);
	
	(*visit right tree*)
	dft(parent^.right);
	
	(*deal with the node*)
	print(parent);
	(*delete*)
	DEALLOCATE(parent, SIZE(NodePointer));
	
END dft;


(*main*)
BEGIN
	(*WriteString("Give numbers separated by whitespaces");
	WriteLn;        *)
	
	(*WHILE ProgramArgs.ArgIsPresent() DO
    		TextIO.ReadToken(ProgramArgs.ArgChan(), zeichen);	
	END;*)
	
	
        (*test quicksort and dft*)
	(*Annahme: alle Nummern im array zahlen*)
	(*sort the array*)
	fill := 10;
	FOR i:=1 TO 10 DO
		zahlen[i] := fill;
		WriteString("fill "); WriteInt(zahlen[i], 10); WriteLn;
		DEC(fill);
		
	END; (*FOR*)

	(*quicksort doesn't work??*)
	quicksort2(zahlen, 4, 7, compare);
	WriteString("Nach Sortierung"); WriteLn;
	FOR i:=1 TO 10 DO
		    WriteInt(zahlen[i], 10); WriteLn;
	END; (*FOR*)
	
	(*allocate space for the nodes*)
	(*assign function print so: node^.visit^:=print;*)
	
	(*create balanced tree*)
	(* starts with NIL Pointer as the parent node for the root element *)
	root := fromSortedArrayToBalancedTree(zahlen, 1, 10, NIL);
	
	(* now traverse the tree *)
	dft(root);	

END BinaryTree.
