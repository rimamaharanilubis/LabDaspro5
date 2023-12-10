program krs;
uses crt;

type
  mahasiswa = record
    nama, nim: string;
end;
  namamatkul = record
    matkul: string;
    sks: integer;
    nilai: string;
    skor: real;
end;

function HitungSkor(nilai: string; sks: integer): real;
begin
  case nilai of
    'A': HitungSkor := 4 * sks;
    'B+': HitungSkor := 3.5 * sks;
    'B': HitungSkor := 3 * sks;
    'C+': HitungSkor := 2.5 * sks;
    'C': HitungSkor := 2 * sks;
    'D': HitungSkor := 1 * sks;
    'E': HitungSkor := 0 * sks;
    else
      HitungSkor := 0;
  end;
end;

var
  datamahasiswa: mahasiswa;
  datamatkul: array [1..10] of namamatkul;
  i, n, j: integer;
  filename: string;
  f: textfile;
  totalSks, totalSkor, sksT, ip: real;

begin
  clrscr;
  totalSks := 0;
  totalSkor := 0;
  sksT := 0;
  write('Banyak Matkul : '); readln(n);
  for i := 1 to n do begin
    with datamatkul[i] do begin
      clrscr;
      write('Matkul ke-', i, ' : '); readln(matkul);
      write('SKS ', ' : '); readln(sks);
    end;
  end;
  clrscr;
  write('Nama : '); readln(datamahasiswa.nama);
  write('NIM : '); readln(datamahasiswa.nim);
  for i := 1 to n do begin
    with datamatkul[i] do begin
      write('Nilai ', matkul, ' : '); readln(nilai);
      skor := HitungSkor(nilai, sks);
      sksT := sksT + sks;
      totalSkor := totalSkor + skor;
    end;
  end;
  totalSks := sksT;
  filename := 'KHS_' + datamahasiswa.nama + '' + datamahasiswa.nim + '' + '.txt';
  assign(f, filename);
  rewrite(f);
  clrscr;
  writeln(f, 'KARTU HASIL STUDI');
  writeln(f, '=================');
  writeln(f);
  writeln(f, 'Nama    : ', datamahasiswa.nama);
  writeln(f, 'NIM     : ', datamahasiswa.nim);
  writeln(f);
  writeln(f, '|================================================|');
  write(f, '| No | Mata Kuliah                     | Nilai   |');
  writeln(f);
  writeln(f, '|================================================|');
  for i := 1 to n do begin
    with datamatkul[i] do begin
      write(f, '|  ', i, ' | ', matkul);
      for j := 1 to (32 - length(matkul)) do begin
        write(f, ' ');
      end;
      write(f, '|  ', nilai, '      | ');
      for j := 1 to (5 - length(nilai)) do begin
        write(f, ' ');
      end;
    end;
    writeln(f);
  end;
  writeln(f, '|================================================|');
  if totalSks <> 0 then begin
    ip := totalSkor / totalSks
  end else begin
    ip := 0;
  end;
  writeln(f);
  writeln(f, 'Total SKS   : ', totalSks:0:0);
  writeln(f, 'IP Semester : ', ip:1:2);
  writeln(f);
  write('File Telah Berhasil Dibuat');
  close(f);
end.