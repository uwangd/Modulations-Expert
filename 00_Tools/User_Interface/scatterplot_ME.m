% This function plots signal scatter for I/Q data
%
% Copyright (C) 2020 Mehdi Teimouri <mehditeimouri [at] ut.ac.ir>
%
% This file is a part of Modulations-Expert software, a software package for
% feature extraction from modulated signals and classification among various modulations.
%
% Modulations-Expert software is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
%
% Modulations-Expert software is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License along with this program.
% If not, see <http://www.gnu.org/licenses/>.
%
% Revisions:
% 2020-Dec-10   function was created

function scatterplot_ME(x)

%% Scatter
plot(x,'.');

%% Axes Setting
XMAX = max(abs(real(x)));
YMAX = max(abs(imag(x)));
XYMAX = max(XMAX,YMAX);
xlim(1.1*XYMAX*[-1 1])
ylim(1.1*XYMAX*[-1 1])
axis equal