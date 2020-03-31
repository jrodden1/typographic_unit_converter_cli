#!/usr/bin/env ruby
# Quick helper program to convert PX to PTs to IN 
# Created on March 31, 2020 while working on PDF creation with pdfmake js package
quit = false

def press_any_key
   system "read -n 1 -s -r -p \"Press any key to continue\""
   system "clear"
end

def handlePX
   puts "\nPlease enter the PX value (numbers only plz):"
   num = gets.chomp
   system "clear"
   # to make a little more stupid proof should only allow numbers
   fl_num = num.to_f

   #Spacing on this is irregular so that it shows nicely in the terminal
   puts <<-PXANS
#{fl_num} PX is equal to:
#{(fl_num * 0.75).round(0)} PTs
#{(fl_num * 0.010416).round(2)} IN\n
   PXANS
   press_any_key
end

def handlePT
   puts "\nPlease enter the PT value (numbers only plz):"
   num = gets.chomp
   system "clear"
   # to make a little more stupid proof should only allow numbers
   fl_num = num.to_f

   #Spacing on this is irregular so that it shows nicely in the terminal
   puts <<-ANS
#{fl_num} PT is equal to:
#{(fl_num * 1.3333).round(0)} PXs
#{(fl_num * 0.013888).round(2)} IN\n
   ANS
   press_any_key
end

def handleIN
   puts "\nPlease enter the IN value (numbers only plz):"
   num = gets.chomp
   system "clear"
   # to make a little more stupid proof should only allow numbers
   fl_num = num.to_f
   
   #Spacing on this is irregular so that it shows nicely in the terminal
   puts <<-INANS
#{fl_num} IN is equal to:
#{(fl_num / 0.013888).round(0)} PTs
and #{(fl_num / 0.010416).round(0)} PX\n
   INANS
   press_any_key
end

system "clear"
while quit == false 
   #Spacing on this is irregular so that it shows nicely in the terminal
   puts <<-MENU
Select one of the following input value options:

1. PX
2. PT
3. IN

q to quit

Please type your selection:
   MENU
   input = gets.chomp
   system "clear"

   case input
   when "1"
      system "clear"
      handlePX
   when "2"
      system "clear"
      handlePT
   when "3"
      system "clear"
      handleIN
   when "q" || "Q"
      quit = true
   else
      puts "Incorrect Selection, please try again:\n\n"
   end
end