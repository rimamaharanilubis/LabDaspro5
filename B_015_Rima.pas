program bilanganganjil;
uses crt;
var
  n, i: Integer;

begin
  write('Masukkan nilai n: ');
  readln(n);

  writeln('Bilangan ganjil dari ', n, ' sampai 1 yang merupakan kelipatan 3:');
  for i := n downto 1 do
  begin
    if (i mod 2 <> 0) and (i mod 3 = 0) then
      writeln(i);
  end;

  readln;
end.