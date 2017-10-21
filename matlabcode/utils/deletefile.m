% Delete file using java method   
%   
%  INPUT   
%      filename   
%          name of file to delete   
%  OUTPUT   
%      rc   
%          returncode.   
%          true: file has been deleted   
%          false: file could not be deleted   
%   
%  Implemented after the following report of Yair Altman:   
%   
%  Memory leak   
%   
%  The memory leak in delete was (to the best of my knowledge) originally   
%  reported in the CSSM newsgroup a few weeks ago. The reported mentioned   
%  that after deleting 760K files using delete, he got a Java Heap Space   
%  out-of-memory error. The reported solution was to use the Java   
%  equivalent, java.io.File(filename).delete(), which does not leak   
%  anything.   
%   
%  I was able to recreate the report on my WinXP R2012a system, and   
%  discovered what appears to be a memory leak of ~150 bytes per file. This   
%  appears to be a very small number, but multiply by 760K (=111MB) and you   
%  can understand the problem. Of course, you can always increase the size   
%  of the Java heap used by Matlab (here’s how), but this should only be   
%  used as a last resort and certainly not when the solution is so simple.   
%  %   
%  For those interested, here’s the short test harness that I’ve used to   
%  test the memory leak:   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
