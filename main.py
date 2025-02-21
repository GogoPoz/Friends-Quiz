from defensive_mechanisms import *
from database_functions import *
from class_question import *
from difflib import SequenceMatcher

setup_database()
connection = open_connection()
questions = Questions_List(connection)
questions.load_questions()

print("Welcome to F.R.I.E.N.D.S. quiz!")
# Επιλογή γύρων από τον χρήστη
rounds = input("How many rounds would you like to play?(from 1 to 24): ")
rounds = check_integer(1, 24, rounds)
# Επιλογή τυχαίων ερωτήσεων από τη λίστα με τις συνολικές ερωτήσεις
selected_questions = questions.get_random_questions(rounds)

print("Lets begin!!")

cnt = 1
correct_answers = 0
for question in selected_questions:
    print(f"~Round {cnt}~")
    user_answer = input(f"{question.question} ")
    # Έλεγχος για ομοιότητα της απάντησης του χρήστη με την απάντηση της ερώτησης
    check_answer = SequenceMatcher(a=question.answer.lower(), b=user_answer.lower())
    # Περίπτωση σωστής απάντησης
    if check_answer.ratio() >= 0.7:
        print(f"You are correct! The answer is {question.answer}, from Season {question.season}, {question.episode}")
        correct_answers += 1
    # Περίπτωση σχεδόν σωστής απάντησης (εάν έχουν παραληφθεί πολλά κομμάτια απτήν αποθηκευμένη απάντηση)
    elif check_answer.ratio() >= 0.5:
        print(f"You are close! The answer is {question.answer}, from Season {question.season}, {question.episode}")
    # Περίπτωση λάθος απάντησης
    else:
        print(f"Your answer is incorrect :(. The correct one is {question.answer}, from Season {question.season}, "
              f"{question.episode}")
    cnt += 1

# Υπολογισμός ποσοστού επιτυχίας
success_rate = (correct_answers / rounds) * 100
# 90% - 100%
if success_rate >= 90:
    print(f"Correct answers: {correct_answers}/{rounds}")
    print("OH-MY-GOD! Your are the biggest fan of F.R.I.E.N.D.S. Could you BE any more of a F.R.I.E.N.D.S. expert?")
# 70% - 89%
elif success_rate >= 70:
    print(f"Correct answers: {correct_answers}/{rounds}")
    print("Congratulations ! You are a true F.R.I.E.N.D.S fan. Watch some more episodes to ace this quiz!")
# 40% - 69%
elif success_rate >= 40:
    print(f"Correct answers: {correct_answers}/{rounds}")
    print("You did well! But.. I recomment some binge-watching F.R.I.E.N.D.S. on the weekend!")
# 0% - 39%
else:
    print(f"Correct answers: {correct_answers}/{rounds}")
    print("Oh no! You didn't answer enough questions correctly. No worries though! We will arange a National "
          "F.R.I.E.N.D.S Conference in Barbados where Dr. Ross Geller will be the keynote speaker \nand you will learn "
          "all about F.R.I.E.N.D.S (just kidding go watch the tv show :D)")

close_connection(connection)

