########### FOR LOOP
names <- c("biggy", "fluffy", "miffy", "yo-yo")
for (name in names) {
  print(name)
}

for (name in length(names)) {
  print(seq(from=1, to=4, by=1))
}

########### IF STATEMENT
if (length(names) < 5) {
  print('there are not enough names in this list!!')
} else {
  print('there are plenty of names in this list :)')
}
