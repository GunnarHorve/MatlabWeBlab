%  sendResponse - Send response to client   
%   
%  CALL:   
%   sendResponse(event, data, varargin)   
%   
%  INPUT:   
%   event:   
%     nl.modelit.matlabserver.ServerEvent   
%   data:   
%     String or int8 array with data to send   
%   varargin:   
%     parameter value pairs, possible values:   
%      - statuscode (default 200)   
%         HTTP statuscode   
%      - contenttype (default 'text/html')   
%         data MIME type   
%   
%  OUTPUT:   
%   No output   
%   
%    Copyright 2006-2013 Modelit, www.modelit.nl   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
