with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
with Ada.Task_Identification;  use Ada.Task_Identification;

procedure main is

    task type Tarea(p: natural);
    task body Tarea is
    begin
      for I in 1..5 loop
            put(p);
            put_line(": Línea 1");
            put(p);
            put_line(": Línea 2");
            put(p);
            put_line(": Línea 3");
            put(p);
            put_line(": Línea 4");
            put(p);
            put_line(": Línea 5");
         new_line;
         delay 10.5;
        end loop;
    end Tarea;

    type t_tarea is access Tarea;

    N : t_tarea;
    T : t_tarea;

begin
   N := new Tarea(1);
   T := new Tarea(2);
   delay 4.0;
   Abort_Task (Current_Task);
end main;
