program penentubeasiswalab;
uses crt;
var
  ipk, gajiOrtu: real;
  prestasi: integer;
begin
  clrscr;
  write('Masukkan IPK: ');
  readln(ipk);
  write('Masukkan Penghasilan Ortu: ');
  readln(gajiOrtu);
  write('Masukkan Jumlah Prestasi: ');
  readln(prestasi);
  writeln;
  if ipk < 2.75 then
  begin
    writeln('IPK Tidak Memenuhi Syarat');
  end
  else if (ipk >= 3.75) and (gajiOrtu <= 5000000) and (prestasi >= 2) then
  begin
    writeln('Mendapatkan Beasiswa Penuh');
  end
  else if (ipk >= 3.50) and (gajiOrtu <= 7000000) and (prestasi >= 1) then
  begin
    writeln('Mendapatkan Beasiswa Sebagian');
  end
  else if (ipk >= 3.50) and (gajiOrtu > 7000000) then
  begin
    writeln('Penghasilan Tidak Memenuhi Syarat');
  end
  else
  begin
    writeln('Tidak Mendapatkan Beasiswa');
  end;
  
  readln;
end.