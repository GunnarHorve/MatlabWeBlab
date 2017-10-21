%  serialize - serialize Matlab variable   
%   
%  INPUT   
%      S   
%          matlab variable   
%      ishex   
%          if false (default)   
%              return (1xN) uint8 byte array   
%          if true:   
%              return (1xP) char array with elements in   
%              0123456789ABCDEF. P  = (approx) 2*N   
%   
%  OUTPUT   
%      byteData (Nx1 uint8) or (Px1 char)   
%          serialized form of S. Use deserialize to convert back.   
%   
%  NOTE   
%      If used with ishex is "false" de serialized string may contain   
%      escape characters that are not acceptable as output of a webservice.   
%      With ishex is "true" the output is less compressed, but does not give   
%      such problems.   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also:   
%      deserialize   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
