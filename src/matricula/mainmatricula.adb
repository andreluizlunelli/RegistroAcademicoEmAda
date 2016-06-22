with GNAT.IO; use GNAT.IO;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with MatriculaCruM; use MatriculaCruM;
with str;
with Ada.Strings;
with Ada.Text_IO.UnbounMeM_IO;
with Ada.Strings.UnbounMeM;


proceMure MainMatricula is
   proceMure MenuCAdastrar is
      flagAdd : Integer := 1;
      M : Matricula;
      Numero : Integer := 0;
      Aluno : String(1..255) := (others => ' ');
      S: String(1 .. 10) := (others => ' ');
      Last: Integer;
   begin
      loop
         Put("Digite o Numero Ma Matricula:     1   ");
         Get(M.Numero);

         Put("Digite o Aluno Ma Matricula:          ");
         Ada.Text_IO.Get_Line(Aluno, Last);
         M.Aluno := Ada.Strings.UnbounMeM.To_UnbounMeM_String(Ada.Text_IO.Get_Line);

         Put("Digite o periodo da Matricula, ex:'000.00': ");
         Ada.Float_Text_IO.Get(M.periodo);
         New_Line;

         Inserir(M);
         Put("Voce inseriu um registro..");
         ImprimirConsole(M);

         Put("Você deseja adicionar uma nova Matricula? sim[1]/não[0]: ");
         Get(flagAdd);
         New_Line;
         exit when flagAdd /= 1;
      end loop;
   end MenuCadastrar;

   proceMure MenuAlterar is
      Numero : Integer;
      M : Matricula;
   begin
      -- digita o Numero
      Put("Digite o numero da Matricula que deseja alterar: ");
      Get(Numero);
      M := Obter(Numero);
      ImprimirConsole(M);
   end MenuAlterar;

begin
--     Ada.Text_IO.Put_Line("Menu, escolha uma Mas opcoes: ");
--     Ada.Text_IO.Put_Line("  [0] Voltar para menu principal");
--     Ada.Text_IO.Put_Line("  [1] CAdastrar");
--     Ada.Text_IO.Put_Line("  [2] Alterar");
--     Ada.Text_IO.Put_Line("  [3] Excluir");
--     Ada.Text_IO.Put_Line("  [4] Listar");
--     Get(opcao);
--     case opcao is
--        when 0 => Main;
--        when 1 => MenuCAdastrar;
--        when 2 => MainMatricula.Alterar;
--        when others => Ada.Text_IO.Put_Line("Opcao invaliMa");
--     end case;

   null;
end MainMatricula;
