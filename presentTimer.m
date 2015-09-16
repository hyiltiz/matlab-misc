function presentTimer(interval, figure_on)

% input control
if nargin < 1
    interval = 1;
    figure_on = 1;
end

% initialize
last_update = 0;

if figure_on
    h = figure;
    box off;
    axis off;
    h_text = text(0,0,'timer','Visible','off');
    set(h,'Units','normalized','Position',[0 0 1 1]);
    x = 0.025;
    y = 0.5;
else
    disp('timer started...');
end

try
    tic
    while 1
        % only update after  interval time
        t = toc;
        if t > last_update + interval
            
            if figure_on
                delete(h_text);
            end
            
            % update time now
            last_update = t;
            minute = floor(t/60);
            secs = fix(t - 60*minute);
            time_str = [num2str(minute,'%02d') ':' num2str(secs,'%02d')];
            
            % update display now
            if figure_on
                h_text = text(0.5,0.5, time_str,'HorizontalAlignment','center','VerticalAlignment', 'middle','Units', 'normalized', 'FontUnits', 'normalized', 'FontSize', 0.5);
            else
                disp(time_str);
            end
            
        end
        
        % anvoid CPU overload
        pause(0.1);
    end
catch
    close all
end
end