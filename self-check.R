# assignmentを読み込む
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
rm(list = ls())
source("HW1.R")

score <- 0

# (1)
if (exists("X") && isTRUE(all.equal(X, log(10)))) {
  score <- score + 1
  cat("Q1 正解\n")
} else {
  cat("Q1 不正解\n")
}

# (2)
if (exists("cio") && isTRUE(all.equal(cio, 888^35)) && typeof(cio) == "double") {
  score <- score + 1
  cat("Q2 正解\n")
} else {
  cat("Q2 不正解\n")
}

# (3)
if (exists("x") && isTRUE(all.equal(x, c(1,2,3,4,5)))) {
  score <- score + 1
  cat("Q3 正解\n")
} else {
  cat("Q3 不正解\n")
}

# (4)
if (exists("name") && isTRUE(all.equal(name, c("A", "B", "C")))) {
  score <- score + 1
  cat("Q4 正解\n")
} else {
  cat("Q4 不正解\n")
}

# (5)
if (exists("d") && is.character(d)) {
  score <- score + 1
  cat("Q5 正解\n")
} else {
  cat("Q5 不正解\n")
}

# (6)
if (exists("o") && exists("x") && length(x) >= 3 && isTRUE(all.equal(o, x[3]))) {
  score <- score + 1
  cat("Q6 正解\n")
} else {
  cat("Q6 不正解\n")
}

# (7)
if (exists("y") && exists("x") && isTRUE(all.equal(y, x*2))) {
  score <- score + 1
  cat("Q7 正解\n")
} else {
  cat("Q7 不正解\n")
}

# (8)
if (exists("z") && exists("x") && isTRUE(all.equal(z, x[x > 3]))) {
  score <- score + 1
  cat("Q8 正解\n")
} else {
  cat("Q8 不正解\n")
}

# (9)
if (exists("A") && is.matrix(A) && nrow(A) == 2) {
  score <- score + 1
  cat("Q9 正解\n")
} else {
  cat("Q9 不正解\n")
}

# (10)
if (exists("f") && is.function(f) && isTRUE(all.equal(f(5), 25))) {
  score <- score + 1
  cat("Q10 正解\n")
} else {
  cat("Q10 不正解\n")
}

# 成績
cat("Score:", score, "/10\n")

