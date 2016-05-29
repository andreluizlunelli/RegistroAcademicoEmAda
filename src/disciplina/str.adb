with Ada.Strings.Unbounded;

function str(s : String) return Ada.Strings.Unbounded.Unbounded_String is
begin
   return Ada.Strings.Unbounded.To_Unbounded_String(s);
end str;
