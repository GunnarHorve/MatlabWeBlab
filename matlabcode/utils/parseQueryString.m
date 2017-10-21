%  parseQueryString - convert GET string to equivalent struct array of   
%  name-value pairs   
%   
%  NOTE: use parseQueryVarargin to return varargin style output   
%   
%  CALL:   
%      nv = parseQueryString(str)   
%   
%  INPUT:   
%      str:   
%          string with URL GET command   
%          Example: ?from=utrecht&to=amsterdam&time=200908130900&depart=0   
%   
%  OUTPUT:   
%      nv:   
%          struct array with name/value pairs, organized as follows:   
%          +----name   
%          +----value   
%          Example:   
%              nv(1)   
%              +----'from'   
%              +----'utrecht'   
%              nv(2)   
%              +---- ..   
%              +---- ..   
%   
%  NOTE:   
%      This utility is maintained as part of the modelit xml toolbox for   
%      Matlab, and included in the Modelit Webserver Toolbox for Matlab.   
%   
%  USE:   
%      This utility does not actually perform any xml operations, but is   
%      useful for parsing HTTP GET requests. This is useful if te modelit   
%      xml toolbox is used in conjunction with the Modelit webserver toolbox.   
%   
%  See also: json2struct, namevalue2varargin   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
