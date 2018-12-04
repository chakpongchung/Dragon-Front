build: compile test clean yacc

compile:
	javac lexer/*.java
	javac symbols/*.java
	javac inter/*.java
	javac parser/*.java
	javac main/*.java

test:
	@for i in `(cd tests; ls *.t | sed -e 's/.t$$//')`;\
		do echo $$i.t;\
		java main.Main tests/$$i.t >tmp/$$i.i;\
		diff tests/$$i.i tmp/$$i.i;\
	done
		# you can use the default constructor of Lexer() to read from System.in
		# java main.Main <tests/$$i.t >tmp/$$i.i;\

clean:
	(cd lexer; rm *.class)
	(cd symbols; rm *.class)
	(cd inter; rm *.class)
	(cd parser; rm *.class)
	(cd main; rm *.class)

yacc:
	(cd ../doc;./yacc.sh)



