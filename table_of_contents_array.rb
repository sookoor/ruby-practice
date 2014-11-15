lineWidth = 60

table_of_contents = ["Table of Contents".center(lineWidth), " ", "Chapter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2), "Chapter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2), "Chapter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)]

table_of_contents.each do |line|
    puts line
end
