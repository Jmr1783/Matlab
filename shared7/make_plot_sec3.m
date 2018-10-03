function make_plot(x_data,y_data,graph_title,x_label,y_label)
    %make_plot plots xy data with figure number, grid and labels
    global fig_num;
    figure(fig_num);
    fig_num = fig_num + 1;

    plot(x_data,y_data);  
    grid on;  
    xlabel(x_label); 
    ylabel(y_label);  
    title(graph_title);
end