%  compress - compress array "data_in" to byte vector   
%   
%  CALL:   
%     data_out = compress(data_in,level)   
%     level:   
%          <integer> (optional) compression level (1-9)   
%                  1 -> best speed   
%                  9 -> best compression   
%   
%  INPUT   
%      data_in(M,N):   
%          input array with numeric, charater or logical data   
%          (cell arrays, structure arrays etc not allowed)   
%   
%  OUTPUT   
%     data_out(P,1):   
%          int8 vector that contains compressed variable   
%   
%   
%  NOTES (1)   
%   When an array is compressed the size and class of the   
%   original array can not be inferred from data_out. In order to   
%   succesfully inflate the array again. uncompress requires the size   
%   and class of the original array.   
%   
%        On march 30 compress, byte_mex, and uncompress are tested for   
%        memory leaks. No leaks were found.   
%   
%  NOTES (2)   
%      -1-   
%      There is a C and Java implementation for compression.   
%      -2-   
%      Un uncompression utility for Java is not currently available (20100929)   
%      -3-   
%      Compression using Java typically is twice as fast and therfore is the   
%      preferred method   
%      -4-   
%      Uncompression typically is ten three times as fast as compression and is   
%      currently carried out in C   
%      -5-   
%      Benchmarks using bench2 (with compress.m modified):   
%      Class=uint8  compress-C: 0.0855 compress-J: 0.0420 uncompress-C: 0.0044   
%      Class=uint16 compress-C: 0.1697 compress-J: 0.0854 uncompress-C: 0.0078   
%      Class=uint32 compress-C: 0.3399 compress-J: 0.1768 uncompress-C: 0.0166   
%      Class=single compress-C: 0.4784 compress-J: 0.2303 uncompress-C: 0.0736   
%      Class=double compress-C: 0.8920 compress-J: 0.5581 uncompress-C: 0.1484   
%      After modification compress.m was changed back   
%      -6-   
%      Compression is not fully supported for logicals: they are converted   
%      to and from uint8   
%      -7-   
%      To do: fix uncompressJava and rerun benchmark   
%   
%  EXAMPLE:   
%   %create an example array with N elements   
%   a=int16(100*rand(N,2000,100)); %or any ather type   
%   aa = compress(a);   
%   aaa =uncompress(aa,size(a),class(a));   
%   
%  SEE ALSO:   
%   uncompress   
%   java.util.zip.Deflater/Inflater   
%   
   
   
% © Modelit 2006-2017   
% Matlab release: 2013a   
% Date: 2017/09/06 10:37:33   
