.PHONY: all clean validate status push log run

COBC := cobc #Variable de test cobc pour compiler

# CMD GIT :
status:
	git status
	git branch
	git log --oneline
	@echo "GIT STATUS CHECKED"
push:
	git add .
	git commit -m "update"
	git push origin main
	@echo "Push to GIT DONE"

validate:
	@echo "Validating code..."
	cobc -fsyntax Move_to.cbl
	cobc -fsyntax perform.cbl
	cobc -fsyntax testIF.cbl
	cobc -fsyntax Hello_world.cbl
	@echo "CODE VALIDATED"

all:
#	cobc -x -o .\Exe\Hell_world.exe .\src\Hello_world.cbl
	$(COBC) -x -o .\Exe\modulo.cbl      src/modulo.cbl
	$(COBC) -x -o .\Exe\Move_to.exe     src/Move_to.cbl
	$(COBC) -x -o .\Exe\perform.exe     src/perform.cbl
	$(COBC) -x -o .\Exe\TestIf.exe      src/testIF.cbl
	$(COBC) -x -o .\Exe\Hello_world.exe src/Hello_world.cbl
	$(COBC) -x -o .\Exe\CBL1.exe        src/CBL1.cbl
	$(COBC) -x -o .\Exe\BoucleFor.exe   src/BoucleFor.cbl
	$(COBC) -x -o .\Exe\occurs.exe	    src/occurs.cbl
	@echo "ALL FILES COMPILED"

clean:
	del .\Move_to.exe
	del .\perform.exe
	del .\testIF.exe
	del .\Hello_world.exe	
	@echo "ALL EXE FILES DELETED"
log:
	git log -p src/Move_to.cbl
	git log -p src/perform.cbl
	git log -p src/testIF.cbl
	git log -p src/Hello_world.cbl
	@echo "LOG DISPLAYED"
run:
	.\exe\Move_to.exe
	@echo "ok1"	
	.\exe\perform.exe
	@echo "ok2"
	.\exe\testIF.exe
	@echo "ok3"	
	.\exe\Hello_world.exe
	@echo "ok4"
	.\exe\modulo.exe	
	@echo "ok5"	
	@echo "ALL PROGRAMS RAN"