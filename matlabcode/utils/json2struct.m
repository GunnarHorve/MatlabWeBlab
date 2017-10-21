%  json2struct - utility aimed at converting JSON string to Matlab array of   
%  name value pairs. Apply nesting if required.   
%   
% Convert JSON string to Matlab struct, support for:   
%      - Name value pairs   
%      - Values containing arrays   
%      - Values containing JSON string   
%      - Strings, Numeric values, true, false, null   
%      - Nested definitions   
%   
% Requirements (see also json.org):   
%     - Name definitions must be strings enclosed by quoutes ("name")   
%     - Name definitions must be valid Matlab fieldnames (nonempty, start   
%       with a-zZ-Z)   
%     - Name and values must be separated by semicolumn ("name":value)   
%     - Name/values pairs must be separated by comma   
%      ("name":value,"name":value)   
%   
%  Additional (non JSON compliant) feature:   
%     - numerics are converted to double or cast to type specified as   
%      (single), (uint32), (int16), (logical) etc.   
%   
%  CALL   
%      nv=json2struct(str)   
%   
%  INPUT   
%      str   
%          JSON string enclosed in {}   
%   
%  OUTPUT   
%      nv(N)   
%          struct array with name value pairs.   
%          nv.name  ==> name (char array)   
%          nv.value ==> corresponding value (char array)   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
