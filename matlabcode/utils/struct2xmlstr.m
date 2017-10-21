% struct2xmlstr - Fast and simple way to create xml strings from Matlab   
%                 structure. Equivalent to xml2str(xml(S)), but faster. No   
%                 inclusion of JAR in javaclasspath required.   
%   
%  CALL   
%      str=struct2xmlstr(S)   
%      str=struct2xmlstr(S,rootname)   
%      str=struct2xmlstr(S,rootname,FLOATFORMAT)   
%      str=struct2xmlstr(S,'',FLOATFORMAT)   
%   
%  INPUT   
%      S   
%          Matlab structure.   
%      rootname   
%          parameter tag to be included as root   
%      FLOATFORMAT   
%          formatstring to be used by sprintf to convert non-integer numeric   
%          parameters to character array. Default value: '%f'. Examples of   
%          other values: '%.10g';'%.8f'. Any digits beyond specified   
%          precision will be lost.   
%      CELLOUTPUT   
%          if true, output to cell array. This allows multiline  output   
%          defaults to false   
%   
%  OUTPUT   
%      str (1xN char array)   
%          Matlab char array that contains xml representation of S   
%   
%  NOTES   
%      This utility is maintained as part of the Modelit XML toolbox for   
%      Matlab. The function is made available to users of the Modelit   
%      Webserver toolbox as well.   
%      The function is useful for conversion of simple Matlab structures   
%      to XML strings. It's main advantage is that is does not depend on   
%      external JAR libraries. This simplifies the installation of   
%      applications that depend on it.   
%      However it supports only a limited number of properties. If   
%      additional features are needed, usage of the Modelit XML toolbox for   
%      Matlab is recommended.   
%   
%  EXAMPLES   
%      struct2xmlstr(S)   
%      struct2xmlstr(S,'','%.10g')   
%      struct2xmlstr(S,'','%.8f')   
%   
%    Copyright 2006-2015 Modelit, www.modelit.nl   
%   
%  See also: Modelit XML toolbox for Matlab   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
