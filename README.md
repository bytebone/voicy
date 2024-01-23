# Introduction

This is my personal attempt to make the now near-dead Voicy bot work on todays tech, fixing issues here and there and making everything work nicely on Docker. 

[![Voicybot](/img/logo.png?raw=true)](https://voicybot.com/)

# [@voicybot](https://t.me/voicybot) main repository

This repository contains the code for one of the most popular bots I've ever built for Telegram — [@voicybot](https://t.me/voicybot). It automatically converts all the audio messages to text when added to a group chat. Please, feel free to fork, add features and create pull requests so that everybody (over 12 000 000 people) can experience the features you've built.

You can also help by translating the bot to other languages or fixing some texts in existing languages by modifying the `locales` folder or at [localize.borodutch.com](https://localize.borodutch.com).

## List of repositories

- [voicy](https://github.com/backmeupplz/voicy) — the main [@voicybot](https://t.me/voicybot) code
- [voicy-payments](https://github.com/backmeupplz/voicy-payments) — payments service that used stripe to process payments for the Google Speech seconds of recognition; currently retired as the stats server for [voicybot.com](https://voicybot.com)
- [voicy-landing](https://github.com/backmeupplz/voicy-landing) — [borodutch.com](https://borodutch.com) landing page
- [voicy-recognition](https://github.com/backmeupplz/voicy-recognition/) — Recognition service for [voicybot.com](https://voicybot.com)

## Installation and Docker deployment

1. Clone this repo: `git clone https://github.com/bytebone/voicy`
2. Edit the `.env.sample` file with your wit.ai tokens, telegram token and salt, and save it as `.env`
3. Run `docker build --network=host -t bytebone:voicy`
4. Run `docker compose up`

## Environment variables in `.env` file

| Variable        | Description                                                     |
| --------------- | --------------------------------------------------------------- |
| `MONGO`         | URI for the mongo database used                                 |
| `TOKEN`         | Telegram bot token                                              |
| `SALT`          | Random salt to generate various encrypted stuff                 |
| `ADMIN_ID`      | Chat id of the person who shall receive valuable logs           |
| `WIT_LANGUAGES` | A map of language names to Wit.ai tokens                        |
| `ENVIRONMENT`   | App environment, can be `development`, defaults to `production` |

See examples in `.env.sample` file.

## License

MIT — use for any purpose. Would be great if you could leave a note about the original developers. Thanks!
