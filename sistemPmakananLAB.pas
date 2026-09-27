program sistemPmakanan;
uses crt;
var
  makanan, jumlah, status: integer;
  harga, total, diskon, bayar: real;
begin
  clrscr;
  write('Pilih Makanan (1=Nasgor, 2=Miegor, 3=Ayam, 4=Steak): ');
  readln(makanan);
  write('Jumlah Pesanan: ');
  readln(jumlah);
  if jumlah <= 0 then
  begin
    writeln('Jumlah pesanan tidak valid');
  end
  else if jumlah > 10 then
  begin
    writeln('Pesanan terlalu banyak');
  end
  else
  begin
    write('Status Pelanggan (1=Member, 2=Non-member): ');
    readln(status);
    case makanan of
      1: harga := 20000;
      2: harga := 18000;
      3: harga := 25000;
      4: harga := 50000;
    end;
    total := harga * jumlah;
    if status = 1 then
    begin
      if total >= 100000 then
      begin
        diskon := total * 0.15;
      end
      else if total >= 50000 then
      begin
        diskon := total * 0.10;
      end
      else
      begin
        diskon := total * 0.05;
      end;
    end
    else
    begin
      if total >= 100000 then
      begin
        diskon := total * 0.05;
      end
      else
      begin
        diskon := 0;
      end;
    end;
    bayar := total - diskon;
    writeln;
    writeln('Harga Makanan : ', harga:0:0);
    writeln('Total Harga   : ', total:0:0);
    writeln('Diskon        : ', diskon:0:0);
    writeln('Total Bayar   : ', bayar:0:0);
  end;
  readln;
end.
