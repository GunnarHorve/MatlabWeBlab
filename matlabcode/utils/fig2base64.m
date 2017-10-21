%  fig2base64 - Convert figure to base64, to be used in html img element   
%   
%  CALL:   
%   base64 = fig2base64(HWIN, format)   
%   
%  INPUT:   
%   HWIN:   
%    handle of figure to convert to a base64 array   
%   format:   
%    string (optional) with image format, default value: png   
%   
%  OUTPUT:   
%   base64:   
%    Base64 coded image (for HTML)   
%   data:   
%    bytearray, use this with correcto mime-type (e.g. image/png) to directly display an   
%    image in the browser   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
