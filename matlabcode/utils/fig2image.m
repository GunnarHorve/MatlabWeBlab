%  fig2image - convert Matlab figure to java image.   
%   
%  CALL:   
%     [image, bufferedimage] = fig2image(fig)   
%   
%  INPUT:   
%     fig:   
%         optional, handle of figure to convert to a java image   
%         default value: gcf   
%     mode:   
%          Unused argument only present for backward compability   
%   
%  OUTPUT:   
%     image:   
%         <java.awt.Image>   
%     bufferedimage:   
%         <java.awt.image.BufferedImage> (an image with an accessible buffer   
%         with image data)   
%   
%  EXAMPLE   
%      hfig=figure;   
%      plot(1:10);   
%      [img, bimg] = fig2image(hfig);   
%      html = image2html(bimg, 'png');   
%      delete(hfig)   
%      disp(html)   
%   
%    Copyright 2006-2017 Modelit, www.modelit.nl   
%   
%  See also: print, im2java, image2html   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
