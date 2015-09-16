function h = applyColorLineStyleIndependently(h)
%applyColorLineStyleIndependently rotates first with linestyles then colors
%
% SYNOPSIS: h = applyColorLineStyleIndependently(h)
%
% INPUT h
%			input figure handle  
%
% OUTPUT h
%			roteted figure handle  
%

% created with MATLAB ver.: 8.0.0.783 (R2012b)
% on Microsoft Windows 7 Version 6.1 (Build 7601: Service Pack 1)
%
% Author: Hormetjan Yiltiz, 2015-04-02
% UPDATED: 2015-04-02 19:33:40
%
% HISTORY
% yyyy-dd-mm	whoami	log
% 2015-04-02	Hormetjan Yiltiz	Created it.
% 
% 
% Copyright 2015 by Hormetjan Yiltiz <hyiltiz@gmail.com>
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c = num2cell(get(0,'DefaultAxesColorOrder'),2);
l = cellstr(get(0,'DefaultAxesLineStyleOrder'));
set(h, {'Color'}, c(rem((1:numel(h))-1,numel(c))+1), ...
    {'LineStyle'}, l(rem((1:numel(h))-1,numel(l))+1))
end