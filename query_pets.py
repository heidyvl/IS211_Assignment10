import sqlite3
import sys


while True:
    try:

        conn = sqlite3.connect("pets.db")
        c = conn.cursor()

        user_id = input("Enter your id: ")
        if user_id == -1:
            break
            
        c.execute("SELECT * FROM person WHERE id=:id", {"id": user_id})
        c.execute("SELECT * FROM person INNER JOIN pet ON person.id=pet.id WHERE pet.id=:id", {"id": user_id})

        conn.commit()
            
        row = c.fetchone()
        print  row[1], row[2], row[3], " years old"
        print row[1], row[2], " owned ",row[5], " a ", row[6], " that was ", row[7], " years old "
        
    except:
        print "Id Not In The System. Enter A Valid Id Number"
        pass

