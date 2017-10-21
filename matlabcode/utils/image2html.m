%  image2html - convert a bufferedimage to html code   
%   
%  CALL:   
%   html = image2html(bimg, format)   
%   
%  INPUT:   
%   bimg: java.awt.image.BufferedImage (an image with a buffer)   
%   format: string, possible values: jpg, png, bmp...   
%   
%  OUTPUT:   
%   html: string, e.g.   
%        <img src="data:image/%s;base64, iVBORw0KGgoAAA...... '></img>   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also: fig2image, im2java   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
