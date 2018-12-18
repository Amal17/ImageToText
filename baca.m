function baca (img)

  kapital = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
           
  lokasi = '/home/alfa/baca/huruf/';
  
  gray = rgbgray(img);
  
  bw = graybw(gray);
  
  ver = vertikal(bw);
  
  potVer = potongVertikal(ver);
  
  for i=2:27
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
    
    namaFile = strjoin({lokasi, kapital(i-1), '.png'}, '');
    imwrite(persegi, namaFile);
  endfor

endfunction