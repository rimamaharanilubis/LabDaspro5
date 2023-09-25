program biodata.pass;
uses wincrt;
var
   nama,nim,kom,alamat:string;

begin
     write('Masukan Nama Anda:');
     readln(nama);
     write('Masukan NIM Anda:');
     readln(nim);
     write('Masukan Kom Anda:');
     readln(kom);
     write('Masukan Alamat Anda:');
     readln(alamat);
     writeln('Hallo, Nama saya ', nama, ', NIM saya ', nim, ', saya di kom ', kom, ', alamat saya ', alamat, ', Salam Kenal Semua');
end.