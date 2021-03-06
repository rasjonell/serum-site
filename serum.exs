%{
  site_name: "Serum",
  site_description: "A simple static website generator",
  base_url: "/Serum/",
  author_email: "dalgona@hontou.moe",
  author: "Dalgona.",
  date_format: "{WDfull}, {D} {Mshort} {YYYY}",
  list_title_all: "Serum News",
  list_title_tag: "Serum News/~s",
  preview_length: {:paragraphs, 1},
  plugins: [
    SerumSite.ReadTime,
    Serum.Plugins.TableOfContents,
    {Serum.Plugins.LiveReloader, only: :dev}
  ],
  theme: Serum.Themes.Essence
}
