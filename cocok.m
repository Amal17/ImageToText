function result = cocok(soal, huruf)
  result=0;
  for i=1:175
    for j=1:175
      if (soal(i,j) == huruf(i,j))
        hasil(i,j) = 0;
      else
        hasil(i,j) = 1;
      endif
    endfor
  endfor
  
  ver = vertikal(hasil);
 
  n = size(ver)(2);
  for i=1:n
    result+=ver(i);
  endfor
  
  return;
endfunction
