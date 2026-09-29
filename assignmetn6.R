# LIS4370 - Assignment #6: Matrix Operations and Construction
# Author: Adriel

# ---- Task 1: Matrix Addition & Subtraction ----
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B

sum_AB  <- A + B
diff_AB <- A - B

print(sum_AB)
print(diff_AB)

# ---- Task 2: Diagonal Matrix ----
D <- diag(c(4, 1, 2, 3))
print(D)

# ---- Task 3: Custom 5 x 5 Matrix ----
# Bottom 4 rows: a column of 2s bound to a 4x4 diagonal of 3s
# Top row: 3 followed by four 1s
M <- rbind(c(3, 1, 1, 1, 1),
           cbind(2, diag(3, 4)))
print(M)

# Alternative approach: start from a 3-diagonal and overwrite row 1 / column 1
M2 <- diag(3, 5)
M2[1, 2:5] <- 1
M2[2:5, 1] <- 2
identical(M, M2)  # TRUE