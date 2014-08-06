#' @export
#' @import htmltools
#' @import htmlwidgets
iquiz <- function(x, width = NULL, height = NULL){
  createWidget('iquiz', list(question = x))
}

#' @export
widget_html.iquiz <- function(x, id, class, style, ...){
  tags$div(class = 'quiz quiz-single well',
    HTML(renderMarkdown(text = x$x$question)),
    quiz_buttons()
  )
}

quiz_buttons <- function(){
  tagList(
    tags$button(class = "quiz-submit btn btn-primary", "Submit"),
    tags$button(class = "quiz-toggle-hint btn btn-info", "Show Hint"),
    tags$button(class = "quiz-show-answer btn btn-success", "Show Answer"),
    tags$button(class = "quiz-clear btn btn-danger", "Clear")
  )
}
