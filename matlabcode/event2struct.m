%  event2struct - Convert a ServerEvent to a Matlab structure   
%   
%  CALL:   
%   S = event2struct(event)   
%   
%  INPUT:   
%   event:   
%     nl.modelit.matlabserver.ServerEvent   
%   
%  OUTPUT:   
%   S:   
%     struct with fields   
%      - RequestMethod:      String   
%      - RequestQueryString: String   
%      - RemoteAddr:         String   
%      - RequestBody:        String   
%      - RequestContentType: String   
%   
%    Copyright 2006-2013 Modelit, www.modelit.nl   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
