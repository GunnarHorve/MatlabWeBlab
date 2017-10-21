function HTMLCallback(obj, event)
% HTMLCallback - Callback called by a MatlabServer object for generating a
% HTML response
% 
% CALL:
%     HTMLCallback(obj, event)
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
    response = HTML(S);
    
    % Return response to the client
    sendResponse(event, response,...
        'contenttype', 'text/html')  % The MIME type 
        
catch me
    sendResponse(event, errorMessage(me.message),...
        'statuscode', 500,...        % Statuscode 200: OK
        'contenttype', 'text/html')  % The MIME type 
end

%__________________________________________________________________________
function text = HTML(S)
% HTML - Make a simple HTML string
% 
% CALL:
%  text = HTML(S)

text = {'<html><center>'
    sprintf('<h1>%s</h1>',datestr(now))
    sprintf('<h2>HTTP: %s</h2>',S.RequestMethod)
    sprintf('<h2>Query (without urldecode): %s</h2>',S.RequestQueryString)
    sprintf('<h2>Query (with urldecode): %s</h2>',urldecode_utf(S.RequestQueryString))
    sprintf('<h2>From: %s</h2>',S.RemoteAddr)
    '</center></html>'};

text = [text{:}];

%__________________________________________________________________________
function text = errorMessage(msg)
% errorMessage - Make an HTML error message
% 
% CALL:
%  text = errorMessage(msg)

text = {'<html><center>'
    sprintf('<h1 >%s</h1>',datestr(now))
    sprintf('<h2 style="color:red">%s</h2>',msg)
    '</center></html>'};

text = [text{:}];

