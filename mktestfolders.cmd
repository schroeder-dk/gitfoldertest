@setlocal
@echo off
@echo make folders with readme files in several layes for testing

for /L %%I in (1,1,2) do (
	mkdir folder_%%I
	echo # file in folder %%I>folder_%%I\readme.md
	echo ## changes:>>folder_%%I\readme.md
	echo we created the folder>>folder_%%I\readme.md

	for /L %%J in (1,1,3) do (
		mkdir folder_%%I\folder_%%I-%%J
		echo # file in folder %%I-%%J>folder_%%I\folder_%%I-%%J\readme.md
		echo ## changes:>>folder_%%I\folder_%%I-%%J\readme.md
		echo we created the folder>>folder_%%I\folder_%%I-%%J\readme.md

		for /L %%K in (1,1,5) do (
			mkdir folder_%%I\folder_%%I-%%J\folder_%%I-%%J-%%K
			echo # file in folder %%I-%%J-%%K>folder_%%I\folder_%%I-%%J\folder_%%I-%%J-%%K\readme.md
			echo ## changes:>>folder_%%I\folder_%%I-%%J\folder_%%I-%%J-%%K\readme.md
			echo we created the folder>>folder_%%I\folder_%%I-%%J\folder_%%I-%%J-%%K\readme.md
		)
	)
)
@endlocal