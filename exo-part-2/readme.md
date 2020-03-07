
## PART 2 EXERCISES

  - 📝 =\> TODO

  - 🎉 =\> SUCCESS

> Notes: the project with the “answers” to this exercise will be
> released on the repo during the break

-----

📝 Add the following dependencies: `{dplyr}`, `{ggplot2}`

🎉 `desc::desc_get_deps()` should return:

``` 
       type   package version
1   Imports    config       *
2   Imports     golem       *
3   Imports     shiny       *
4   Imports  processx       *
5   Imports   attempt       *
6   Imports        DT       *
7   Imports      glue       *
8   Imports htmltools       *
9   Imports     dplyr       *
10  Imports   ggplot2       *
11 Suggests  testthat       *
```

🆘 If you don’t get that much dependencies, you might need to relaunch
`golem::use_recommended_deps()` in `01_start.R`

-----

📝 Initiate three modules: `data`, `summary`, and `about`. Add the UI
inside the corresponding `tabPanel` in `app_ui.R`, and the server part
inside `app_server`.

🎉 `fs::dir_tree("R")` returns a list of files. Three of them starts with
`mod_`

🎉 `app_ui` has three module UI calls, and `app_server` three
`callModule`

-----

📝 In the `data/` folder, you will find a `.csv`. Add it as an internal
dataset called `run`.

🎉 You now have a `data-raw` and `data` folder

-----

📝 Create a function called `head_run` that takes a number of rows and
returns `head(run, nrow)`.

> You’ll be using it later inside the `Data Overview` tabset.

🎉 `head_run(10)` returns something like this.

    # A tibble: 10 x 29
       `Activity Type` Date                Favorite Title
       <chr>           <dttm>              <lgl>    <chr>
     1 Running         2020-02-28 15:52:26 FALSE    Bruz…
     2 Running         2020-02-26 10:14:04 FALSE    Bruz…
     3 Running         2020-02-24 17:09:36 FALSE    Bruz…
     4 Running         2020-02-23 15:31:21 FALSE    Bruz…
     5 Running         2020-02-21 07:17:58 FALSE    Aube…
     6 Running         2020-02-19 15:23:30 FALSE    Bruz…
     7 Running         2020-02-17 15:50:49 FALSE    Bruz…
     8 Running         2020-02-16 14:56:48 FALSE    Bruz…
     9 Running         2020-02-14 14:57:11 FALSE    Bruz…
    10 Running         2020-02-13 15:02:28 FALSE    Bruz…

-----

📝 Create another function called `filter_run` that takes one of the
modalities of the `Title` column from `run` and filters the dataset on
that modality.

> You’ll be using it later inside the `Data Overview` tabset.

🎉 `filter_run("Bruz Running")` returns something like this.

    # A tibble: 47 x 29
       `Activity Type` Date                Favorite Title
       <chr>           <dttm>              <lgl>    <chr>
     1 Running         2020-02-28 15:52:26 FALSE    Bruz…
     2 Running         2020-02-26 10:14:04 FALSE    Bruz…
     3 Running         2020-02-24 17:09:36 FALSE    Bruz…
     4 Running         2020-02-23 15:31:21 FALSE    Bruz…
     5 Running         2020-02-19 15:23:30 FALSE    Bruz…
     6 Running         2020-02-17 15:50:49 FALSE    Bruz…
     7 Running         2020-02-16 14:56:48 FALSE    Bruz…
     8 Running         2020-02-14 14:57:11 FALSE    Bruz…
     9 Running         2020-02-13 15:02:28 FALSE    Bruz…
    10 Running         2020-02-09 11:23:35 FALSE    Bruz…

-----

📝 Go to your `data_overview` modules. Create a two columns layout.

🆘 you can find helpers for the two columns layout in `golem_utils_ui.R`

📝 The one one the left has a numeric input + the result of `head_run()`
and this input inside a `DT::dataTableOutput()`.

🆘 Add `options = list(scrollX = TRUE)` to make the dataTable fit the
column.

📝 The one one the right has a select input with as choices the
modalities of `run$title` + the result of `filter_run()` and this input
inside a `DT::dataTableOutput()`.

-----

📝 Create a function that takes a start and an end date, and filter the
`run` data set for these daterange, then draw a graph with date in `x`
and `Distance` in `y`.

📝 Add it to the `summary` module, with a `dateRangeInput` controlling
it.

🎉 When you launch the app, it should look like:

<http://connect.thinkr.fr/joburg2/>

-----
