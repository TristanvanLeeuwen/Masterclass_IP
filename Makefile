html: lectures/what_is.ipynb
	jupyter nbconvert --to slides lectures/what_is.ipynb --template=cwi
	jupyter nbconvert --to slides lectures/Bayesian_ip.ipynb --template=cwi
	jupyter nbconvert --to slides lectures/linear_IP.ipynb --template=cwi
	jupyter nbconvert --to slides lectures/matrix_free.ipynb --template=cwi

website: html
	ghp-import -n -p -f html
	open https://tristanvanleeuwen.github.io/Masterclass_IP/what_is.html
