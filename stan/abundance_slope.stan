// Abundance slope model

data {
  
  // Data on counts
  int N_counts;
  real size_lower[N_counts];
  real size_upper[N_counts];
  int counts[N_counts];
  
}

parameters {
  real<lower = 0> b; //, upper = 1
  real<lower = 0> a;

}

model {
  
  real counts_est[N_counts];

  // Priors
  a ~ lognormal(2, 1);
  b ~ lognormal(0, 1); 
  
  // Model for counts
  for(i in 1:N_counts) {
    counts_est[i] = 
        a/(1-b) * ((size_upper[i]^(1-b)) - (size_lower[i]^(1-b)));
  }
  counts ~ poisson(counts_est);

}
