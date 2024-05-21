import chainlit as cl

from movie_recommender import MovieRecommender

recommender = MovieRecommender()

@cl.on_message
async def main(message: cl.Message):
    recommendation = recommender.recommend(message.content)
    await cl.Message(content=recommendation).send()