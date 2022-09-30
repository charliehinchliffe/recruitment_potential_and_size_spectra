// simple size growth in weight model

data {
  
  // Data on counts
  int N_counts;
  real size_lower[N_counts];
  real size_upper[N_counts];
  int counts[N_counts];
  
  // Data on growth
  
  int<lower=0> N_growth;
  vector[N_growth] age;
  vector[N_growth] size_ind;
}

parameters {
  real<lower = 0, upper = 2> Z; //l<lower = 0, upper = 2>
  real<lower = 0, upper = 3000> R;
  real<lower = 0, upper = 2> g; //<lower = 0, upper = 2>
  real<lower=0> sigma_size;
  real<lower = 0> W0; //, upper = 10

}

model {
  
  real counts_est[N_counts];
  real size_est[N_growth];

  // Priors
  Z ~ lognormal(1.5, 3); //whats correct?
  g ~ lognormal(0.1, 3); 

  R ~ lognormal(2, 1);
  
  sigma_size ~ cauchy(0, 2.5);
  
  W0 ~ lognormal(0, 1);
  
  // Model for counts
  for(i in 1:N_counts) {
    counts_est[i] = 
        - R/Z * W0^(Z/g) * ((size_upper[i]^(- (Z/g))) - (size_lower[i]^((- Z/g))));
  }
  counts ~ poisson(counts_est);

  // Model for growth rate
  for(i in 1:N_growth) {
  size_est[i] = W0 * exp(age[i]*g);

  }
  // model for how y varies
  size_ind ~ normal(size_est, sigma_size);
  
}
