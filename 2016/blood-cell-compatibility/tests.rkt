(proc can-donate-to? 2)

(type (can-donate-to? "O-" "O-") "a boolean" boolean?)

(test (can-donate-to? "O-" "O-") #t)
(test (can-donate-to? "O-" "O+") #t)
(test (can-donate-to? "O-" "A-") #t)
(test (can-donate-to? "O-" "A+") #t)
(test (can-donate-to? "O-" "B-") #t)
(test (can-donate-to? "O-" "B+") #t)
(test (can-donate-to? "O-" "AB-") #t)
(test (can-donate-to? "O-" "AB+") #t)
(test (can-donate-to? "O+" "O-") #f)
(test (can-donate-to? "O+" "O+") #t)
(test (can-donate-to? "O+" "A-") #f)
(test (can-donate-to? "O+" "A+") #t)
(test (can-donate-to? "O+" "B-") #f)
(test (can-donate-to? "O+" "B+") #t)
(test (can-donate-to? "O+" "AB-") #f)
(test (can-donate-to? "O+" "AB+") #t)
(test (can-donate-to? "A-" "O-") #f)
(test (can-donate-to? "A-" "O+") #f)
(test (can-donate-to? "A-" "A-") #t)
(test (can-donate-to? "A-" "A+") #t)
(test (can-donate-to? "A-" "B-") #f)
(test (can-donate-to? "A-" "B+") #f)
(test (can-donate-to? "A-" "AB-") #t)
(test (can-donate-to? "A-" "AB+") #t)
(test (can-donate-to? "A+" "O-") #f)
(test (can-donate-to? "A+" "O+") #f)
(test (can-donate-to? "A+" "A-") #f)
(test (can-donate-to? "A+" "A+") #t)
(test (can-donate-to? "A+" "B-") #f)
(test (can-donate-to? "A+" "B+") #f)
(test (can-donate-to? "A+" "AB-") #f)
(test (can-donate-to? "A+" "AB+") #t)
(test (can-donate-to? "B-" "O-") #f)
(test (can-donate-to? "B-" "O+") #f)
(test (can-donate-to? "B-" "A-") #f)
(test (can-donate-to? "B-" "A+") #f)
(test (can-donate-to? "B-" "B-") #t)
(test (can-donate-to? "B-" "B+") #t)
(test (can-donate-to? "B-" "AB-") #t)
(test (can-donate-to? "B-" "AB+") #t)
(test (can-donate-to? "B+" "O-") #f)
(test (can-donate-to? "B+" "O+") #f)
(test (can-donate-to? "B+" "A-") #f)
(test (can-donate-to? "B+" "A+") #f)
(test (can-donate-to? "B+" "B-") #f)
(test (can-donate-to? "B+" "B+") #t)
(test (can-donate-to? "B+" "AB-") #f)
(test (can-donate-to? "B+" "AB+") #t)
(test (can-donate-to? "AB-" "O-") #f)
(test (can-donate-to? "AB-" "O+") #f)
(test (can-donate-to? "AB-" "A-") #f)
(test (can-donate-to? "AB-" "A+") #f)
(test (can-donate-to? "AB-" "B-") #f)
(test (can-donate-to? "AB-" "B+") #f)
(test (can-donate-to? "AB-" "AB-") #t)
(test (can-donate-to? "AB-" "AB+") #t)
(test (can-donate-to? "AB+" "O-") #f)
(test (can-donate-to? "AB+" "O+") #f)
(test (can-donate-to? "AB+" "A-") #f)
(test (can-donate-to? "AB+" "A+") #f)
(test (can-donate-to? "AB+" "B-") #f)
(test (can-donate-to? "AB+" "B+") #f)
(test (can-donate-to? "AB+" "AB-") #f)
(test (can-donate-to? "AB+" "AB+") #t)