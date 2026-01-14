library(data.table)

all_csv_files <- 
  list("https://raw.githubusercontent.com/thunderbird/github-action-thunderbird-aaq/refs/heads/main/2025/2025-10-24-2025-10-24-thunderbird-answers-for-questions-desktop.csv",
       "https://raw.githubusercontent.com/thunderbird/github-action-thunderbird-aaq/refs/heads/main/2025/2025-10-25-2025-10-25-thunderbird-answers-for-questions-desktop.csv")
list_of_data_tables <- lapply(all_csv_files, fread)

all_csv_files2 <- 
  list("https://raw.githubusercontent.com/thunderbird/github-action-thunderbird-aaq/refs/heads/main/2025/2025-10-24-2025-10-24-thunderbird-answers-for-questions-desktop.csv",
       "https://raw.githubusercontent.com/thunderbird/github-action-thunderbird-aaq/refs/heads/main/2025/2025-10-25-2025-10-25-thunderbird-answers-for-questions-desktop.csv",
       "https://raw.githubusercontent.com/thunderbird/github-action-thunderbird-aaq/refs/heads/main/2025/2025-10-27-2025-10-27-thunderbird-answers-for-questions-desktop.csv"

  )

list_of_data_tables2 <- lapply(all_csv_files2, fread)



# Combine all data tables into a single data table
combined_data <- rbindlist(list_of_data_tables)
combined_data2 <- rbindlist(list_of_data_tables2)

# created is a double which is interpreted as POSIXct
local_time_la <- with_tz(combined_data[1, "created"], tzone = "America/Los_Angeles")

# yyyy-mm-dd, mm, dd, dayofthweek, dayofthemonth, datyoftheyear, iso week number of questions, number of solved questions, number of questions abondoned(not set to solved but there's no reply by OP to last reply, 
# number of answers, number of answers not including answers by op, elapsed time time until first reply,  
# number of answers not by OP in the format: "user1:22;user2:88" "user1:1y2025-01-01-daily-ftr.csv
# same as above but for last 7 days 2024-01-26-2025-01-01-last-7-days-ftr.csv
# same as above but for calendar month 2024-01-01-2024-01-31-calendar-month