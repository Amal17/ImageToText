function result = cek (huruf)
  a = imread('/home/alfa/baca/huruf/a.png');  f = imread('/home/alfa/baca/huruf/f.png');
  b = imread('/home/alfa/baca/huruf/b.png');  g = imread('/home/alfa/baca/huruf/g.png');
  c = imread('/home/alfa/baca/huruf/c.png');  h = imread('/home/alfa/baca/huruf/h.png');
  d = imread('/home/alfa/baca/huruf/d.png');  i = imread('/home/alfa/baca/huruf/i.png');
  e = imread('/home/alfa/baca/huruf/e.png');  j = imread('/home/alfa/baca/huruf/j.png');
  
  k = imread('/home/alfa/baca/huruf/k.png');  p = imread('/home/alfa/baca/huruf/p.png');
  l = imread('/home/alfa/baca/huruf/l.png');  q = imread('/home/alfa/baca/huruf/q.png');
  m = imread('/home/alfa/baca/huruf/m.png');  r = imread('/home/alfa/baca/huruf/r.png');
  n = imread('/home/alfa/baca/huruf/n.png');  s = imread('/home/alfa/baca/huruf/s.png');
  o = imread('/home/alfa/baca/huruf/o.png');  t = imread('/home/alfa/baca/huruf/t.png');
  
  u = imread('/home/alfa/baca/huruf/u.png');  x = imread('/home/alfa/baca/huruf/x.png');
  v = imread('/home/alfa/baca/huruf/v.png');  y = imread('/home/alfa/baca/huruf/y.png');
  w = imread('/home/alfa/baca/huruf/w.png');  z = imread('/home/alfa/baca/huruf/z.png');
  
  kecocokan(1) = cocok(huruf, a); kecocokan(6) = cocok(huruf, f); kecocokan(11) = cocok(huruf, k);
  kecocokan(2) = cocok(huruf, b); kecocokan(7) = cocok(huruf, g); kecocokan(12) = cocok(huruf, l);
  kecocokan(3) = cocok(huruf, c); kecocokan(8) = cocok(huruf, h); kecocokan(13) = cocok(huruf, m);
  kecocokan(4) = cocok(huruf, d); kecocokan(9) = cocok(huruf, i); kecocokan(14) = cocok(huruf, n);
  kecocokan(5) = cocok(huruf, e); kecocokan(10) = cocok(huruf, j);  kecocokan(15) = cocok(huruf, o);
  
  kecocokan(16) = cocok(huruf, p); kecocokan(20) = cocok(huruf, t); kecocokan(24) = cocok(huruf, x);
  kecocokan(17) = cocok(huruf, q); kecocokan(21) = cocok(huruf, u); kecocokan(25) = cocok(huruf, y);
  kecocokan(18) = cocok(huruf, r); kecocokan(22) = cocok(huruf, v); kecocokan(26) = cocok(huruf, z);
  kecocokan(19) = cocok(huruf, s); kecocokan(23) = cocok(huruf, w);
  
  min = 30625;
  for i=1:26
    if (kecocokan(i) < min)
      min = kecocokan(i);
    endif
  endfor
  
  for i=1:26
    if (kecocokan(i) == min)
      indexHuruf = i;
    endif
  endfor
  
  Huruf = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  
  result = Huruf(indexHuruf);
  return;
  
endfunction
