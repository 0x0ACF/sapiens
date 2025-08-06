(import sapiens)

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
)
