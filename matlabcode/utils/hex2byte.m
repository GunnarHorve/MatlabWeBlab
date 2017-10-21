% convert pairs   
%   
%  INPUT   
%      hexcode (Nx2 char)   
%          hexa code matrix   
%              byteData is char array with elements in   
%              0123456789ABCDEF.   
%   
%  OUTPUT   
%      u (Nx1 uint8)   
%         Corresponding uint8 value   
%   
%          00==>0   
%          01==>1   
%          ..   
%          10==>16   
%          ..   
%          ..   
%          11==>256   
%   
%  See also: serialize   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
