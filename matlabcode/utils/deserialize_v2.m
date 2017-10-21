%  deserialize_v2 - deserialize Matlab variable, without writing to disk.   
%   
%  INPUT   
%      str (1xP char)   
%          serialized form of S. Encode with serialize_v2.   
%   
%  OUTPUT   
%      S   
%          matlab variable   
%   
%  APPROACH   
%   
%  serialize_v2:   
%     CONVERSION:          getByteStreamFromArray     zipdata          encodebase64   
%     DATATYPE:   Any Matlab datatype ====> uint8 array ====>  int8 array  ====> char array   
%   
%  deserialize_v2:   
%     CONVERSION:            getByteStreamFromArray   unzipdata          decodebase64   
%     DATATYPE:   Any Matlab datatype <==== uint8 array <====  int8 array  <==== char array   
%   
%  NOTES   
%      serialize_v2 and deserialize_v2 are improved versions of serialize   
%      and deserialize. The following improvements where implemented:   
%      - no reading or writing of tempfiles required   
%      - lower CPU tim erequired   
%      - usage of Base64 encoding instead of hex encoding results in smaller   
%      transfer size   
%   
%  BENCHARK   
%     Setup: a randon vector of N doubles was serializedan deserialized. CPU   
%     time and serialized size were compared between new an dold method.   
%   
%      Benchmark result table (NEW=serialize_v2, OLD=serialize):   
%                  CPUNEW CPUOLD SIZENEW  SIZEOLD   
%          SIZE    [sec]  [sec]  [bytes]  [bytes]   
%               10 0.0012 0.0173      184      516   
%              100 0.0007 0.0116     1160     1984   
%             1000 0.0016 0.0153    10160    15486   
%            10000 0.0124 0.0598   100688   151706   
%           100000 0.0903 0.4767  1006020  1513756   
%          1000000 1.1486 4.6368 10058932 15132634   
%   
%       Further notes:   
%       - in the new method, about 50% of the CPU time is used by a   
%       "lowtech" module BASE64.encode/decode.   
%       - in the old method about 90% of the CPU time is used by an aeven   
%       more lowtech module dec2hex. This indicates much room for   
%       improvement.   
%       - This also indicates that the Matlab save method (including   
%       compression) is faster than in memory compression, which is   
%       supprising.   
%   
%  BENCHMARK SCRIPT:   
%  if nargin==0   
%      N=6;   
%      for k=1:N   
%          n(k)=10^k;   
%          input=rand(1,n(k));   
%          tic;   
%          byteData=serialize_v2(input);   
%          copy=deserialize_v2(byteData);   
%          t1(k)=toc;   
%          l1(k)=length(byteData);   
%          assert(all(input==copy),'desrialize(serialize(data))~=data')   
%   
%          tic;   
%          byteData=serialize(input,false);   
%          copy=deserialize(byteData,false);   
%          t2(k)=toc;   
%          l2(k)=length(byteData);   
%          assert(all(input==copy),'desrialize(serialize(data))~=data')   
%   
%      end   
%      figure('name','cpu');   
%      plot(t1);   
%      line(1:N,t2,'col','r')   
%      legend('stateless','disk method');   
%   
%      figure('name','bytes transferred');   
%      plot(l1);   
%      line(1:N,l2,'col','r')   
%      legend('stateless','disk method');   
%   
%      disp([n(:),t1(:),t2(:),l1(:),l2(:)]);   
%      return   
%  end   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also:   
%      serialize_v2   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
