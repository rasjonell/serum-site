%{
  site_name: "Serum",
  site_description: "A simple static website generator",
  base_url: "/Serum/",
  author_email: "dalgona@hontou.moe",
  author: "Dalgona.",
  date_format: "{WDfull}, {D} {Mshort} {YYYY}",
  list_title_tag: "Posts Tagged \"~s\"",
  plugins: [
    Serum.Plugins.TableOfContents,
    {Serum.Plugins.LiveReloader, only: :dev}
  ]
}
