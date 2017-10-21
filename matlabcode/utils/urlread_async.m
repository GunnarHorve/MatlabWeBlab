%  urlread_async - read multiple urls in parallel.   
%   
%  CALL:   
%      S = urlread_async(urls,name1,value1,name2,value2,...)   
%   
%  INPUT:   
%      urls:   
%           Cell array of strings.   
%           Each cell contains an url that will be called   
%   
%      Name-Vlue Pairs:   
%          method:   
%              Defaults to "GET"   
%              Alternative value "POST"   
%          numberofthreads   
%              Number of simultaneous urlread commands allowed.   
%              Defaults to 4   
%          waitbarname   
%              Name passed to progress function for waitbar figure name.   
%          progress   
%              Progress display function. Defaults to @matlabprogress. Use   
%              @modelitprogress (requires Modelit java widgets toolbox) if   
%              nested waitbars are required. To suppress any display of   
%              progress, set progress attribute to empty array. When   
%              specifying a custom progress display function, use   
%              matlabprogress as a template.   
%   
%  OUTPUT:   
%          Cell array of outputs matching to input "urls". If user aborts   
%          download, output for unfinished jobs is left empty.   
%   
%  NOTES:   
%     This utility requires matlabserver.jar in static java classpath   
%   
%  THROWS:   
%     Urlread:downloadCancelled   
%     MATLAB:Java:GenericException   
%   
%  EXAMPLE   
% Fetch some tiles from open streetmap   
%      N=1;   
%      for x=15:18   
%          for y=9:12   
%              urls{N} =sprintf('http://tile.openstreetmap.org/5/%d/%d.png',x,y);   
%              N=N+1;   
%          end   
%      end   
%      S = urlread_async(urls,'method','GET','numberofthreads',4,'waitbarname','Download Open Streetmap Tiles','progress',@matlabprogress);   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
