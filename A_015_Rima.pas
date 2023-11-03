program bangun_ruang;
uses crt;
var
   r,t: real;
   volume, luaspermukaan: real;

begin
   write('masukkan diameter alas(cm):');
   readln(r);
   write('masukkan tinggi(cm):');
   readln(t);

   volume:= 3.14 * (r/2) * (r/2) * t;
   luaspermukaan:=(2 * 3.14 * (r/2) * t) + (2 * 3.14 * (r/2) * (r/2));

   writeln('volume tabung:', volume:0:2,' cm3');
   writeln('luas permukaan tabung:', luaspermukaan:0:2,' cm2');

   readln;
end.
