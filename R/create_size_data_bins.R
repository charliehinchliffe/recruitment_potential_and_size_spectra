#' create_size_data_bins
#'
#' This function is used to creat bins requires for all sizes dataframe for the size distrbution models 
#'
#' @param data a dataframe containg a size_sampled of all fish in a population
#' @param bin_width_size the bin width you want to use for size, usually the smallest resolution of measurement eg 0.1 mm
#'
#' @return a dataframe age_bin and size_bin bariables added
create_size_data_bins <- function(data,
                        bin_width_size = 0.1) {

round_by_bin <- function(x, bin_width) {  
  round(x/bin_width, 0)*bin_width
}

data_binned <- data %>%  
  mutate(
    size_bin = round_by_bin(size_sampled, bin_width_size)
  )

data_binned

}