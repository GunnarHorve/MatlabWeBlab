%  serialize - Serialize Matlab variable, without writing to disk (relies on   
%  undocumented Matlab function)   
%   
%  CALL:   
%   int8stream = serialize_direct(S, ishex)   
%   
%  INPUT:   
%      S:   
%          matlab variable   
%      ishex:   
%          if false (default)   
%              return (1xN) uint8 byte array   
%          if true:   
%              return (1xP) char array with elements in   
%              0123456789ABCDEF. P  = (approx) 2*N   
%   
%  OUTPUT:   
%      byteData (Nx1 int8) or (Px1 char)   
%          serialized form of S. Use deserialize_direct to convert back.   
%   
%  NOTE:   
%      If used with ishex is "false" de serialized string may contain   
%      escape characters that are not accepteble as output of a webservice.   
%      With ishex is "true" the output is less compressed, but does not give   
%      such problems.   
%   
%  See also:   
%      deserialize, deserialize_direct   
%   
%  APPROACH:   
%  Matlab structure ==>[getByteStreamFromArray]==> byte stream (uint8)   
%                      [compress] ==> int8   
%   
% if output requires hex:   
%                    ==>  [int8_2_uint8]==> uint8   
%                    ==>  [dec2hex]==> char   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
