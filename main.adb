with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure main is

   task type Tarea1(p : natural);
   task body Tarea1 is
    begin
        loop
            put_line("Tarea 1 L�nea 1");
            put(p);
            put_line("Tarea 1 L�nea 2");
            put(p);
            put_line("Tarea 1 L�nea 3");
            put(p);
            put_line("Tarea 1 L�nea 4");
            put(p);
            put_line("Tarea 1 L�nea 5");
            put(p);
            new_line;
        end loop;
    end Tarea1;

    type t_tarea1 is access Tarea1;

    task type Tarea2(p: natural);
    task body Tarea2 is
    begin
        loop
            put_line("Tarea 2 L�nea 1");
            put(p);
            put_line("Tarea 2 L�nea 2");
            put(p);
            put_line("Tarea 2 L�nea 3");
            put(p);
            put_line("Tarea 2 L�nea 4");
            put(p);
            put_line("Tarea 2 L�nea 5");
            put(p);
            new_line;
        end loop;
    end Tarea2;

    type t_tarea2 is access Tarea2;

    N : t_tarea1;
    T : t_tarea2;

begin
  N := new Tarea1(1);
  T := new Tarea2(2);
end main;
