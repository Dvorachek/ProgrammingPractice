# https://www.hackerrank.com/challenges/ctci-contacts/problem

def partials(contact):
    return [contact[0:i] for i in xrange(1, len(contact) + 1)]
    
contacts = {}
def find(word):
    return contacts.get(word, 0)

def add(word):
    for token in partials(word):
        contacts[token] = contacts.get(token, 0) + 1
            

n = int(raw_input().strip())
t = {}
for a0 in xrange(n):
    op, contact = raw_input().strip().split(' ')
    
    if op == 'add':
        t = add(contact)
    if op == 'find':
        print find(contact)

