%  serialize - serialize Matlab variable, without writing to disk.   
%   
%  INPUT   
%      S   
%          matlab variable   
%   
%  OUTPUT   
%      str (1xP char)   
%          serialized form of S. Use deserialize_v2 to convert back.   
%   
%  APPROACH   
%   
%  serialize_v2:   
% CONVERSION:          getByteStreamFromArray     zipdata          encodebase64   
% DATATYPE:   Any Matlab datatype ====> uint8 array ====>  int8 array  ====> char array   
%   
%  deserialize_v2:   
% CONVERSION:            getByteStreamFromArray   unzipdata          decodebase64   
% DATATYPE:   Any Matlab datatype <==== uint8 array <====  int8 array  <==== char array   
%   
%  NOTES   
%      serialize_v2 and deserialize_v2 are improved versions of serialize   
%      and deserialize. The following improvements where implemented:   
%      - no reading or writing of tempfiles to disk required   
%      - usage of Base64 encoding instead of hex encoding results in smaller   
%      transfer size   
%   
%  See also:   
%      deserialize_v2   
%   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
