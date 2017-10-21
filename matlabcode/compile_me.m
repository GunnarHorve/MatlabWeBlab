% add matlab code to path
addpath(fullfile(pwd,'utils'));
addpath(fullfile(pwd,'callbacks'));

% responds to URL's /hi && /HelloWorlds
basic_server=createMatlabServer(4444)
set(basic_server,'serverinvokedcallback',@HTMLCallback)
basic_server.startServer()

%magic stuff for compiling
%mcc -m -C -d exe_webserver compile_me.m -a ./callbacks -a ./utils
% global N      %total number of calls
% global E      %total number of errors
% global TCALL  %instant of last call
% 
% N=0;
% E=0;
% TCALL=now;
% 
% while 1
%     disp(sprintf('%s:  #calls: %d   #errors: %d   Last call: %s',...
%         datestr(now),N,E,datestr(TCALL)));
%     pause(900) %wait 15 minutes
% end