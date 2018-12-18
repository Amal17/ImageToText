function result = app (img)
  
  result = '';
  gray = rgbgray(img);
  
  bw = graybw(gray);
  
  ver = vertikal(bw);
  
  potVer = potongVertikal(ver);
  n = size(potVer)(1);
  for i=2:n-1
    huruf = salinVertikal(potVer(i,:), bw);
    hor = horizontal(huruf);
    potHor = potongHorizontal(hor);
    huruf = salinHorizontal(potHor, huruf);
    
    persegi = zeros(175);
    
    for x=1:size(huruf)(1)
      for y=1:size(huruf)(2)
        persegi(x,y) = huruf(x,y);
      endfor
    endfor
    
    hasil = cek(persegi)
    %imshow(huruf)
    result = strjoin({result, hasil}, '');
  endfor
  
  return;
endfunction
