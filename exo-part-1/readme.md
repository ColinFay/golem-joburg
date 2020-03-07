
## PART 1 EXERCISES

  - 📝 =\> TODO

  - 🎉 =\> SUCCESS

> Notes: the project with the “answers” to this exercise will be
> released on the repo during the break

-----

📝 Create a golem project & fill the `DESCRIPTION`

🎉 `desc::desc_get_authors()` returns your name

🎉 `desc::desc_get_version()` returns `‘0.0.0.9000’`

🎉 `pkgload::pkg_name()` returns the name of your package.

-----

📝 Add a readme, news file, and set the license to GPL3

🎉 `desc::desc_get("License")` returns

    License 
    "GPL-3" 

🎉 `fs::file_exists("README.Rmd")` and `fs::file_exists("NEWS.md")`
should both be `TRUE`

-----

📝 Add recommended tests and deps

📝 Change the default favicon (idea: one of <https://emojipedia.org/>)

🎉 If you run the `dev/run_dev.R` script, the favicon should be the one
you’ve downloaded.

-----

📝 Add the utils functions files

🎉 Your R folder should contain 6 files

-----

📝 Go to app ui, and create a `navbarPage` with 3 panels (`Data
overview`, `Summary`, and `About`)

🎉 When you launch the app, it should look like:

<http://connect.thinkr.fr/joburg1/>

-----
