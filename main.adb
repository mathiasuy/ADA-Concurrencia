with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure main is

   task type Neruda(p : natural);
   task body Neruda is
    begin
        loop
            put_line("Neruda: me gustas cuando callas porque estás como ausente.");
            put(p);
            put_line("y me oyes desde lejos, y mi voz te toca.");
            put(p);
            new_line;
        end loop;
    end Neruda;

    type poemas1 is access Neruda;

    task type Tahirih(p: natural);
    task body Tahirih is
    begin
        loop
            put_line("Tahirih: poema 21 bla bla");
            put(p);
            put_line("Tahirih: poema 22 bla bla");
            put(p);
            put_line("Tahirih: poema 23 bla bla");
            put(p);
            put_line("Tahirih: poema 24 bla bla");
            put(p);
            put_line("Tahirih: poema 25 bla bla");
            put(p);
            new_line;
        end loop;
    end Tahirih;

    type poemas2 is access Tahirih;

    N : poemas1;
    T : poemas2;

begin
  N := new Neruda(1);
  T := new Tahirih(2);
end main;
