program alamat;
uses crt;
var
    no, kode_pos:integer;
    jalan, kota:string;

begin
    write('Jalan:');
    readln(jalan);
    write('No:');
    readln(no);
    write('Kota:');
    readln(kota);
    write('Kode Pos:');
    readln(kode_pos);
    writeln('Alamat :Jalan ', jalan, ' No. ', no,' ', kota,' ', kode_pos);
    readln;
end.