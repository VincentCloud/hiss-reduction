function transformed_cell = cell_wise_spectral_subtraction(s_ns_one_cell, s_n_one_cell)
    if abs(s_ns_one_cell) ^ 2 - abs(s_n_one_cell) < 0
        transformed_cell = 0;
    else
        transformed_cell = (abs(s_ns_one_cell) - abs(s_n_one_cell)^( 1 / 2 )) ./ abs(s_ns_one_cell) * s_ns_one_cell;
    end
end