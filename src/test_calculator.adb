--  Anade mas tests para comprobar todas las combinaciones de
--  operadores positivos, negativos y el cero.

with Ada.Text_IO;      use Ada.Text_IO;
with Test_Assertions;  use Test_Assertions;
with Calculator;       use Calculator;

procedure Test_Calculator is

   procedure Test_1 is
      Msg   : constant String := "Test_1: Add positive numbers";
   begin
      Assert_True (Add (3, 4) = 7, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;

   procedure Test_2 is
      Msg    : constant String := "Test_2: Subtract numbers";
      Result : Integer;
   begin
      Subtract (3, 4, Result);
      Assert_True (Result = -1, Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2;

   procedure Test_3 is
      Msg    : constant String := "Test_3: Subtract numbers";
      Result : Integer;
   begin
      Subtract (-3, -4, Result);
      Assert_True (Result = 1, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end;

   procedure Test_4 is
      Msg    : constant String := "Test_4: Subtract numbers";
      Result : Integer;
   begin
      Subtract (-3, 4, Result);
      Assert_True (Result = -7, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end;

   procedure Test_5 is
      Msg    : constant String := "Test_5: Subtract numbers";
      Result : Integer;
   begin
      Subtract (1, -4, Result);
      Assert_True (Result = 5, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
         raise;
   end;

begin
   Put_Line ("********************* Test_Calculator");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
end Test_Calculator;
