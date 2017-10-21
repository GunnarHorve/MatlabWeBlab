%  fig2html - convert figure to html which can be displayed in a webbrowser   
%  or in a jacontrol of type jeditorpane   
%   
%  CALL:   
%   html = fig2html(fig)   
%   
%  INPUT:   
%   fig: optional, handle of figure to convert, default value: gcf   
%   
%  OUTPUT:   
%   html: string with html code: e.g.   
%         <html><body><img   
%         src="data:image/png;base64,iVBORw0K...</img></body></html>   
%   
%  EXAMPLE:   
%  verified with:   
%  Matlab 2013a_64 (20170711)   
%  Matlab 2012a_32 (20170711)   
%  Matlab 2016b_32 (20170711)   
%       fig = figure;   
%       membrane;   
%       title('html with picture');   
%       html = fig2html(fig);   
%       ftemp=[tempname,'.html'];   
%       writestr(ftemp,html);   
%       web(ftemp);   
%       pause   
%       delete(ftemp)   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
