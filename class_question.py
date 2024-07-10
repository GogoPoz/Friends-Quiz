from database_functions import *
import random

class Question:

    def __init__(self, question, answer, season, episode):
        self.question = question
        self.answer = answer
        self.season = season
        self.episode = episode

class Questions_List:

    def __init__(self, connector):
        self.questions = []
        self.connector = connector

    def load_questions(self):
        results = query_fetch_all(self.connector, "SELECT * FROM questions_answers")

        if results:
            for result in results:
                question_data = Question(
                    question=result["question"],
                    answer=result["answer"],
                    season=result["season"],
                    episode=result["episode"]
                )
                self.questions.append(question_data)

    def get_random_questions(self, number_of_rounds):
        return random.sample(self.questions, number_of_rounds)
