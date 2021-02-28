

export PROJECT = git

all:
	xelatex $(PROJECT).tex
	xelatex $(PROJECT).tex
	evince $(PROJECT).pdf


clean:
	rm *.aux *.listing *.log *.out *.toc *.pdf font*

font:
	fc-list > font_list
	fc-list :lang=zh > font_ch_list
	fc-list -f "%{family}\n" > font_family_list
