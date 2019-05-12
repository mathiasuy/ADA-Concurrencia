with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
with Ada.Task_Identification;  use Ada.Task_Identification;

procedure main is

   task type Tarea1(p : natural);
   task body Tarea1 is
    begin
      for I in 1..5 loop
            put_line("Tarea 1 Línea 1");
            put(p);
            put_line("Tarea 1 Línea 2");
            put(p);
            put_line("Tarea 1 Línea 3");
            put(p);
            put_line("Tarea 1 Línea 4");
            put(p);
            put_line("Tarea 1 Línea 5");
            put(p);
            new_line;
            delay 10.5;
        end loop;
    end Tarea1;

    type t_tarea1 is access Tarea1;

    task type Tarea2(p: natural);
    task body Tarea2 is
    begin
      for I in 1..5 loop
            put_line("Tarea 2 Línea 1");
            put(p);
            put_line("Tarea 2 Línea 2");
            put(p);
            put_line("Tarea 2 Línea 3");
            put(p);
            put_line("Tarea 2 Línea 4");
            put(p);
            put_line("Tarea 2 Línea 5");
            put(p);
         new_line;
         delay 10.5;
        end loop;
    end Tarea2;

    type t_tarea2 is access Tarea2;

    N : t_tarea1;
    T : t_tarea2;

begin
  N := new Tarea1(1);
   T := new Tarea2(2);
   delay 4.0;
   Abort_Task (Current_Task);
end main;
