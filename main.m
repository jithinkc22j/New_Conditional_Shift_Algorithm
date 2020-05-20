% Conditional shift algorithm- Pixel shifting algorithm
%----------------------------------------------------------------------
% Note: If you are using my code for your system or project, you should always cite my paper as a reference. 
% K C.Jithin, SyamSankar, "Colour image encryption algorithm combining Arnold map, DNA sequence operation, and a Mandelbrot set", 
% Journal of Information Security and Applications, Elsevier, Volume 50, February 2020, DOI: https://doi.org/10.1016/j.jisa.2019.102428
%-----------------------------------------------------------------------------------------------------------------------------------
%---------------------------------------------------------
  % Enter your plain image here
   a=imread('image.png');
   figure;imshow(a);title('Original image');
   h=size(a);
   siz=h(1);
   mdset=md(siz);
   
%---------------------------------------------------------
 % Calling conditional  shift algorithm
 for i=1:700
  a=csa(a,mdset,256);
 end
  b=a;
  figure;
  imshow(b);title(' Shifted image ');
  
 %--------------------------------------------------------
 % Calling De-shift algorithm
 
 for i=1:700
  b=dcsa(b,mdset,siz);
 end
 a=b;
  figure;
  imshow(a);title(' De-Shifted image ');
%-----------------------------------------------------------
 