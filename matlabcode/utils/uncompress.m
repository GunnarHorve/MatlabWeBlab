%  uncompress - low level functio to uncompress byte vector   
%   
%  CALL   
%      data_out=uncompress(data_in,szOrg,class_name)   
%   
%  INPUT   
%      data_in(P,1):   
%          int8 vector that contains compressed variable   
%      szOrg:   
%          size of variable after decompressing.   
%      class_name:   
%          Required class of output array (defaults to double)   
%          Any of the following values are allowed:   
%                        double -- Double precision floating point numeric array   
%                                  (this is the traditional MATLAB matrix or array)   
%                        logical-- Logical array   
%                        char   -- Character array   
%                        single -- Single precision floating-point numeric   
%                                  array   
%                        int8   -- 8-bit signed integer array   
%                        uint8  -- 8-bit unsigned integer array   
%                        int16  -- 16-bit signed integer array   
%                        uint16 -- 16-bit unsigned integer array   
%                        int32  -- 32-bit signed integer array   
%                        uint32 -- 32-bit unsigned integer array   
%                        int64  -- 64-bit signed integer array   
%                        uint64 -- 64-bit unsigned integer array   
%   
%  OUTPUT   
%      data_out:   
%          uncompressed array   
%   
%  REMARKS   
%        When an array is compressed the size and class of the   
%        original array can not be inferred form data_out. In order to   
%        succefully inflate the array again. uncompress requires the size   
%        and class of the original array.   
%   
%  EXAMPLE   
%      %create an example array with N elements   
%      a=int16(100*rand(N,2000,100)); %or any ather type   
%      aa = compress(a);   
%      aaa =uncompress(aa,size(a),class(a));   
%   
%  SEE ALSO   
%      compress uncompressJava   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
