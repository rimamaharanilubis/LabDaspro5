program nim_mahasiswa;
uses crt, sysutils;

var
    nomorUrutInt: integer;
    kelas:char;
    nama, nim, fakultas, prodi, kodefakultas, kodeprodi, stambuk, jalur, nomorUrut: string;
    
begin
    clrscr;
    Write('Masukkan Nama: ');
    Readln(nama);
    Write('Masukkan NIM: ');
    Readln(nim);

    if Length(nim) <> 9 then
    begin
        Writeln('Format NIM tidak sesuai.');
        Readln;
        Halt;
    end;

    stambuk := nim[1] + nim[2];
    kodeFakultas := nim[3] + nim[4];
    kodeProdi := nim[5] + nim[6];
    nomorUrut := nim[7] + nim[8] + nim[9];
    nomorUrutInt := StrToInt(nomorUrut);

    case kodefakultas of
        '01': fakultas := 'Kedokteran';
        '02': fakultas := 'Hukum';
        '03': fakultas := 'Pertanian';
        '04': fakultas := 'Teknik';
        '05': fakultas := 'Ekonomi dan Bisnis';
        '06': fakultas := 'Kedokteran Gigi';
        '07': fakultas := 'Ilmu Budaya';
        '08': fakultas := 'Matematika dan Ilmu Pengetahuan Alam';
        '09': fakultas := 'Ilmu Sosial dan Politik';
        '10': fakultas := 'Kesehatan Masyarakat';
        '11': fakultas := 'Keperawatan';
        '12': fakultas := 'Ilmu Kehutanan';
        '13': fakultas := 'Psikologi';
        '14': fakultas := 'Ilmu Komputer dan Teknologi Informasi';
        '15': fakultas := 'Farmasi';
        else fakultas := 'Kode Fakultas tidak terdaftar';
    end;

    case fakultas of
        'Kedokteran': 
            case kodeprodi of
                '00': prodi := 'Pendidikan Dokter';
            end;
        'Hukum': 
            case kodeprodi of
                '00': prodi := 'Ilmu Hukum';
            end;
        'Pertanian': 
            case kodeprodi of
                '01': prodi := 'Agroteknologi';
                '02': prodi := 'Manajemen Sumberdaya Perairan';
                '03': prodi := 'Agribisnis';
                '05': prodi := 'Teknologi Pangan';
                '06': prodi := 'Peternakan';
                '08': prodi := 'Teknik Pertanian dan Biosistem';
                '10': prodi := 'Agroteknologi (PSDKU)';
            end;
        'Teknik': 
            case kodeprodi of
                '01': prodi := 'Teknik Mesin';
                '02': prodi := 'Teknik Elektro';
                '03': prodi := 'Teknik Industri';
                '04': prodi := 'Teknik Sipil';
                '05': prodi := 'Teknik Kimia';
                '06': prodi := 'Arsitektur';
                '07': prodi := 'Teknik Lingkungan';
                '31': prodi := 'Pendidikan Profesi Insinyur';
            end;
        'Ekonomi dan Bisnis': 
            case kodeprodi of
                '01': prodi := 'Ekonomi Pembangunan';
                '02': prodi := 'Manajemen';
                '03': prodi := 'Akuntansi';
                '04': prodi := 'Kewirausahaan';
            end;
        'Kedokteran Gigi': 
            case kodeprodi of
                '01': prodi := 'Sarjana Kedokteran Gigi';
                '31': prodi := 'Profesi Kedokteran Gigi';
            end;
        'Ilmu Budaya': 
            case kodeprodi of
                '01': prodi := 'Sastra Indonesia';
                '02': prodi := 'Sastra Melayu';
                '03': prodi := 'Sastra Batak';
                '04': prodi := 'Sastra Arab';
                '05': prodi := 'Sastra Inggris';
                '06': prodi := 'Ilmu Sejarah';
                '07': prodi := 'Etnomusikologi';
                '08': prodi := 'Sastra Jepang';
                '09': prodi := 'Perpustakaan dan Sains Informasi';
                '10': prodi := 'Bahasa Mandarin';
            end;
        'Matematika dan Ilmu Pengetahuan Alam': 
            case kodeprodi of
                '01': prodi := 'Fisika';
                '02': prodi := 'Kimia';
                '03': prodi := 'Matematika';
                '05': prodi := 'Biologi';
            end;
        'Ilmu Sosial dan Politik': 
            case kodeprodi of
                '01': prodi := 'Sosiologi';
                '02': prodi := 'Ilmu Kesejahteraan Sosial';
                '03': prodi := 'Ilmu Administrasi Publik';
                '04': prodi := 'Ilmu Komunikasi';
                '05': prodi := 'Antropologi Sosial';
                '06': prodi := 'Ilmu Politik';
                '07': prodi := 'Ilmu Administrasi Bisnis';
            end;
        'Kesehatan Masyarakat': 
            case kodeprodi of
                '00': prodi := 'Kesehatan Masyarakat';
                '01': prodi := 'Gizi';
            end;
        'Keperawatan': 
            case kodeprodi of
                '01': prodi := 'Sarjana Keperawatan';
                '02': prodi := 'Profesi Ners';
            end;
        'Ilmu Kehutanan': 
            case kodeprodi of
                '01': prodi := 'Kehutanan';
            end;
        'Psikologi': 
            case kodeprodi of
                '01': prodi := 'Psikologi';
            end;
        'Ilmu Komputer dan Teknologi Informasi': 
            case kodeprodi of
                '01': prodi := 'Ilmu Komputer';
                '02': prodi := 'Teknologi Informasi';
            end;
        'Farmasi': 
            case kodeprodi of
                '01': prodi := 'Farmasi';
            end;
        else
            fakultas := 'Kode Fakultas tidak terdaftar';
    end;

    Writeln('Nama: ', nama);
    Writeln('NIM: ', nim);
    Writeln('Fakultas: ', fakultas);
    Writeln('Prodi: ', prodi);
    writeln('Stambuk: ', stambuk);

    if (stambuk='23') and (kodefakultas='14') and (kodeprodi='01') then begin
    if nomorUrutInt <= 30 then begin
        jalur := 'SNBP';
    end else if (nomorUrutInt >= 31) and (nomorUrutInt <= 70) then begin
        jalur := 'SNBT';
    end else begin
        jalur := 'SMM';
    end;

    if (nomorUrutInt mod 3 = 1) then begin
        kelas := 'A';
    end else if (nomorUrutInt mod 3 = 2) then begin
        kelas := 'B';
    end else begin
        kelas := 'C';
    end;

    Writeln('Jalur: ', jalur);
    Writeln('Kelas: ', kelas);
end;

readln;
end.