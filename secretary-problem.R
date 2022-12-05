# Function to solve the secretary problem
solve_secretary_problem <- function(candidates, threshold) {
  
  # Sort the candidates in ascending order
  candidates <- sort(candidates)
  
  # Initialize variables
  n <- length(candidates)
  best_candidate <- candidates[n]
  best_so_far <- candidates[1]
  
  # Iterate over the candidates
  for (i in 2:n) {
    
    # Update the best candidate and best so far
    if (candidates[i] > best_candidate) {
      best_candidate <- candidates[i]
    }
    if (candidates[i] > best_so_far) {
      best_so_far <- candidates[i]
    }
    
    # Check if the best so far is good enough
    if (best_so_far >= threshold) {
      return(best_so_far)
    }
  }
  
  # Return the best candidate
  return(best_candidate)
}

# Define a list of candidates and a threshold
candidates <- c(10, 12, 15, 18, 22, 25, 28, 31, 33, 36)
threshold <- 30

# Solve the secretary problem and print the result
result <- solve_secretary_problem(candidates, threshold)
print(result)
