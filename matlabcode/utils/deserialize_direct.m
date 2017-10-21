%  %reverse serialize_direct   
%   
%  INPUT   
%      byteData (Nx1 uint8 or char)   
%          serialized form of matlab variable. See serialize.   
%      ishex   
%          if false (default)   
%              byteData is uint8 byte array   
%          if true:   
%              byteData is char array with elements in   
%              0123456789ABCDEF.   
%   
%  OUTPUT   
%      S   
%          deserialized matlab variable   
%   
%  See also: serialize_direct   
%   
%  APPROACH   
%  serialize_direct:   
%  Matlab structure ==>[getByteStreamFromArray]==> byte stream (uint8)   
%                      [compress] ==> int8   
%   
% if output requires hex:   
%                    ==>  [int8_2_uint8]==> uint8   
%                    ==>  [dec2hex]==> char   
%   
%  deserialize_direct:   
%   
% if input is hex:   
%                    char ==>  [hex2dec]==> uint8   
%                    ==>  [uint8_2_int8]==> int8   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
