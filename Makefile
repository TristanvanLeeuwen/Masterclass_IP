html: what_is
	cp lectures/what_is.slides.html html/what_is.html
	cp -r lectures/figures ./html

what_is: lectures/what_is.ipynb
	jupyter nbconvert --to slides lectures/what_is.ipynb --template=cwi

website: html
	ghp-import -n -p -f html
	open https://tristanvanleeuwen.github.io/Masterclass_IP/index.html
