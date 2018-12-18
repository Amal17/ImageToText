function bin = graybw (img)
  tengah = 85;
  baris = size(img)(1);
  kolom = size(img)(2);
  for i=1:baris
    for j=1:kolom
      if img(i,j) < tengah
        bin(i,j) = 255;
      else
        bin(i,j) = 0;
      endif
    endfor
  endfor
  return;
endfunction