program terbang;
uses crt;
var
  n,m: integer;
  x, totalenergi: real
  buff: boolean;

begin
  write('masukkan jumlah kabel yang digunakan(n):');
  readln(n);
  write('masukkan energi untuk satu kabel(x):');
  readln(x);
  write('masukkan jumlah musuh yang terkena serangan fanny(m):');
  readln(m);
  write('apakah fanny mendapat buff? (TRUE atau FALSE):');
  readln(buff);
  
  totalenergi:= n * x;
  
  if buff then
     totalenergi:= totalenergi * 0.8;

  writeln('total energi yang dikeluarkan fanny:', totalenergi:0:2);
  
  readln;
end.
