(import sapiens)

;; This would create an index.html file inside static/blog/
(dir "static"
  (dir "blog"
    (page "index.html"
      (html
        (head
          (title "This is the title of the webpage!")
        )
        (body
          (p
            (span `(
              ,(id "test")
              ,(class "bold")
              ,(attr "data-id" "custom attr")
            )
              "This is an example paragraph. Anything in the ")
            (strong "body")
            (span "tag will appear on the page, just like this")
            (strong "p")
            (span "tag and its contents.")
          )
        )
      )
    )
    (page "about.html"
      (html
        (head
          (title "About")
        )
        (body
          (p "About page")
        )
      )
    )
  )
)

;; This would return the dependencies require to render latex in a page
(define (latex-deps)
  `(
    ,(link `(
      ,(attr "rel" "stylesheet")
      ,(attr "href" "https://cdn.jsdelivr.net/npm/katex@0.16.22/dist/katex.min.css")
      ,(attr "integrity" "sha384-5TcZemv2l/9On385z///+d7MSYlvIEw9FuZTIdZ14vJLqWphw7e7ZPuOiCHJcFCP")
      ,(attr "crossorigin" "anonymous")
    ))
    ,(script `
     ,(attr "defer" "defer")
     ,(attr "src" "https://cdn.jsdelivr.net/npm/katex@0.16.22/dist/katex.min.js")
     ,(attr "integrity" "sha384-cMkvdD8LoxVzGF/RPUKAcvmm49FQ0oxwDF3BGKtDXcEc+T1b2N+teh/OJfpU0jr6")
     ,(attr "crossorigin" "anonymous")
    )
    ,(script `
     ,(attr "defer" "defer")
     ,(attr "src" "https://cdn.jsdelivr.net/npm/katex@0.16.22/dist/contrib/auto-render.min.js")
     ,(attr "integrity" "sha384-hCXGrW6PitJEwbkoStFjeJxv+fSOOQKOPbJxSfM6G5sWZjAyWhXiTIIAmQqnlLlh")
     ,(attr "crossorigin" "anonymous")
    )
  )
)
