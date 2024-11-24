#!/opt/homebrew/bin/python3
import requests
from bs4 import BeautifulSoup
from datetime import datetime, timedelta

# List of websites to scrape
websites = ['http://www.speedhunters.com', 'https://www.topgear.com', 'https://www.jalopnik.com']

# Get articles published in the past week
week_ago = datetime.now() - timedelta(days=7)

# Store article information in a list of dictionaries
articles = []

# Loop through each website and scrape articles
for website in websites:
    response = requests.get(website)
    soup = BeautifulSoup(response.content, 'html.parser')
    for article in soup.find_all('article'):
        title = article.find('h2').text.strip()
        url = article.find('a')['href']
        date = article.find('time')['datetime']
        date = datetime.fromisoformat(date)
        # Only add article if it was published in the past week
        if date >= week_ago:
            articles.append({'title': title, 'url': url, 'date': date})

# Sort articles by date
articles = sorted(articles, key=lambda k: k['date'])

# Print articles chronologically
for article in articles:
    print(article['date'].strftime('%Y-%m-%d'), article['title'], article['url'])

