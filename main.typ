#import "conf.typ": generateAll
#set page(numbering: "1")
#set heading(numbering: "1.1")
#generateAll()

#for questNumber in range(1, 44) {
	include "questions/question" + str(questNumber) + ".typ"
	pagebreak()
}
