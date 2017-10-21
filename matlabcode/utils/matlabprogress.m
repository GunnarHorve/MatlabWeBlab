%  INPUT   
%      wb   
%          Waitbar data structure   
%          +----handle: waitbar figure handle   
%          |    This hanle is returned from previous call to   
%          |    progress display function.   
%          |    handle=0 => create waitbar   
%          +----name: waitbar figure name   
%          |    This value is used when a new waitbar figure is initialized.   
%          +----tag: waitbar tag   
%          |    A waitbar figure may contain multiple waitbars. Each waitbar   
%          |    has its own unique tag.   
%          +----text: example waitbar progress text   
%      p   
%          Proportion ready, -1 when download complete   
%      k   
%          Number of jobs done   
%      N   
%          Total number of jobs   
%  OUTPUT   
%      hwait:   
%          Handle of waitbar figure   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
