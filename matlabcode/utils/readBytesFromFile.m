%  readBytesFromFile - read content of file as byte array   
%   
%  CALL:   
%      PDFCallback(obj, event)   
%   
%  INPUT:   
%      fname:   
%          name of an existing file (error will occur if file does   
%          not exist)   
%   
%  OUTPUT:   
%      int8array   
%          int8 Nx1 array containing the bytes of the file   
%   
%  EXAMPLE   
%      if ~exist(fname,'file')   
%          error('File %s does not exist',fname)   
%      end   
%      int8array=readBytesFromFile(fname)   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also:   
%      writeBytesToFile   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
