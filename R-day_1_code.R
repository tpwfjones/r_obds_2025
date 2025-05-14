# Assign a matrix that contains the integers 1 to 9 in three rows and three columns (filled by column) to an object named m1.
# Extract the number 8 using indexing by row and column.
# Assign a matrix that contains the integers 1 to 12 in three rows and four columns (filled by row) to an object named m2.
# Add column and row names to the matrix m2 (you choose the names).
m1 <- matrix(data=1:9, nrow=3, ncol=3, byrow=FALSE)
m1
m1[2,3]
m2 <- matrix(data=1:12, nrow=3, ncol=4, byrow=TRUE)
rownames(m2) <- c("row1","row2","row3")
colnames(m2) <- c("col1","col2","col3","col4")

# Assign an array that contains the integers 1 to 24 along dimensions of lengths 4, 2 and 3 to an object named a.
# Extract the number 15 using indexing by the three dimensions.
# Extract the matrix in the last dimension of the array and assign to a new object named last_matrix.
ar1 <- array(data = 1:24, dim =c(4,2,3))
ar1
ar1[3,2,2]
last_matrix <- ar1[,,3]
class(m1)
class(ar1)
ar1 <- array(data = 1:8, dim =c(4,2))

# Assign a list of five items of diﬀerent data types to a list named l.
# Extract the elements at position 3 and 5 of l as a single new list.
l <- list(1:12, "house, tree", c(15,27.1), c(TRUE,FALSE,FALSE), c(27L, 627L,52765L))
l[c(3, 5)]
View(m1)

"/project/shared/r/1_r_data_science/1-base/coding_gene_region.bed"

gene_data <- read.delim("/project/shared/r/1_r_data_science/1-base/coding_gene_region.bed", header = TRUE, sep = "\t")
dim(gene_data)
colnames(gene_data) <- c("chr", "start", "end", "name", "score", "strand")
colnames(gene_data)
gene_data[30,3]
start_position <- gene_data$start
gene_data$length <- (gene_data$end - gene_data$start)

filtered_gene_data <- gene_data[gene_data$length >100000 & gene_data$length <200000, ]
filtered_gene_data                        
write.table(filtered_gene_data, 
            file = "filtered_gene_regions.tsv"
            , sep = "\t")


#movie bonus session
movie <- c("Whatever Works", "It Follows", "Love and Mercy", "The Goonies", "Jiro Dreams of Sushi", "There Will be Blood", "Moon", "Spice World", "Serenity", "Finding Vivian Maier")
year <- c("2009", "2015", "2015", "1985", "2012", "2007", "2009", "1988", "2005", "2014")
  boxoffice <- c(35, 15, 15, 62, 3, 10, 321, 79, 39, 1.5)
  genre <- c("Comedy","Horror","Drama","Adventure","Drama","SciFi","Comedy", "Documentary","SciFi","Documentary")
  movie[10]
  genre [1:4]
movie[8] <- "The Naked Gun"
films <- data.frame(
  Movie = movie,
  Year = year,
  box_office = boxoffice,
  Genre = genre
)

subset(films, Year<1990)
(subset(films, Genre=="Comedy")
sum(subset(films, Genre=="Comedy")$box_office)
films[films$box_office == "Comedy", ]
