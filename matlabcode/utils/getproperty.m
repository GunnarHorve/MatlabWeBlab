%  getproperty - Return matching char string from cell array of keywords   
%   
%  CALL:   
%   prop = getproperty(property, validprops, VERBOSE)   
%   
%  INPUT:   
%     property:   
%          String with property. This string contains the first letters of   
%          the keyword searched for. The matching is Case-Insensitive.   
%     validprops:   
%          Cell array with valid property values   
%      VERBOSE:   
%          Defaults to true.   
%          If true: display list with suggested options before throwing an   
%          error   
%   
%  OUTPUT:   
%     prop:   
%          String with property that matches validprops. An error will be   
%          thrown in input argument "property" does not match any element of   
%          "validprops"   
%   
%  EXAMPLE:   
%   getproperty('my',{'MySpecialProperty'}) returns 'MySpecialProperty'   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also: rmproperty, varargin2struct   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
