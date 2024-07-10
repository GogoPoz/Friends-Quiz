def check_integer(start, finish, user_input):
    """ Η συνάρτηση παίρνει ένα ποσό από το input, ελέγχει αν αυτό το ποσό είναι int η float και αν είναι το επιστρέφει
    Το όρισμα message είναι None ώστε όταν καλείται η check_amount να παίρνει όρισμα το εκάστοτε μήνυμα που
    θέλουμε να εμφανίσουμε """
    while True:
        if user_input.isdigit():
            user_input = int(user_input)
            if user_input < start or user_input > finish:
                user_input = input(f"Please enter a number between {start} and {finish}!")
                continue
            return user_input
        else:
            user_input = input(f"Please enter a number between {start} and {finish}!")
            continue