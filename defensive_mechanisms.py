def check_integer(start, finish, user_input):
    """Η συνάρτηση ελέγχει εάν ο αριθμός που θα βάλει ο χρήστης είναι ακέραιος αριθμός, ο οποίος θα βρίσκεται μεταξύ
    του start και του finish που παίρνει σαν ορίσματα."""
    while True:
        if user_input.isdigit():
            user_input = int(user_input)
            # Περίπτωση που εισάγεται ακέραιος αριθμός αλλά είναι μικρότερος του start ή μεγαλύτερος του finish
            if user_input < start or user_input > finish:
                user_input = input(f"Please enter a number between {start} and {finish}!")
                continue
            return user_input
        else:
            # Περίπτωση που δεν εισαχθεί ακέραιος αριθμός
            user_input = input(f"Please enter a number between {start} and {finish}!")
            continue

