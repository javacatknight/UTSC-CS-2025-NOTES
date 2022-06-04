# UTSC-CS-2025-NOTES

B09 - Software Tools: Linux, C


Misc:
##LAB 4
#First, need to iterate through subdirectories.
##CODE SNIPPET ; DESCRIPTION: find list of subdirectories. iterate ovr, CD into each subdirectory and print files there. return to pa><<commentBlock
list=$(ls)
for i in $list; do if [ -d $i ] ; then cd $i ; echo $(ls) ; cd .. ; fi; done;

