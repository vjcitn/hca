test_that("'.default_columns()' works", {
    views <- c("projects", "files", "samples", "bundles")
    for (view in views) {
        elt <- .default_columns(view, "character")
        expect_true(is.character(elt))
        expect_true(length(elt) > 0L)
        expect_true(!is.null(names(elt)))
    }
})
