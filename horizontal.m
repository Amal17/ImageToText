function result = horizontal (bw)
  baris = size(bw)(1);
  kolom = size(bw)(2);
  
  for i=1:baris
    sum = 0;
    for j=1:kolom
      sum += bw(i,j);
    endfor
    result(i) = sum/255;
  endfor
endfunction
