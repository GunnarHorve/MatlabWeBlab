function XMLCallback(obj, event)
% XMLCallback - Callback called by a MatlabServer object for generating an
% XML response
% 
% CALL:
%     XMLCallback(obj, event)
% 
% INPUT:
%     obj: 
%         handle to the MatlabServer object which triggered the callback
%     event: 
%         ServerEvent with query and response information
% 
% OUTPUT:
%     No output
%
%   Copyright 2006-2013 Modelit, www.modelit.nl

% It's good practice to always surround the callback with try catch
% and always return an answer to the client
try 
    % Collect some request information
    S = event2struct(event);
    
    % Generate the response
    response = XML(S);
    
    % Return response to the client
    sendResponse(event, response,...
        'contenttype', 'text/xml')  % The MIME type 
     
catch me
        sendResponse(event, errorMessage(me.message),...
        'statuscode', 500,...        % Statuscode 200: OK
        'contenttype', 'text/xml')  % The MIME type 
end

%__________________________________________________________________________
function text = XML(S)
% XML - Make a simple XML
%
% CALL:
%  text = XML(S)

 % Make a simple XML
  text = sprintf('<?xml version="1.0" ?><response><time>%s</time><method>%s</method><from>%s</from></response>',...
      datestr(now),S.RequestMethod,S.RemoteAddr);    

%__________________________________________________________________________
function text = errorMessage(msg)
% errorMessage - Make an HTML error message
% 
% CALL:
%  text = errorMessage(msg)

 text = sprintf('<?xml version="1.0" ?><response><error>%s</error></response>',msg);
