with Ada.Float_Text_IO;

procedure imprimirFloat(f : Float) is
begin
   Ada.Float_Text_IO.Put(Item => f,Fore => 3,Aft => 2,Exp => 0);
end imprimirFloat;
