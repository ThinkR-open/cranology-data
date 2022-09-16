
package_number_mran_df <- read.csv(file = "package_number_mran.csv")

today_package_number_mran_df <- cranology::get_package_number_mran(
	# The date is today - 1 to make sure the MRAN snapshot was updated
	dates = Sys.Date() - 1
)

updated_package_number_mran_df <- rbind(
	package_number_mran_df,
	today_package_number_mran_df
)

write.csv(
	x = updated_package_number_mran_df,
	file = "package_number_mran.csv",
	row.names = FALSE
)
