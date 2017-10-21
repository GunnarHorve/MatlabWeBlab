%  startMatlabServer - Start a server that listens to the specified port and   
%  triggers the specified callback when a request is made   
%   
%  CALL:   
%      server = startMatlabServer(port, callback)   
%   
%  INPUT   
%      port:   
%          A port number to which the server is listening. This arguments   
%          must correspond to one of the ports specified with the "port"   
%          property in the web.xml script.   
%     callback:   
%        (Optional) A Matlab function which should be called when a request   
%        is made   
%   
%  OUTPUT:   
%      server:   
%          The MatlabServer object that has been created   
%   
%    Copyright 2006-2013 Modelit, www.modelit.nl   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
