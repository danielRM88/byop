# ByoP - Build your own Podigee

---

For your trial day we would like you to build your own mini version of Podigee, import an existing podcast into it and then either build out an interface for editing the data, your own feed builder, podcast website renderer or whatever else you can think of doing with podcast metadata.

You will have 2 hours of time for the task and we would ask you to present the final product to us. The presentation should consist of a short demo of what you build as well as a quick tour through the code.

If you have any questions during the two hours please don’t hesitate to ask in the Slack channel we prepared.

## Requirements

- Use Ruby on Rails 6.0.x
- Use Sqlite as the database
- Use https://feed-dive.podigee.io/feed/mp3 as the podcast feed to import
- Most relevant fields from the feed should be persisted to the app’s database
- The feed-import code should be able to handle any feed following the same format

## Optionals

We know the time is short, so we let you choose what to do with the persisted podcast data. here are some ideas

- Write your own feed builder
- Build an interface for editing the data
- Build an interface a potential listener can use to consume the podcast

## FYI

- You can use any gems you see fit
- You can use any JS framework you see fit
- You don’t need to store or deliver audio or image files, just use the CDN links from the feed
- For the demo the app can run on your local machine, no need for a public deployment
- If you decide to build a website with the data, a standard HTML audio element is fine for playing the episode audio
