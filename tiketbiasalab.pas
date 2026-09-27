program tiketbiasalab;
uses crt;
var
  jenisFilm, hari, jumlah: integer;
  harga, tambahan, totalAwal, diskon, totalAkhir: real;
begin
  clrscr; 
  write('Pilih film (1=Reguler, 2=3D, 3=IMAX): ');
  readln(jenisFilm);
  write('Pilih hari (1=Senin-Kamis, 2=Jumat, 3=Sabtu-Minggu): ');
  readln(hari);
  write('Jumlah tiket: ');
  readln(jumlah);
  case jenisFilm of
    1: harga := 30000;
    2: harga := 45000;
    3: harga := 60000;
  end;
  
  case hari of
    1: tambahan := 0;
    2: tambahan := 5000;
    3: tambahan := 10000;
  end;
  totalAwal := (harga + tambahan) * jumlah;
  if totalAwal >= 200000 then
  begin
    diskon := totalAwal * 0.10;
  end
  else if totalAwal >= 100000 then
  begin
    diskon := totalAwal * 0.05;
  end
  else
  begin
    diskon := 0;
  end;
  
  totalAkhir := totalAwal - diskon;
  writeln;
  writeln('Harga awal : ', totalAwal:0:0);
  writeln('Diskon     : ', diskon:0:0);
  writeln('Total bayar: ', totalAkhir:0:0);
  readln;
end.