#import "conf.typ": generateAll
#set page(numbering: "1")
#set heading(numbering: "1.1")
#generateAll()

#for questNumber in range(1, 45) {
	if (questNumber < 10) {
		include "questions/question0" + str(questNumber) + ".typ"
	}
	else {
		include "questions/question" + str(questNumber) + ".typ"
	}
	if (questNumber < 44) {
		pagebreak()
	}
}
