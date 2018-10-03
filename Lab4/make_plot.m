function make_plot(x_data,y_data,graph_title,x_label,y_label)
  %make_plot plots xy data with figure number, grid and labels
  persistent figure_number
  if (isempty(figure_number)) %It does not already exist
    figure_number = 1;
  else
      figure_number = figure_number + 1;
  end
  figure(figure_number);
  plot(x_data,y_data);
  grid on;
  xlabel(x_label); ylabel(y_label);
  title(graph_title);
end
