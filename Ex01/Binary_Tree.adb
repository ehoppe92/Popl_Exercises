with Ada.Text_Io; use Ada.Text_Io;
with Ada.Command_line; use Ada.Command_Line;
with Ada.Unchecked_Deallocation;
with Ada.Containers.Doubly_Linked_Lists;
 
procedure Binary_Tree is
   
   type Node;
   type Node_Pointer is access Node;
   type visit_Pointer is access procedure (N: in Node_Pointer);
   type Node is record
	  parent : Node_Pointer := null;
      left : Node_Pointer := null;
      right : Node_Pointer := null;
      id : Integer;
	  visit : visit_Pointer;
   end record;
   
   procedure visitNode(N: in Node_Pointer) is
   begin
	Put(Integer'Image(N.id));
   end visitNode;
   
   procedure Destroy_Tree(N : in out Node_Pointer) is
      procedure free is new Ada.Unchecked_Deallocation(Node, Node_Pointer);
   begin
      if N.Left /= null then
         Destroy_Tree(N.Left);
      end if;
      if N.Right /= null then 
         Destroy_Tree(N.Right);
      end if;
      Free(N);
   end Destroy_Tree;
   function Tree(id : Integer; left : Node_Pointer; right : Node_Pointer) return Node_Pointer is
      Temp : Node_Pointer := new Node;
   begin
      Temp.id := id;
      Temp.left := left;
      Temp.right := right;
	  Temp.visit := visitNode'Access;
      return Temp;
   end Tree;
   procedure dft(N : Node_Pointer) is
   begin
      if N.Left /= null then
         dft(N.Left);
      end if;
      if N.Right /= null then
         dft(N.Right);
      end if;
	  N.visit(N);
   end dft;
   
   N : Node_Pointer;
   
-- main
begin
   N := Tree(1, 
      Tree(2,
         Tree(4,
            Tree(7, null, null),
            null),
         Tree(5, null, null)),
      Tree(3,
         Tree(6,
            Tree(8, null, null),
            Tree(9, null, null)),
         null));
 
   dft(N);
   
   --works ; TODO: copy the argumets to nodes
   New_Line;
   Destroy_Tree(N);
   
   Put(Command_Name & " ");
   for Arg in 1..Argument_Count loop
      Put(Argument(Arg) & " ");
   end loop;
   New_Line;
   
end Binary_Tree;