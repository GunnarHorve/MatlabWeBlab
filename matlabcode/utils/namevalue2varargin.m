%  namevalue2varargin - Convert array of name value pairs to varargin cell   
%  array   
%   
%  INPUT   
%      nv(N)   
%      +----name   
%      +----value   
%   
%  OUTPUT   
%      args{ 1x 2N}   
%      content of nv rearranged as:   
%      {nv(1).name, nv(1).value, nv(2).name, nv(2).value, ..}   
%   
%  EXAMPLE   
%      nv=json2struct( .... ) (specify json input string here)   
%      args=namevalue2varargin(nv);   
%      defopt= ... (specify defaults here)   
%      inputopt=varargin2struct(defopt,fieldnames(defopt),args{:})   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also: json2struct, parseQueryString   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
