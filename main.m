% Conditional shift algorithm- Pixel shifting algorithm
%----------------------------------------------------------------------
% Note: If you are using my code for your system or project, you should always cite my paper as a reference. 
web('https://docs.google.com/document/d/1AbCxFoUhdOCppM8novgCdOv0F9mqYe7HlBU7yX7Svx0/edit?usp=sharing')
web('published_work.html')
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
 
