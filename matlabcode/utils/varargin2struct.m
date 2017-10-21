%  varargin2struct - Convert parameter-value combinations to structure   
%   
%  CALL:   
%   defaultOptions = varargin2struct(defaultOptions,ValidProps,...   
%                      PROPERTY1,VALUE1,PROPERTY2,VALUE2,...)   
%   defaultOptions = varargin2struct(defaultOptions,ValidProps,...   
%                      PROPERTY1,VALUE1,OPTSTRUCT,...)   
%   
%  INPUT:   
%      defaultOptions:   
%          Struct with default values   
%      ValidProps:   
%          Allowable fields (cell array)   
%      PROPERTY,VALUE:   
%          Property-Value pairs, and/or   
%      OPTSTRUCT:      Option structure that stores property value pairs   
%      +----PROPERTY1=VALUE1   
%      +----PROPERTY2=VALUE2   
%   
%  OUTPUT:   
%  	  Options:   
%          structure identical to defaultOptions, but appriate fields over   
%          overwritten with property value pairs.   
%   
%  EXAMPLE:   
%   function do_some(varargin)   
%   defaultOptions=struct('a',1,'b',2);   
%   Options=varargin2struct(defaultOptions,fieldnames(defaultOptions),varargin{:});   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also: getproperty   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
