let page =
  let open Dream_html in
  let open HTML in
  html [lang "en"] [
    head [] [
      title [] "Dream test!"];
    body [] [
      h1 [] [txt "Hello World!"];
      p [] [txt "if you're seeing this, that means Dream and Dream_html are working! yippee!"];
    ]
  ]

let () =
  Dream.run
    @@ Dream.logger
    @@ Dream.router [
      Dream.get "/"
        (fun _ -> page |> Dream_html.respond);
    ]
