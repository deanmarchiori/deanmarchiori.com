data
{
    int<lower = 0> N;
    vector[N] x_k;
}
parameters
{
    real mu;
    real<lower = 0> sigma;
}
model
{
    // Priors
    mu ~ uniform(0, 100);
    sigma ~ uniform(0, 100);

    // Likelihood  
    x_k ~ cauchy(mu, sigma);
}  
